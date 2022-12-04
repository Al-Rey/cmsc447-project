# Libraries
import pandas as pd
import pandas as np

from pathlib import Path
from sys import argv
from cleaning_helpers import query_api_general
from cleaning_helpers import query_api_specific
from cleaning_helpers import get_generations
from cleaning_helpers import get_gen_number
from cleaning_helpers import export_csv

# def get_gen_number(gen):
#     """
#     name: get_gen_number
#     Params:
#         - gen(string) - a string that represents a generation
#     Return Type: int
#     Desc: This function takes the string that represents a generation and
#     returns a number corresponding to that generation
#     """

#     if "iv" in gen:
#         return 4
#     elif "v" in gen:
#         return 5
#     elif "iii" in gen:
#         return 3
#     elif "ii" in gen:
#         return 2
#     elif "i" in gen:
#         return  1

#     # raise an error if we get a value that is not one of these generations
#     else:
#         print(gen)
#         raise ValueError("We got an invalid generation!")

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


def get_ability_data():
    # pull the data from the API
    link = 'https://pokeapi.co/api/v2/ability?limit=100000&offset=0'
    ability_data = query_api_general(link)

    # make the dataframe that stores all the ability data
    frame_columns = ["name", "generation", "effects", "description"]
    abilities_df = pd.DataFrame(columns=frame_columns)

    # loop through and create the abilities
    for ability in ability_data:
        # pull the page data that we need
        ability_query = query_api_specific(ability["url"])
    
        # only get the abilities from the main series games
        if ability_query["is_main_series"]: 
            
            # get the abilities present in the generations we are looking at
            if ability_query["generation"]["name"] in get_generations(): 
                temp = ["", "", "", ""]
                
                temp[0] = ability_query["name"] # get the ability's name
                
                # get the generation that the ability is from
                gen = ability_query["generation"]["name"]
                temp[1] = get_gen_number(gen)
                
                # get the effect description
                effect_data = ability_query["effect_entries"] 
                for entry in range(len(effect_data)):
                    if effect_data[entry]["language"]["name"] == "en":
                        eng_data = effect_data[entry] 
                temp[2] = get_text(eng_data, "effect")
                            
                # # get the flavor text data
                # flavor_data = ability_query["flavor_text_entries"]
                # temp[3] = get_text(flavor_data, "flavor")
                            
                # add the entires to the end of the dataframe
                abilities_df.loc[len(abilities_df.index)] = temp    
    
    config_path = Path(argv[0]).resolve().parent
    export_csv(abilities_df[["name"]], config_path / "ability_names.csv")

    return abilities_df

if __name__ == '__main__':
    test_df = get_ability_data()
    print(test_df.head(10))