# Libraries
import pandas as pd
import pandas as np

from pathlib import Path
from sys import argv
from cleaning_helpers import get_generations
from cleaning_helpers import get_gen_number
from cleaning_helpers import export_csv
from cleaning_helpers import query_api
from cleaning_helpers import get_index


def get_text(data, text_type):
    """
    Name: get_text
    Params:
        - data(dict): the dictionary with the text that you want
        - text_type(str): The string indicating what kind of text is being 
            extracted
    Return: str
    Desc: The function extracts the text specificed by the text_type parameter from
    the dictionary passed in
    """
    print(data)
    want_flavor = False
    if text_type == "effect":
        text_data = data["effect"] # get the effect description
    elif text_type == "flavor":
        text_data = data["flavor_text_entries"]
        want_flavor = True
    else:
        raise ValueError("invalid 'text_type' parameter!")
    
    for text in text_data:
        # if text["language"]["name"] == "en": # get the english descriptions
        # if want_flavor:
        #     return text["flavor_text"]
        # else:
        #     return text["effect"]
        return text_data

    return np.NaN


def get_ability_data(export_data=False):
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
            
            # get the abilities present in the generations we are looking at
            if ability_query["generation"]["name"] in get_generations(): 
                temp = [0] * len(frame_columns)
                
                # get the ability's name
                index = get_index("name", frame_columns)
                temp[index] = ability_query["name"] 
                
                # get the generation that the ability is from
                gen = ability_query["generation"]["name"]
                index = get_index("generation", frame_columns)
                temp[index] = get_gen_number(gen)
                
                # get the effect description
                effect_data = ability_query["effect_entries"] 
                for entry in range(len(effect_data)):
                    if effect_data[entry]["language"]["name"] == "en":
                        eng_data = effect_data[entry] 

                index = get_index("effect", frame_columns)
                temp[index] = get_text(eng_data, "effect")
                            
                # # get the flavor text data
                # flavor_data = ability_query["flavor_text_entries"]
                # temp[3] = get_text(flavor_data, "flavor")
                            
                # add the entires to the end of the dataframe
                abilities_df.loc[len(abilities_df.index)] = temp    
    
    # export the data if given the option
    if export_data:
        config_path = Path(argv[0]).resolve().parent
        export_csv(abilities_df[["name"]], config_path / "ability_names.csv")

    return abilities_df

if __name__ == '__main__':
    test_df = get_ability_data()
    print(test_df.head(10))