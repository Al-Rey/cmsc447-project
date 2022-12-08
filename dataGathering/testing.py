import dataCleaning_nature as nature
import dataCleaning_moves as move
import dataCleaning_abilities as ability
import dataCleaning_pokemon as pokemon

from testing_samples import DAMAGE_CLASSES
from testing_samples import TYPES, STAT_NAMES
from testing_samples import NO_EFFECT_NATURES
from testing_samples import MOVE_LEARN_METHODS

from cleaning_helpers import HIGHEST_GEN_NUM, DATA_UNAVAILABLE

from testing_samples import NATURE_HARDY, NATURE_LONELY
from testing_samples import ABILITY_1, ABILITY_2
from testing_samples import MOVE_1, MOVE_2, MOVE_3
from testing_samples import POKEMON_1, POKEMON_2, POKEMON_3_EVO, POKEMON_4_EVO

# the Base testing class. This class contains tests that are used for more
# than one of the scripts
class TestBase:
    def TESTING_no_nans(self, df):
        test_name = "Testing no NaN values"
        if df.isna().sum().sum() > 0:
            print(test_name, ": Failed")
            print(df.isna().sum())
            return False
        else:
            print(test_name, ": Passed!")
            return True

    def TESTING_valid_generation(self, df):
        test_name = "Testing valid gereration"

        for index, row in df.iterrows():
            gen = row["generation"]
            if gen > HIGHEST_GEN_NUM or gen <= 0:
                print(test_name, ": Failed!")
                print(row["name"], "has generation", gen)
                return False

        print(test_name, ": Passed!")
        return True

    def TESTING_no_neg(self, df, col_name):
        test_name = "Testing values in " + col_name + " for negatives"

        for index, row in df.iterrows():
            val = df.iloc[index, 1]
            if val != "NA" and val < 0:
                print(test_name, ": Failed!")
                print(row["name"], "has", col_name, val)
                return False

        print(test_name, ": Passed!")
        return True

    def TESTING_no_zero(self, df, col_name):
        test_name = "Testing values in " + col_name + " for negatives"

        for index, row in df.iterrows():
            val = df.iloc[index, 1]
            if val != "NA" and val <= 0:
                print(test_name, ": Failed!")
                print(row["name"], "has", col_name, val)
                return False

        print(test_name, ": Passed!")
        return True

    def TESTING_valid_type(self, df, col_name):
        test_name = "Testing " + col_name

        for index, row in df.iterrows():
            type = row[col_name]
            if type not in TYPES:
                print(test_name, ": Failed!")
                print(row["name"], "has type", type)
                return False

        print(test_name, ": Passed!")
        return True

