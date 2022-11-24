# Libraries
import pandas as pd
import numpy as np
from cleaning_helpers import query_api_general
from cleaning_helpers import query_api_specific
from cleaning_helpers import get_generations
from cleaning_helpers import get_gen_number

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

def get_pokmeon_data():
    link = 'https://pokeapi.co/api/v2/pokemon?limit=1000&offset=0'
    pokemon_data = query_api_general(link)

    move_names = (pd.read_csv("move_names.csv"))["name"].tolist()
    ability_names = (pd.read_csv("ability_data.csv"))["name"].tolist()

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

    for pokemon in pokemon_df:
        pokemon_query = query_api_specific(pokemon["url"])

        hold = [0] * len(frame_columns)

        # check that the pokemon is from one of the generations in our scope
        try:
            first_game = pokemon_query["game_indices"][0]["version"]["name"]
        except IndexError:
            print("index error getting first game:", pokemon_query["name"])
            continue

        if first_game not in list(game_gen.keys()):
            continue
        else:
            index = get_index("generation", frame_columns)
            if index != None:
                hold[index] = game_gen[first_game]
            else:
                break

        # get a pokemon's name
        index = get_index("name", frame_columns)
        if index != None:
            hold[index] = pokemon_query["name"]
        else:
            break

        # get the base stats
        fail = False
        all_stats = pokemon_query["stats"]
        for stat in all_stats:
            index = get_index(stat["stat"]["name"])
            if index != None:
                hold[index] = stat["base_stat"]
            else:
                fail = True
                break
        
        if fail:
            break

        # get the type information
        try:
            two_types = False
            type_data = pokemon_query["types"]

            if len(type_data) > 1:
                two_types = True
            elif len(type_data) < 1:
                print(pokemon_query["name"], "has no types")
                break

            index = get_index("type1", frame_columns)
            if index != None:
                hold[index] = type_data[0]["type"]["name"]
            else:
                break

            index2 = get_index("type2", frame_columns)
            if index2 != None:
                if two_types:
                    hold[index2] = type_data[1]["type"]["name"]
                else:
                    hold[index2] = hold[index]
            else:
                break

        except Exception as inst:
            print("error getting type data")
            print(inst)
            break

        # get the height
        index = get_index("height", frame_columns)
        if index != None:
            hold[index] = pokemon_query["height"]
        else:
            break

        # get the height
        index = get_index("weight", frame_columns)
        if index != None:
            hold[index] = pokemon_query["weight"]
        else:
            break

        # get move information
        # TODO: get how the pokemon learns the data
        index = get_index("list_of_moves", frame_columns)
        if index != None:
            known_moves = []
            all_moves = pokemon_query["moves"]
            info = 0

            for move in all_moves:
                if move["move"]["name"] not in move_names:
                    continue
                
                info = (move["move"]["name"], -1)
                known_moves.append(info)
                
            hold[index] = known_moves
        else:
            break

        # get ability infomration
        index = get_index("ability_name", frame_columns)
        if index != None:
            abils = []
            all_abilities = pokemon_query["abilities"]
            info = 0
            for ability in all_abilities:
                if ability["ability"]["name"] not in ability_names:
                    continue
                
                info = (ability["ability"]["name"], ability["is_hidden"])
                #info[1] = move["move"][]
                abils.append(info)
                
            hold[index] = abils
        else:
            break

        # get the pokemon's ID
        index = get_index("pokedex_id", frame_columns)
        if index != None:
            hold[index] = pokemon_query["id"]
        else:
            break

        pokemon_df.loc[len(pokemon_df.index)] = hold

    return pokemon_df
        
        

        