# Directory - dataGathering
This dicrectory contains all the source code involved in the cleaning of the pokemon data that is pulled from the API and later stored in the database.

## Subdirectories
**notebooks**: This directory contains all the jupyter notebooks that the scripts were orignally programmed in. The code from these notebooks were translated into the python files in the main directory.

**datasets**: This folder contains all the files that were made as a result of the cleaning process

# Files
**`dataCleaning_abilities.py`** : This file queries the pokemon ability data from the API, cleans it, and stores it in a csv called `ability_data.csv`.

**`dataCleaning_nature.py`** : This file queries the pokemon nature data from the API, cleans it, and stores ti in a csv called `nature_data.csv`.

**`dataCleaning_moves.py`**: (Work in Progress) This file queries the pokemon move data from the API, cleans it, and scores it in a csv called `move_data.csv`. 

**`dataCleaning_pokemon.py`**: (Work in Progress) This file queries the individual pokemon data from the API, cleans it, and stored in a csv file called `pokemon_data.csv `. This script relies on the data obtained from the ability and move cleaning scripts.

**`cleaning_helpers.py`**: (Work in Progress) This file contains various helper functions used in all of the other cleaning scripts.



# Tools used
Jupyter notebook were used to implement the scripts first, then they were translated to regular python scripts.

The libraries used are:
- requests
- pandas
- numpy