# This class is used for testing the move data cleaning script
class MoveTests(TestBase):
    def __init__(self):
        print("Making Dataframe...")
        self.moves_df = move.get_move_data()
        super().__init__()

    def __str__(self):
        if self.run_tests():
            return "All Move Tests Passed!"
        else:
            return "One or More Move Tests have Failed!"

    def TESTING_moves_valid_class(self):
        test_name = "Testing valid damage class names"

        for index, row in self.moves_df.iterrows():
            class_text = row["class"]
            if class_text not in DAMAGE_CLASSES:
                print(test_name, ": Failed!")
                print(row["name"], "has class", class_text)
                return False

        print(test_name, ": Passed!")
        return True

    def check_entry(self, sample_entry):
        name = sample_entry["name"]
        found = self.moves_df.loc[self.moves_df["name"] == name]
        # print(found.head())
        if len(found) != 1:
            print("There wasn't only one entry for", name)
            return False

        for key in sample_entry.keys():
            item = ""
            if key == "effect_chance" or key == "game_desc":
                # print("We got\t: ", found[key].iloc[0])
                temp = found[key].iloc[0].replace("\n", " ")
                temp2 = temp.replace("  ", " ")
                # item = temp2.replace("\n", " ")
                item = temp2
                # print("We got\t: ", item)
            else:
                item = found[key].iloc[0]
            
            if item != sample_entry[key]:
                print("The", key, "does not match!")
                print("We got\t: ", item)
                print("We expected\t: ", sample_entry[key])
                return False
        
        return True
    

    # TODO grab select entires and check all their values with what is stored
    # manually
    def TESTING_check_entries(self):
        test_name1 = "Testing for the whirlpool entry"
        test_name2 = "Testing for the tackle entry"
        test_name3 = "Testing for the Dragon dance enrty"
        passed = False
        
        # check the infomration for move 1
        if not self.check_entry(MOVE_1):
            print("Failed!", test_name1)
            return False
        else:
            print("Passed!", test_name1)
            # return True

        if not self.check_entry(MOVE_2):
            print("Failed!", test_name2)
            return False
        else:
            print("Passed!", test_name2)
            # return True

        if not self.check_entry(MOVE_3):
            print("Failed!", test_name3)
            return False
        else:
            print("Passed!", test_name3)
            return True

    def run_tests(self):
        print("Running Test...")
        result = True
        result = result and self.TESTING_no_nans(self.moves_df)
        result = result and self.TESTING_moves_valid_class()
        result = result and self.TESTING_valid_generation(self.moves_df)
        result = result and self.TESTING_valid_type(self.moves_df[["name", "type"]], "type")
        result = result and self.TESTING_no_neg(self.moves_df[["name", "accuracy"]], "accuracy")
        result = result and self.TESTING_no_neg(self.moves_df[["name", "crit_rate"]], "crit_rate")
        result = result and self.TESTING_no_neg(self.moves_df[["name", "power"]], "power")
        result = result and self.TESTING_no_neg(self.moves_df[["name", "pp"]], "pp")
        result = result and self.TESTING_check_entries()

        return result

# This class is used for testing the nature data cleaning script
class NatureTests(TestBase):
    def __init__(self):
        print("Making Dataframe...")
        self.nature_df = nature.get_nature_data()
        super().__init__()

    def __str__(self):
        if self.run_tests():
            return "All Nature Tests Passed!"
        else:
            return "One or More Nature Tests have Failed!"
    
    def TESTING_check_pairs(self):
        test_name = "Testing to make sure if the increased_stat column is populated the decreased_stat column is also populated"
        for index, row in self.nature_df.iterrows():
            inc = row["increased_stat"]
            dec = row["decreased_stat"]
            
            if inc == DATA_UNAVAILABLE and dec != DATA_UNAVAILABLE:
                print("Failed!", test_name)
                print(row["name"], "has a stat increase but no decrease")
                return False
            
            if inc != DATA_UNAVAILABLE and dec == DATA_UNAVAILABLE:
                print("Failed!", test_name)
                print(row["name"], "has a stat decrease but no increase")
                return False

        print("Passed!", test_name)
        return True

    def TESTING_valid_stat(self):
        test_name = "Testing that the stat names in the increased and decreased stat columns are valid"
        for index, row in self.nature_df.iterrows():
            
            # ignore the natures that aren't supposed to have stat changes
            if row["name"] in NO_EFFECT_NATURES:
                continue

            if row["increased_stat"] not in STAT_NAMES or row["decreased_stat"] not in STAT_NAMES:
                print(test_name, ": Failed!")
                print(row["name"], "has a stat increase but no decrease")
                return False

        print(test_name, ": Passed!")
        return True

    def TESTING_no_stat_change(self):
        test_name = "Testing that only the natures that change no stats are marked as such"
        for index, row in self.nature_df.iterrows():

            if row["increased_stat"] == DATA_UNAVAILABLE and row["decreased_stat"] == DATA_UNAVAILABLE:
                # ignore the natures that aren't supposed to have stat changes
                if row["name"] not in NO_EFFECT_NATURES:
                    print(test_name, ": Failed!")
                    print(row["name"], "should have stat changes")
                    return False

        print(test_name, ": Passed!")
        return True

    def TESTING_check_entries(self):
        test_name1 = "Testing values for Hardy nature"
        test_name2 = "Testing values for Lonely nature"
        
        passed = False
        found = self.nature_df.loc[self.nature_df["name"] == "hardy"]
        

        if len(found) == 1:
            if found.loc[0, "name"] == NATURE_HARDY["name"]:
                if found.loc[0, "decreased_stat"] == NATURE_HARDY["decreased_stat"] and found.loc[0, "increased_stat"] == NATURE_HARDY["increased_stat"]:
                    passed = True

        if passed:
            print("Passed!", test_name1)
            passed = False
        else:
            print("Failed!", test_name1)
            print(found.head())
            return False


        found = self.nature_df.loc[self.nature_df["name"] == "lonely"]
        # print(found.head())
        if len(found) == 1:
            if found["name"].iloc[0] == NATURE_LONELY["name"]:
                if found["decreased_stat"].iloc[0] == NATURE_LONELY["decreased_stat"] and found["increased_stat"].iloc[0] == NATURE_LONELY["increased_stat"]:
                    passed = True


        if passed:
            print("Passed!", test_name2)
            return True
        else:
            print("Failed!", test_name2)
            return False

    def run_tests(self):
        print("Running Tests...")
        result = True
        result = result and self.TESTING_no_nans(self.nature_df)
        result = result and self.TESTING_check_pairs()
        result = result and self.TESTING_valid_stat()
        result = result and self.TESTING_no_stat_change()
        result = result and self.TESTING_check_entries()
        
        return result

