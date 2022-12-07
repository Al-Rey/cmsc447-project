from cleaning_helpers import DATA_UNAVAILABLE

# nature sample that changes no stats
NATURE_HARDY = {
    "decreased_stat": DATA_UNAVAILABLE,
    "increased_stat": DATA_UNAVAILABLE,
    "name": "hardy"
}

# nature sample that does change stats
NATURE_LONELY = {
    "decreased_stat": "defense",
    "increased_stat": "attack",
    "name": "lonely"
}

MOVE_1 = {
    "name": "whirlpool",
    "accuracy": 85,
    "class": "special",
    "game_desc": "Traps foes in a violent swirling whirlpool for four to five turns.",
    "effect_chance": "Inflicts regular damage. For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn. The user continues to use other moves during this time. If the user leaves the field, this effect ends. Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times. Averages to 3 hits per use. If the target is in the first turn of dive, this move will hit with double power.", 
    "generation": 2, 
    "machines": "tm04",
    "crit_rate": 0, 
    "type": "water", 
    "power": 35, 
    "pp": 15, 
    "priority ": 0
}

MOVE_2 = {
    "name": "tackle",
    "accuracy": 100,
    "class": "physical",
    "game_desc": "A physical attack in which the user charges and slams into the target with its whole body.",
    "effect_chance": "Inflicts regular damage.", 
    "generation": 1, 
    "machines": DATA_UNAVAILABLE,
    "crit_rate": 0, 
    "type": "normal", 
    "power": 40, 
    "pp": 35, 
    "priority": 0 
}

MOVE_3 = {
    "name": "dragon-dance",
    "accuracy": DATA_UNAVAILABLE,
    "class": "status",
    "game_desc": "The user vigorously performs a mystic, powerful dance that boosts its Attack and Speed stats.",
    "effect_chance": "Raises the user's Attack and Speed by one stage each.", 
    "generation": 3, 
    "machines": DATA_UNAVAILABLE,
    "crit_rate": 0, 
    "type": "dragon", 
    "power": DATA_UNAVAILABLE, 
    "pp": 20, 
    "priority": 0 

}

ABILITY_1 = {
    "name": "battle-armor",
    "generation": 3,
}

ABILITY_2 = {
    "name": "flash-fire",
    "generation": 3,
}

POKEMON_1 = {
    "name": "pachirisu",
    "pokedex_id": 417,
    "attack": 45, 
    "special-attack": 45,
    "defense": 70,
    "special-defense": 90, 
    "speed": 95, 
    "hp": 60, 
    "type1": "electric", 
    "type2": "electric",
    "ability_name": [("run-away", False), ("pickup", False), ("volt-absorb", True)], 
    "height": 4, 
    "weight": 39,
    "generation": 4, 
    "evolutions": [("pachirisu", "", 0)]                      
}


POKEMON_2 = {
    "name": "ditto",
    "pokedex_id": 132,
    "attack": 48, 
    "special-attack": 48,
    "defense": 48,
    "special-defense": 48, 
    "speed": 48, 
    "hp": 48, 
    "type1": "normal", 
    "type2": "normal",
    "list_of_moves": [("transform", "", 0)],
    "ability_name": [("limber", False), ("imposter", True)], 
    "height": 3, 
    "weight": 40,
    "generation": 1, 
    "evolutions": [("ditto", "", 0)]                      
}

POKEMON_3_EVO = {
    "name": "squirtle",
    "evolutions": [("squirtle", "", 0), ("wartortle", "level-up(16)", 16), ("blastoise", "level-up(36)", 36)] 
}

POKEMON_4_EVO = {
    "name": "silcoon",
    "evolutions": [("wurmple", "", 0), ("silcoon", "level-up(7)", 1), ("beautifly", "level-up(10)", 2), ("cascoon", "level-up(7)", 1), ("dustox", "level-up(10)", 2)] 
}

STAT_NAMES = ["attack", "defense", "speed", "special-attack", "special-defense"]

DAMAGE_CLASSES = ["physical", "special", "status"]

TYPES = ["normal", "fire", "water", "grass", "electric",
         "ice", "fighting", "poison", "ground", "flying",
         "psychic", "bug", "ghost", "dark", "dragon",
         "steel", "fairy", "rock"]

NO_EFFECT_NATURES = ["bashful", "docile", "hardy", "quirky", "serious"]

MOVE_LEARN_METHODS = ["machine", "tutor", "egg"]