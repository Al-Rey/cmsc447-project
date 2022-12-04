import dataCleaning_nature as nature
import dataCleaning_moves as move
from dataCleaning_abilities import get_ability_data
from dataCleaning_pokemon import get_pokmeon_data


def TESTING_no_nans(df):
    test_name = "Testing no NaN values"
    if df.isna().sum().sum() > 0:
        print(test_name, ": Failed")
        print(df.isna().sum())
    else:
        print(test_name, ": Passed!")




if __name__ == "__main__":
    move_df = move.get_move_data()
    TESTING_no_nans(move_df)