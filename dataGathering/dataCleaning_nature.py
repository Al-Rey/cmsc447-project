import pandas as pd
import numpy as np

from sys import argv
from pathlib import Path
from cleaning_helpers import query_api
from cleaning_helpers import get_index
from cleaning_helpers import export_csv
from cleaning_helpers import DATA_UNAVAILABLE

def get_stat(stat_name, query_data):
    """
    Params:
        - stat_name - the name of the statistical effect that it is checking
        - query_data - the json file that contains the information we are
            looking at
    This function checks to see if the nature being looked at changes any
    stats. If it does it returns the name of the stat. If it does not then the
    function returns NaN
    """
    temp = query_data[stat_name]

    if temp == None:
        return DATA_UNAVAILABLE
    else:
        return temp["name"]

def get_nature_data(export_data = False):
    link = 'https://pokeapi.co/api/v2/nature?limit=100000&offset=0'
    nature_data = query_api(link, "results")

    frame_columns = ["name", "decreased_stat", "increased_stat"]
    natures_df = pd.DataFrame(columns=frame_columns)  

    for nature in nature_data:
        nature_query = query_api(nature["url"])
        hold = [0] * len(frame_columns)

        # get the name of the nature
        index = get_index("name", frame_columns)
        hold[index] = nature_query["name"]

        # get the name of the stat the nature decreases if it does that
        index = get_index("decreased_stat", frame_columns)
        hold[index] = get_stat("decreased_stat", nature_query)

        # get the name of the stat the nature increases if it does that
        index = get_index("increased_stat", frame_columns)
        hold[index] = get_stat("increased_stat", nature_query)

        # add the data to the end of the dataframe
        natures_df.loc[len(natures_df.index)] = hold

    
    config_path = Path(argv[0]).resolve().parent 
    if export_data:
        export_csv(natures_df, config_path / "pokemon_data.csv")
 
    return natures_df

if __name__ == '__main__':
    test = get_nature_data()
    print(test.head(10))