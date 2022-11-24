"""
TODO
    - need to heck the `past_values` key to makes ure that the data we are getting for those things is up to date with the infomration we want
    - need to substitue `effect_chance` info `effect_entries`
"""

# Libraries
import pandas as pd
import numpy as np
from cleaning_helpers import query_api_general
from cleaning_helpers import query_api_specific
from cleaning_helpers import get_generations
from cleaning_helpers import get_gen_number

def get_effect_text(data, effect_chance):
    for text in data:
        if text["langauge"]["name"] == "en":
            desc = text["short_effect"]
            desc = desc.replace("$effect_chance", effect_chance)

            desc2 = text["effect"].replace("$effect_chance", effect_chance)
            return (desc, desc2)
    return np.nan

def get_move_data():
    # pull the data from the api
    link = 'https://pokeapi.co/api/v2/move?limit=1000&offset=0'
    move_data = query_api_general(link)

    # make the dataframe that stores all the move data
    frame_columns = ["name", "accuracy", "class", "game_desc", 
                    "effect_chance", "generation", "machines",
                    "crit_rate", "type", "power", "pp", "priority"]

    moves_df = pd.DataFrame(columns=frame_columns)

    for move in move_data:
        move_query = query_api_specific(move["url"])

        if move_query["generation"]["name"] in get_generations():
            temp = [""] * len(frame_columns)

            temp[0] = move_query["name"]
            temp[1] = move_query["accuracy"]
            temp[2] = move_query["damage_class"]

            effect_text = move_query["effect_entries"]
            effect_chance_str = str(move_query["effect_chance"]) 
            temp[3], temp[4] = get_effect_text(effect_text, effect_chance_str)

            temp[5] = get_gen_number(move_query["generation"]["name"])

            # TODO: get if the move is learned by a machine

            # TODO: get the crit rate of the move

            # TODO: get the type of the move

            # TODO: get the power of the mvoe

            # TODO: get the PP of the move

            # TODO: get the priority of the move

            moves_df.loc[len(moves_df.index)] = temp