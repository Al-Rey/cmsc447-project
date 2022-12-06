# Libraries
import pandas as pd
import numpy as np
import requests
import json
from sys import argv
from cleaning_helpers import get_gen_number
from cleaning_helpers import get_games
from cleaning_helpers import query_api
from cleaning_helpers import HIGHEST_GEN_NUM
from cleaning_helpers import export_csv
from cleaning_helpers import get_index
from pathlib import Path


SPECIES_URL_BASE = "https://pokeapi.co/api/v2/pokemon-species/"
POKEMON_LIST_URL = 'https://pokeapi.co/api/v2/pokemon?limit=1000&offset=0'

def get_item_list(item_data, item_name, valid_items):
    item_list = []
    info = 0

    for item in item_data:
        name = item[item_name]["name"]
        if name not in valid_items:
            continue

        if item_name == "move":
            info = get_move_tuple(item)
            if info[1] != None:
                continue
        elif item_name == "ability":
            info = (name, item["is_hidden"])
        else:
            print("item name is not ability or move")
            return np.nan
            
        item_list.append(info)
    
    return item_list

def get_move_tuple(move_data):
    name = move_data["move"]["name"]
    learn = None
    learn_list = move_data["version_group_details"]

    for index in range(len(learn_list)-1, -1, -1):
        if learn_list[index]["version_group"]["name"] in get_games():
            learn = learn_list[index]["level_learned_at"]
            if learn == 0:
                learn = learn_list[index]["move_learn_method"]["name"]
                break

    return (name, learn)

def get_evolution_data(chain_link):
    chain_data = query_api(chain_link, "chain")

    return get_evo_tuple(chain_data, 0)

def get_evo_tuple(data, stage):
    cur_name = data["species"]["name"] # get the pokemon's name
    chain_list = []

    if stage == 0:
        trigger = ""
    else:
        # get evolution trigger
        details_len = len(data["evolution_details"])
        if details_len >=1:
            if details_len != 1:
                print(cur_name, "has more than one item in evolution details")
            
            trigger = []
            
            for detail in data["evolution_details"]:
                # print(detail)
                temp = ""
                lvl = ""
                con = ""
                if detail["min_level"] != None:
                    lvl = str(detail["min_level"])
                
                conditions = list(detail.keys())
                conditions.remove("trigger")
                conditions.remove("min_level")

                not_app = [None, "", False]

                for condition in conditions:
                    if detail[condition] not in not_app:
                        con = "condition"
                        break
                
                temp = detail["trigger"]["name"]
                
                if lvl == "" and con == "":
                    trigger.append(temp)
                elif lvl == "":
                    entry = temp + "/" + con
                    trigger.append(entry)
                elif con == "":
                    entry = temp + "(" + lvl + ")"
                    trigger.append(entry)
                else:
                    entry = temp + "(" + lvl + ")" + "/" + con
                    trigger.append(entry)
                # count += 1

            trigger = ",".join(trigger)
            trigger = trigger.strip()

        else:
            trigger = ""

    # make the tuple
    info = (cur_name, trigger, stage)

    chain_list.append(info)
    
    rest_of_chain = data["evolves_to"]
    if len(rest_of_chain) != 0:
        for poke in rest_of_chain:
            chain_list.extend(get_evo_tuple(poke, stage+1))

    return chain_list

    
def get_pokmeon_data(export_data = False):
    link = 'https://pokeapi.co/api/v2/pokemon?limit=1000&offset=0'
    pokemon_data = query_api(link, "results")

    # load the names of the abilities and moves we will be looking at
    config_path = Path(argv[0]).resolve().parent # ensure that we don't have to worry about file paths for the files
    move_names = (pd.read_csv(config_path / "move_names.csv"))["name"].tolist()
    
    # TODO fix this to get ability name data instead of move data
    ability_names = (pd.read_csv(config_path / "ability_names.csv"))["name"].tolist()

    # Names of the columns in tha dataframe
    frame_columns = ["name","pokedex_id","attack", "special-attack", "defense",
                     "special-defense", "speed", "hp", "type1", "type2", 
                     "list_of_moves", "ability_name", "height", "weight", 
                     "generation", "evolutions"
                     ]
    
    pokemon_df = pd.DataFrame(columns=frame_columns)

    # loop through all the pokemon gotten from the query
    for pokemon in pokemon_data:
        hold = [0] * len(frame_columns)

        # get the name of the pokemon
        name = pokemon["name"]

        # get species data
        species_query = requests.get(SPECIES_URL_BASE + name)
        if species_query.status_code == 404:
            print(name, "does not have a species page")
            continue
        species_data = json.loads(species_query.text)
        gen = species_data["generation"]["name"]
        gen = get_gen_number(gen)

        # if the pokemon is not in the generations we are looking at, ignore it
        if gen > HIGHEST_GEN_NUM:
            break

        # put the name and generation in the dataframe
        index = get_index("name", frame_columns)
        hold[index] = name

        index = get_index("generation", frame_columns)
        hold[index] = gen

        # get pokedex number, this is in a try-except statement for testing purposes
        try:
            dex_num = species_data["pokedex_numbers"][0]["entry_number"]
            index = get_index("pokedex_id", frame_columns)
            hold[index] = dex_num
        except Exception as inst:
            print("trying to get national dex number")
            print(inst)
            exit(2)

        # TODO evolutions data
        index = get_index("evolutions", frame_columns)
        hold[index] = get_evolution_data(species_data["evolution_chain"]["url"])

        # get the pokemon's game information
        pokemon_query = query_api(pokemon["url"])

        # get the base stats of the pokemon
        all_stats = pokemon_query["stats"]
        for stat in all_stats:
            index = get_index(stat["stat"]["name"], frame_columns)
            hold[index] = stat["base_stat"]

        # get the type information
        has_two = False
        type_data = pokemon_query["types"]

        if len(type_data) > 1:
            has_two = True
        elif len(type_data) < 1:
            print(name, "has no type")
            exit(2)

        index = get_index("type1", frame_columns)
        hold[index] = type_data[0]["type"]["name"]

        index2 = get_index("type2", frame_columns)
        if has_two:
            hold[index2] = type_data[1]["type"]["name"]
        else:
            hold[index2] = hold[index]


        # get height
        index = get_index("height", frame_columns)
        hold[index] = pokemon_query["height"]

        # get weight
        index = get_index("weight", frame_columns)
        hold[index] = pokemon_query["weight"]

        # get move information
        index = get_index("list_of_moves", frame_columns)
        all_moves = pokemon_query["moves"]
        known_moves = get_item_list(all_moves, "move", move_names)
        hold[index] = known_moves

        # get ability information
        index = get_index("ability_name", frame_columns)
        all_abilities = pokemon_query["abilities"]
        abils = get_item_list(all_abilities, "ability", ability_names)                
        hold[index] = abils
        
        # add the pokemon data into the dataframe
        pokemon_df.loc[len(pokemon_df.index)] = hold


    if export_data:
        export_csv(pokemon_df, config_path / "pokemon_data.csv")


    return pokemon_df
        
if __name__ == "__main__":
    test_df = get_pokmeon_data(True)
    print(test_df.head(30))
        

        