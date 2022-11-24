import pandas as pd
from cleaning_helpers import query_api_general, query_api_specific


def get_stat(stat_name, query_data):
    temp = query_data[stat_name]

    if temp == None:
        return ""
    else:
        return temp["name"]

def get_nature_data():
    link = 'https://pokeapi.co/api/v2/nature?limit=100000&offset=0'
    nature_data = query_api_general(link)

    frame_columns = ["name", "decreased_stat", "increased_stat"]
    natures_df = pd.DataFrame(columns=frame_columns)  

    for nature in nature_data:
        nature_query = query_api_specific(nature["url"])

        hold = ["", "", ""]

        # get the name of the nature
        hold[0] = nature_query["name"]

        # get the name of the stat the nature decreases if it does that
        hold[1] = get_stat("decreased_stat", nature_query)

        # get the name of the stat the nature increases if it does that
        hold[2] = get_stat("increased_stat", nature_query)

        # add the data to the end of the dataframe
        natures_df.loc[len(natures_df.index)] = hold

    return natures_df

if __name__ == '__main__':
    test = get_nature_data()
    print(test.head(10))