# This class is used for testing the ability data cleaning script
class AbilityTests(TestBase):
    def __init__(self):
        print("Making Dataframe...")
        self.ability_df = ability.get_ability_data()
        super().__init__()

    def __str__(self):
        if self.run_tests():
            return "All Ability Tests Passed!"
        else:
            return "One or More Ability Tests have Failed!"

    def TESTING_check_entries(self):
        test_name1 = "Testing values for battle armor nature"
        test_name2 = "Testing values for flass fire nature"
        
        passed = False
        found = self.ability_df.loc[self.ability_df["name"] == "battle-armor"]
        

        if len(found) == 1:
            if found["name"].iloc[0] == ABILITY_1["name"]:
                if found["generation"].iloc[0] == ABILITY_1["generation"]:
                    passed = True
                else:
                    print("the generations don't match")
            else:
                print("the names do not match")
        else:
            print("There wasn't only one entry")

        if passed:
            print("Passed!", test_name1)
            passed = False
        else:
            print("Failed!", test_name1)
            print(found.head())
            return False


        found = self.ability_df.loc[self.ability_df["name"] == "flash-fire"]
        # print(found.head())
        if len(found) == 1:
            if found["name"].iloc[0] == ABILITY_2["name"]:
                if found["generation"].iloc[0] == ABILITY_2["generation"]:
                    passed = True
                else:
                    print("the generations don't match")
            else:
                print("the names do not match")
        else:
            print("There wasn't only one entry")

        if passed:
            print("Passed!", test_name2)
            return True
        else:
            print("Failed!", test_name2)
            return False
    
    def run_tests(self):
        print("Running Tests...")
        results = True
        results = results and self.TESTING_no_nans(self.ability_df)
        results = results and self.TESTING_valid_generation(self.ability_df)
        results = results and self.TESTING_check_entries()

        return results

