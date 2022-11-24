# Libraries
import requests
import json
# import pandas as pd
# import numpy as np

def query_api_general(link):
    query = requests.get(link)
    query_data = json.loads(query.text)
    return query_data["results"]

def query_api_specific(link):
    query = requests.get(link)
    return json.loads(query.text)

def get_generations():
    # important variables we need
    gens = ['generation-i', 'generation-ii', 'generation-iii', 
            'generation-iv', 'generation-v'
            ]
    return gens

def get_latest_game():
    return "black-2-white-2"

def get_csv(dataframe, file_name):
    dataframe.to_csv(file_name)
    return None