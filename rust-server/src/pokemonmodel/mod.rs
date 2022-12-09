use serde::{Serialize, Deserialize};
use sqlx::{FromRow};

#[derive(Serialize, Deserialize, Clone, FromRow, Debug)]
pub struct Pokemon
{
    pub pokemon_name: String,
    pub pokedex_id: i32,
    pub attack: i32,
    pub special_attack: i32,
    pub defense: i32,
    pub special_defense: i32,
    pub speed: i32,
    pub hp: i32,
    pub type1: String,
    pub type2: String,
    pub list_of_moves: String,
    pub ability_name: String,
    pub height: i32,
    pub weight: i32,
    pub generation: i32
}

impl Pokemon
{
    pub fn jsonify(&self) -> String
    {
        let mut json_string: String = String::from("{ ");
        json_string.push_str(&format!("'pokemon_name': '{}', ", self.pokemon_name));
        json_string.push_str(&format!("'pokedex_id': {}, ", self.pokedex_id));
        json_string.push_str(&format!("'attack': {}, ", self.attack));
        json_string.push_str(&format!("'special_attack': {}, ", self.special_attack));
        json_string.push_str(&format!("'defense': {}, ", self.defense));
        json_string.push_str(&format!("'special_defense': {}, ", self.special_defense));
        json_string.push_str(&format!("'speed': {}, ", self.speed));
        json_string.push_str(&format!("'hp': {}, ", self.hp));
        json_string.push_str(&format!("'type1': '{}', ", self.type1));
        json_string.push_str(&format!("'type2': '{}', ", self.type2));
        //json_string.push_str(&format!("'move_list': '{}', ", self.list_of_moves));
        //json_string.push_str(&format!("'ability_name': '{}', ", self.ability_name));
        json_string.push_str(&format!("'height': {}, ", self.height));
        json_string.push_str(&format!("'weight': {}, ", self.weight));
        json_string.push_str(&format!("'generation': {} }}", self.generation));
        return json_string.replace("\'", "\"");
    }

    pub fn are_equal(&self, check_against: Pokemon) -> bool
    {
        if self.pokemon_name != check_against.pokemon_name { return false; }
        else if self.pokedex_id != check_against.pokedex_id { return false; }
        else if self.attack != check_against.attack { return false; }
        else if self.special_attack != check_against.special_attack { return false; }
        else if self.defense != check_against.defense { return false; }
        else if self.special_defense != check_against.special_defense{ return false; }
        else if self.speed != check_against.speed { return false; }
        else if self.hp != check_against.hp { return false; }
        else if self.type1 != check_against.type1 { return false; }
        else if self.type2 != check_against.type2 { return false; }
        else if self.list_of_moves != check_against.list_of_moves { return false; }
        else if self.ability_name != check_against.ability_name { return false; }
        else if self.height != check_against.height { return false; }
        else if self.weight != check_against.weight { return false; }
        else { return self.generation == check_against.generation; }
    }
}
