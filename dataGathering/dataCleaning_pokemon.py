# Libraries
import pandas as pd
import numpy as np
import requests
from cleaning_helpers import query_api_general
from cleaning_helpers import query_api_specific
from cleaning_helpers import get_generations
from cleaning_helpers import get_gen_number
from cleaning_helpers import get_games_gen_num
from cleaning_helpers import get_games
from dataCleaning_abilities import HIGHEST_GEN_NUM

SPECIES_URL_BASE = "https://pokeapi.co/api/v2/pokemon-species/"
POKEMON_LIST_URL = 'https://pokeapi.co/api/v2/pokemon?limit=1000&offset=0'


def get_index(index_name, columns):
        try:
            ind = columns.index(index_name)
            return ind
        except ValueError:
            print(index_name, "index not found")
            return None
        except Exception as inst:
            print("error getting", index_name, "list data")
            print(inst)
            return None

def get_item_list(item_data, item_name, valid_items):
    item_list = []
    # all_items = item_data[item_name]
    info = 0

    for item in item_data:
        name = item[item_name]["name"]
        if name not in valid_items:
            continue

        if item_name == "move":
            # info = (name, -1)
            info = get_move_tuple(item)
        elif item_name == "ability":
            info = (name, item["is_hidden"])
        else:
            print("item name is not ability or move")
            return np.nan
            
        item_list.append(info)
    
    return item_list

def get_move_tuple(move_data):
    name = move_data["move"]["name"]
    learn = -1
    learn_list = move_data["version_group_details"]

    for index in range(len(learn_list)-1, -1, -1):
        if learn_list[index]["version_group"]["name"] in get_games():
            learn = learn_list[index]["level_learned_at"]
            if learn == 0:
                learn = learn_list[index]["move_learn_method"]["name"]
                break

    return (name, learn)


def get_pokmeon_data():
    link = 'https://pokeapi.co/api/v2/pokemon?limit=1000&offset=0'
    pokemon_data = query_api_general(link)

    move_names = (pd.read_csv("dataGathering\\move_names.csv"))["name"].tolist()
    ability_names = (pd.read_csv("dataGathering\\ability_data.csv"))["name"].tolist()

    game_gen = {"red" : 1,
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
                "white-2": 5
                }


    frame_columns = ["name","pokedex_id","attack", "special-attack", "defense",
                     "special-defense", "speed", "hp", "type1", "type2", 
                     "list_of_moves", "ability_name", "height", "weight", 
                     "generation"
                     ]
    
    pokemon_df = pd.DataFrame(columns=frame_columns)

    for pokemon in pokemon_data:
        hold = [0] * len(frame_columns)

        # get the name of the pokemon
        name = pokemon["name"]

        # get species data
        species_data = requests.get(SPECIES_URL_BASE + name)
        gen = species_data["generation"]
        gen = get_gen_number(gen)

        # fi the pokemon is not in the generations we are looking at, ignore it
        if gen > HIGHEST_GEN_NUM:
            break
        

    return pokemon_df
        
if __name__ == "__main__":
    test_df = get_pokmeon_data()
    print(test_df[["list_of_moves"]].head(10))
        

        