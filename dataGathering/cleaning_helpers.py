# Libraries
import requests
import json
# import pandas as pd
# import numpy as np

GEN_DICT = {'generation-i':1, 'generation-ii':2, 'generation-iii':3, 'generation-iv':4, 'generation-v':5}
HIGHEST_GEN_NUM = 5
GAME_GENS_SINGLE = { "red" : 1,
                "blue" : 1,
                "yellow" : 1,
                "gold" : 2,
                "silver" : 2,
                "crystal" : 2,
                "ruby": 3,
                "sapphire": 3,
                "firered": 2,
                "leafgreen": 2,
                "emerald": 3,
                "diamond": 4,
                "pearl": 4,
                "heartgold": 2,
                "soulsilver": 2,
                "platinum": 4,
                "black": 5,
                "white": 5,
                "black-2": 5,
                "white-2": 5,
                "x": 6,
                "y": 6,
                "sun": 7,
                "moon": 7,
                "sword": 8,
                "shield": 8
                }

GAME_GENS_CONBO = { "red-blue" : 1,
                "yellow" : 1,
                "gold-silver" : 2,
                "crystal" : 2,
                "ruby-sapphire": 3,
                "firered-leafgreen": 2,
                "emerald": 3,
                "diamond-pearl": 4,
                "heartgold-soulsilver": 2,
                "platinum": 4,
                "black-white": 5,
                "black-2-white-2": 5,
                "x-y": 6,
                "omega-ruby-alpha-sapphire": 3,
                "sun-moon": 7,
                "ultra-sun-ultra-moon": 7,
                "sword-shield": 8
                }

def query_api_general(link):
    query = requests.get(link)
    query_data = json.loads(query.text)
    return query_data["results"]

def query_api_specific(link):
    query = requests.get(link)
    return json.loads(query.text)

def get_generations():
    # important variables we need
    gens = list(GEN_DICT.keys())
    return gens

def get_gen_dict():
    return GEN_DICT

def get_gen_number(gen_str):
    if "generation" in gen_str:
        return GEN_DICT[gen_str]
    else:
        if "iv" in gen_str:
            return 4
        elif "v" in gen_str:
            return 5
        elif "iii" in gen_str:
            return 3
        elif "ii" in gen_str:
            return 2
        elif "i" in gen_str:
            return  1

        # raise an error if we get a value that is not one of these generations
        else:
            print(gen_str)
            raise ValueError("We got an invalid generation!")

def get_latest_game():
    return "black-2-white-2"

def get_second_latest_game():
    return "black-white"

def get_csv(dataframe, file_name):
    dataframe.to_csv(file_name)
    return None

def get_games_gen_num(game_name):
    return GAME_GENS_CONBO[game_name]

def get_games():
    return list(GAME_GENS_CONBO.keys())

def get_games_single():
    return list(GAME_GENS_SINGLE.keys())
