# Directory - dataGathering
This dicrectory contains all the source code involved in the cleaning of the pokemon data that is pulled from the API and later stored in the database.

## Subdirectories
**notebooks**: This directory contains all the jupyter notebooks that the scripts were orignally programmed in. The code from these notebooks were translated into the python files in the main directory.

**datasets**: This folder contains all the files that were made as a result of the cleaning process

# Files
## Data Files
**`nature_data.csv`** : This CSV file contains the information about pokemon natures. The columns in this CSV files are:
- name - the name of the nature
- decreased_stat - the name of the stat that the nature decreases
- increased_stat - the name of the stat that the nature increases

**`ability_data.csv`** : This CSV file contains the infomration about the abilities in the main games. The columns in this CSV files are:
- name - the name of the ability
- generation - the generation that this ability first appeared
- effects - A string that explains the effects the ability has in game
- description - A string that is essentially flavor text that explains at a high level what the ability does

**`move_data.csv`** : This CSV file contains the information about the moves in the main series games. The columns in this CSV files are:
- name - the name of the move
- accuracy - the accuracy of the move. If it is not applicable (for example the move never misses), then it is filled with the value to indicate that the value is unavailable or unapplicable
- class - The type of damage class (physical, special, status)
- game_desc
- effect_chance - a string that explians the effect the move has in game
- generation
- machines
- crit_rate
- type - the type of the move
- power
- pp
- priority

**`pokemon_data.csv`** : 

**`move_names.csv`** : This datafile contains only the names of the moves parsed in `dataClaning_moves.py` and  saved in `move_data.csv`. It is used to help in parsing the data in `dataCleaning_pokemon.py`.

**`ability_names.csv`** : This datafile contains ony the names of the abilities parsed in `dataCleaning_abilities.py` and saved in `ability_data.csv`. This fule is used to help in parsing the data in `dataCleaning_pokemon.py`.

## Python Files
**`dataCleaning_abilities.py`** : This file queries the pokemon ability data from the API, cleans it, and stores it in a csv called `ability_data.csv`.

**`dataCleaning_nature.py`** : This file queries the pokemon nature data from the API, cleans it, and stores ti in a csv called `nature_data.csv`.

**`dataCleaning_moves.py`**: (Work in Progress) This file queries the pokemon move data from the API, cleans it, and scores it in a csv called `move_data.csv`. 

**`dataCleaning_pokemon.py`**: (Work in Progress) This file queries the individual pokemon data from the API, cleans it, and stored in a csv file called `pokemon_data.csv `. This script relies on the data obtained from the ability and move cleaning scripts.

**`cleaning_helpers.py`**: (Work in Progress) This file contains various helper functions used in all of the other cleaning scripts.

**`testing_samples.py`**: (Work in Progress) This file contains all the constants that the testing file references when running the tests on all the scripts listed above.




# Tools used
Jupyter notebook were used to implement the scripts first, then they were translated to regular python scripts.

The libraries used are:
- requests
- pandas
- numpy
