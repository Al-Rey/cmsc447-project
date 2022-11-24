# Libraries
import requests
import json
# import pandas as pd
# import numpy as np

GEN_DICT = {'generation-i':1, 'generation-ii':2, 'generation-iii':3, 'generation-iv':4, 'generation-v':5}

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