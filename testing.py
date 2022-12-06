import dataCleaning_nature as nature
import dataCleaning_moves as move
import dataCleaning_abilities as ability
import dataCleaning_pokemon as pokemon

from testing_samples import DAMAGE_CLASSES
from testing_samples import TYPES, STAT_NAMES
from testing_samples import NO_EFFECT_NATURES

from cleaning_helpers import HIGHEST_GEN_NUM, DATA_UNAVAILABLE

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
        test_name = "Testing values in " + col_name + "for negatives"

        for index, row in df.iterrows():
            val = df.iloc[index, 1]
            if val != "NA" and val < 0:
                print(test_name, ": Failed!")
                print(row["name"], "has", col_name, val)
                return False

        print(test_name, ": Passed!")
        return True

    def TESTING_no_zero(self, df, col_name):
        test_name = "Testing values in " + col_name + "for negatives"

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

    # TODO grab select entires and check all their values with what is stored
    # manually
    def TESTING_check_entries(self):
        return True

    def run_tests(self):
        result = True
        result = result and self.TESTING_no_nans(self.moves_df)
        result = result and self.TESTING_moves_valid_class()
        result = result and self.TESTING_valid_generation(self.moves_df)
        result = result and self.TESTING_valid_type(self.moves_df[["name", "type"]], "type")
        result = result and self.TESTING_no_neg(self.moves_df[["name", "accuracy"]], "accuracy")
        result = result and self.TESTING_no_neg(self.moves_df[["name", "crit_rate"]], "crit_rate")
        result = result and self.TESTING_no_neg(self.moves_df[["name", "power"]], "power")
        result = result and self.TESTING_no_neg(self.moves_df[["name", "pp"]], "pp")

        return result

# This class is used for testing the nature data cleaning script
class NatureTests(TestBase):
    def __init__(self):
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
                print(test_name, ": Failed!")
                print(row["name"], "has a stat increase but no decrease")
                return False
            
            if inc != DATA_UNAVAILABLE and dec == DATA_UNAVAILABLE:
                print(test_name, ": Failed!")
                print(row["name"], "has a stat decrease but no increase")
                return False

        print(test_name, ": Passed!")
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

    def run_tests(self):
        result = True
        result = result and self.TESTING_no_nans(self.nature_df)
        result = result and self.TESTING_check_pairs()
        result = result and self.TESTING_valid_stat()
        result = result and self.TESTING_no_stat_change()
        
        return result

# This class is used for testing the ability data cleaning script
class AbilityTests(TestBase):
    def __init__(self):
        self.ability_df = ability.get_ability_data()
        super().__init__()

    def __str__(self):
        if self.run_tests():
            return "All Ability Tests Passed!"
        else:
            return "One or More Ability Tests have Failed!"
    
    def run_tests(self):
        results = True
        results = results and self.TESTING_no_nans(self.ability_df)
        results = results and self.TESTING_valid_generation(self.ability_df)

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

    # TODO test the specific entries of pokemon with the values in the 
    # testing_samples in the files
    def TESTING_check_entries(self):
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


        return results

if __name__ == "__main__":
    print(MoveTests(), end="\n\n")
    print(NatureTests(), end="\n\n")
    print(AbilityTests(), end="\n\n")
    print(PokemonTests(), end="\n\n")