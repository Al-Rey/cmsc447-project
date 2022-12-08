"""
TODO
    - need to heck the `past_values` key to makes ure that the data we are getting for those things is up to date with the infomration we want
    - need to substitue `effect_chance` info `effect_entries`
"""

# Libraries
import pandas as pd
import numpy as np
from pathlib import Path
from sys import argv
from cleaning_helpers import get_gen_number
from cleaning_helpers import get_index
from cleaning_helpers import query_api
from cleaning_helpers import get_games_gen_num
from cleaning_helpers import export_csv
from cleaning_helpers import HIGHEST_GEN_NUM
from cleaning_helpers import DATA_UNAVAILABLE

def get_effect_text(data, effect_chance):
    for text in data:
        if text["language"]["name"] == "en":
            desc = text["short_effect"]
            desc = desc.replace("$effect_chance", effect_chance)

            desc2 = text["effect"].replace("$effect_chance", effect_chance)
            # return (desc, desc2)

            # for now just returning the short effect entry
            return desc2
    
    return np.nan

def get_flavor_text(flavor_list):
    lang = "en"

    # loop through the list of flavor text entires and get
    # only the flavor values relavant to the scope
    num_entries = len(flavor_list)

    # if num_entries == 0:
    #     print("There is 0 here")

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


def get_move_data(export_data = False):
    # pull the data from the api
    link = 'https://pokeapi.co/api/v2/move?limit=1000&offset=0'
    move_data = query_api(link, "results")

    # make the dataframe that stores all the move data
    frame_columns = ["name", "accuracy", "class", "game_desc", 
                    "effect_chance", "generation", "machines",
                    "crit_rate", "type", "power", "pp", "priority"]

    moves_df = pd.DataFrame(columns=frame_columns)

    for move in move_data:
        move_query = query_api(move["url"])

        # only get the moves that want in the generations we want
        gen = get_gen_number(move_query["generation"]["name"])
        
        # if the generation is out of range, then ignore it
        if gen > HIGHEST_GEN_NUM:
            continue

        temp = [0] * len(frame_columns)

        # get the move's name
        index = get_index("name", frame_columns)
        name = move_query["name"]
        temp[index] = name

        
        # get the move's accuracy
        index = get_index("accuracy", frame_columns)
        temp[index] = move_query["accuracy"]
        if temp[index] == None:
            # print(name, "has NaN accuracy")
            temp[index] = DATA_UNAVAILABLE

        # get the move's damage class (physical, special, etc.)
        index = get_index("class", frame_columns)
        temp[index] = move_query["damage_class"]["name"]

        # Get the effect entries
        effect_text = move_query["effect_entries"]
        effect_chance_str = str(move_query["effect_chance"]) 
        index = get_index("effect_chance", frame_columns)
        temp[index] = get_effect_text(effect_text, effect_chance_str)

        # get the flavor text
        index = get_index("game_desc", frame_columns)
        temp[index] = get_flavor_text(move_query["flavor_text_entries"])
        if temp[index] == np.NaN:
            print(name, "has NaN flavor text")
            # temp[index] = "NA"
        
        # get the generation number
        index = get_index("generation", frame_columns)
        temp[index] = gen

        # Get if the move is learned by a machine
        machine_data_list = move_query["machines"]
        num_entries = len(machine_data_list)
        index = get_index("machines", frame_columns)
        
        # if there are entires for machine information, then get that data
        if num_entries != 0:
            # loop backwards in the list of machine data until you get the latest game that is still
            # in our scope
            machine_name = None
            for item in range(num_entries):

                # get the generation for the current machine entry
                mach_gen = machine_data_list[item]["version_group"]["name"]
                mach_gen = get_games_gen_num(mach_gen)

                # check if the generation is within the range we are looking at
                if mach_gen <= 5 and mach_gen >= 1:
                    machine = query_api(machine_data_list[item]["machine"]["url"], "item")
                    machine_name = machine["name"]
                    temp[index] = machine_name
                    break

            if machine_name == None:
                temp[index] = DATA_UNAVAILABLE
        else: # if the move cannot be learned with a machine, then make that Unavailable
            temp[index] = DATA_UNAVAILABLE

        # get the crit rate of the move
        if move_query["meta"] == None:
            # print(name, "has a meta section of None")
            continue

        index = get_index("crit_rate", frame_columns)
        temp[index] = move_query["meta"]["crit_rate"]

        # get the type of the move
        index = get_index("type", frame_columns)
        temp[index] = move_query["type"]["name"]

        # get the power of the move
        index = get_index("power", frame_columns)
        temp[index] = move_query["power"]
        if temp[index] == None:
            # print(name, "has NaN power")
            temp[index] = DATA_UNAVAILABLE

        # get the PP of the move
        index = get_index("pp", frame_columns)
        temp[index] = move_query["pp"]

        # get the priority of the move
        index = get_index("priority", frame_columns)
        temp[index] = move_query["priority"]


        moves_df.loc[len(moves_df.index)] = temp
    
    config_path = Path(argv[0]).resolve().parent
    if export_data:
        export_csv(moves_df, config_path / "move_data.csv")

    export_csv(moves_df[["name"]], config_path / "move_names.csv")
    return moves_df

if __name__ == '__main__':
    test_df = get_move_data(True)
    print(test_df.head(10))