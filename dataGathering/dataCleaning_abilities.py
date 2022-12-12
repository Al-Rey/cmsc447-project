# Libraries
import pandas as pd
import numpy as np

from pathlib import Path
from sys import argv
from cleaning_helpers import get_gen_number
from cleaning_helpers import export_csv
from cleaning_helpers import query_api
from cleaning_helpers import get_index
from cleaning_helpers import get_games_gen_num
from cleaning_helpers import HIGHEST_GEN_NUM



def get_effect_text(data):
    """
    Name: get_effect_text
    Params:
        - data(dict): the dictionary with the text that you want
        - text_type(str): The string indicating what kind of text is being 
            extracted
    Return: str
    Desc: The function extracts the text specificed by the text_type parameter from
    the dictionary passed in
    """

    text_data = data["effect"] # get the effect description
    return text_data

def get_flavor_text(flavor_list):
    """
    This function gets the flavor text of the ability and returns it. If the
    ability has no flavor text, then it returns NaN as it may be an error that the
    ability got to this point.
    Params:
        - flavor_list: The list of flavor text entries
    Return: NaN or a string containing the the latest english flavor text (in terms
        of our scope)
    """
    
    lang = "en"

    # loop through the list of flavor text entires and get
    # only the flavor values relavant to the scope
    num_entries = len(flavor_list)

    # checking
    if num_entries == 0:
        print("There is 0 here")

    for ind in range(num_entries-1, -1,-1):
        text = flavor_list[ind]
        
        # only get the english text
        if text["language"]["name"] != lang:
            continue

        # check to make sure that the the game is in the scope of generations
        # we are looking at
        num = get_games_gen_num(text["version_group"]["name"])
        if num > HIGHEST_GEN_NUM or num <= 0:
            continue
        
        return text["flavor_text"]

    return np.NaN

def get_ability_data(export_data=False):
    """
    Query the API for all the data it has on pokemon abilities. Then take this
    data and only save what we need in the dataframes. Then, if told, will export
    the entire dataframe along with just the name for the abilities, to csv files.
    Param:
        - export_data: A boolean. If True, the dataframe will be exported along with
            the ability names. If False, only the names will be exported. The default
            is False
    Return: The dataframe created with all the ability infomration    
    """

    # pull the data from the API
    link = 'https://pokeapi.co/api/v2/ability?limit=100000&offset=0'
    ability_data = query_api(link, "results")

    # make the dataframe that stores all the ability data
    frame_columns = ["name", "generation", "effects", "description"]
    abilities_df = pd.DataFrame(columns=frame_columns)

    # loop through and create the abilities
    for ability in ability_data:
        # pull the page data that we need
        ability_query = query_api(ability["url"])
    
        # only get the abilities from the main series games
        if ability_query["is_main_series"]: 
            temp = [0] * len(frame_columns)
            
            # get the generation that the ability is from
            gen = ability_query["generation"]["name"]
            gen = get_gen_number(gen)
            index = get_index("generation", frame_columns)

            # ignore the generations that are not in the scope we are considering
            if gen > HIGHEST_GEN_NUM or gen <= 0:
                continue
            
            # get the generation the ability appeared
            temp[index] = gen
            
            # get the ability's name
            index = get_index("name", frame_columns)
            name = ability_query["name"] 
            temp[index] = name            
            
            # get the effect description
            effect_data = ability_query["effect_entries"] 
            for entry in range(len(effect_data)):
                if effect_data[entry]["language"]["name"] == "en":
                    eng_data = effect_data[entry] 

            index = get_index("effects", frame_columns)
            temp[index] = get_effect_text(eng_data)
                        
            # get the flavor text data
            flavor_data = ability_query["flavor_text_entries"]
            index = get_index("description", frame_columns)
            temp[index] = get_flavor_text(flavor_data)
                        
            # add the entires to the end of the dataframe
            abilities_df.loc[len(abilities_df.index)] = temp    
    

    # export the names of all the abilities
    config_path = Path(argv[0]).resolve().parent
    export_csv(abilities_df[["name"]], config_path / "ability_names.csv")

    # export the data if given the option
    if export_data:
        config_path = Path(argv[0]).resolve().parent
        export_csv(abilities_df, config_path / "ability_data.csv")

    
    return abilities_df

if __name__ == '__main__':
    test_df = get_ability_data(True)
    print(test_df.head(10))