# This class is used for testing the pokemon data cleaning script
class PokemonTests(TestBase):
    def __init__(self):
        self.pokemon_df = pokemon.get_pokmeon_data()
        super().__init__()

    def __str__(self):
        if self.run_tests():
            return "All Pokemon Tests Passed!"
        else:
            return "One or More Pokemon Tests have Failed!"
    
    def TESTING_pokemon_has_moves(self):
        test_name = "Testing that every pokemon has at least one move"
        for index, row, in self.pokemon_df.iterrows():
            num_moves = len(row["list_of_moves"])
            
            if num_moves <= 0:
                print(test_name, ": Failed!")
                print(row["name"], "does not have any moves")
                return False
            else:
                print(test_name, ": Passed!")
                return True

    def TESTING_pokemon_move_learn(self):
        test_name = "Testing that the move learn methods are valid entries"

        for index, row in self.pokemon_df.iterrows():
            moves = row["list_of_moves"]

            for move in moves:
                method = move[1] # get the method that the move is learned
                if isinstance(method, str) and method in MOVE_LEARN_METHODS:
                    continue
                elif isinstance(method, int) and method > 0:
                    continue

                print("Failed! :", test_name)
                print("Error for the move", move[0], "for ", row["name"])
                print("The method learned is", method)
                return False

        print("Passed! :", test_name)
        return True

    def check_entry(self, sample_entry):
        name = sample_entry["name"]
        found = self.pokemon_df.loc[self.pokemon_df["name"] == name]
        # print(found.head())
        if len(found) != 1:
            print("There wasn't only one entry for", name)
            return False

        for key in sample_entry.keys():
            item = ""
            if key == "effect_chance" or key == "game_desc":
                # print("We got\t: ", found[key].iloc[0])
                temp = found[key].iloc[0].replace("\n", " ")
                temp2 = temp.replace("  ", " ")
                # item = temp2.replace("\n", " ")
                item = temp2
                # print("We got\t: ", item)
            else:
                item = found[key].iloc[0]
            
            if item != sample_entry[key]:
                print("The", key, "does not match!")
                print("We got\t: ", item)
                print("We expected\t: ", sample_entry[key])
                return False
        
        return True

    # TODO test the specific entries of pokemon with the values in the 
    # testing_samples in the files
    def TESTING_check_entries(self):
        test_name1 = "Testing for the Pachirisu entry"
        test_name2 = "Testing for the Ditto entry"
        test_name3 = "Testing for Squirtle's evolution enrty"
        test_name4 = "Testing for Silcoon's evolution entry"
        passed = False
        
        # check the infomration for pokemon 1
        if not self.check_entry(POKEMON_1):
            print("Failed!", test_name1)
            return False
        else:
            print("Passed!", test_name1)
            # return True

        # check the infomration for pokemon 2
        if not self.check_entry(POKEMON_2):
            print("Failed!", test_name2)
            return False
        else:
            print("Passed!", test_name2)
            # return True

        # check the infomration for pokemon 3
        if not self.check_entry(POKEMON_3_EVO):
            print("Failed!", test_name3)
            return False
        else:
            print("Passed!", test_name3)
            # return True

        # check the infomration for move 1
        if not self.check_entry(POKEMON_4_EVO):
            print("Failed!", test_name4)
            return False
        else:
            print("Passed!", test_name4)
            return True

    def run_tests(self):
        results = True
        results = results and self.TESTING_no_nans(self.pokemon_df)
        results = results and self.TESTING_valid_generation(self.pokemon_df)
        results = results and self.TESTING_no_zero(self.pokemon_df[["name", "attack"]], "attack")
        results = results and self.TESTING_no_zero(self.pokemon_df[["name", "special-attack"]], "special-attack")
        results = results and self.TESTING_no_zero(self.pokemon_df[["name", "defense"]], "defense")
        results = results and self.TESTING_no_zero(self.pokemon_df[["name", "special-defense"]], "special-defense")
        results = results and self.TESTING_no_zero(self.pokemon_df[["name", "speed"]], "speed")
        results = results and self.TESTING_no_zero(self.pokemon_df[["name", "hp"]], "hp")
        results = results and self.TESTING_no_zero(self.pokemon_df[["name", "weight"]], "weight")
        results = results and self.TESTING_no_zero(self.pokemon_df[["name", "height"]], "height")
        results = results and self.TESTING_no_zero(self.pokemon_df[["name", "pokedex_id"]], "pokedex_id")
        results = results and self.TESTING_valid_type(self.pokemon_df[["name", "type1"]], "type1")
        results = results and self.TESTING_valid_type(self.pokemon_df[["name", "type2"]], "type2")
        results = results and self.TESTING_pokemon_has_moves()
        results = results and self.TESTING_pokemon_move_learn()
        results = results and self.TESTING_check_entries()


        return results

if __name__ == "__main__":
    print("Running Move data validation tests...")
    print(MoveTests(), end="\n\n")

    print("Running Nature data validation tests...")
    print(NatureTests(), end="\n\n")

    print("Running Ability data validation tests...")
    print(AbilityTests(), end="\n\n")

    print("Running Pokemon data validation tests...")
    print(PokemonTests(), end="\n\n")