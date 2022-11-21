//use diesel::prelude::*;
use serde::{Serialize, Deserialize};

/*#[derive(Queryable)]
pub struct Post {
    pub id: i32,
    pub title: String,
    pub body: String,
    pub published: bool,
}*/

#[derive(Serialize, Deserialize, Clone)]
pub struct Pokemon
{
    pub index: u32,
    pub name: String,
    pub pokedex_id: u32,
    pub attack: u32,
    pub special_attack: u32,
    pub defense: u32,
    pub special_defense: u32,
    pub speed: u32,
    pub hp: u32,
    pub type1: String,
    pub type2: String,
    pub list_of_moves: Vec<String>,
    pub ability_name: String,
    pub height: u32,
    pub weight: u32,
    pub generation: u32
}

//Trait Declarations

trait AreEqual
{
    fn are_equal(&self, check_against: Pokemon) -> bool;
}

impl AreEqual for Pokemon
{
    fn are_equal(&self, check_against: Pokemon) -> bool
    {
        if self.index != check_against.index { return false; }
        else if self.name != check_against.name { return false; }
        else if self.pokedex_id != check_against.pokedex_id { return false; }
        else if self.attack != check_against.attack { return false; }
        else if self.special_attack != check_against.special_attack { return false; }
        else if self.defense != check_against.defense { return false; }
        else if self.special_defense != check_against.special_defense{ return false; }
        else if self.speed != check_against.speed { return false; }
        else if self.hp != check_against.hp { return false; }
        else if self.type1 != check_against.type1 { return false; }
        else if self.type2 != check_against.type2 { return false; }
        else if self.ability_name != check_against.ability_name { return false; }
        else if self.height != check_against.height { return false; }
        else if self.weight != check_against.weight { return false; }
        else if self.generation != check_against.generation { return false; }
        //Check if list sizes are different to potentially avoid needing to loop through each entry
        else if self.list_of_moves.len() != check_against.list_of_moves.len() { return false; }
        let mut i: usize = 0;
        loop
        {
            if i >= self.list_of_moves.len()
            {
                return true;
            }
            else if self.list_of_moves[i] != check_against.list_of_moves[i]
            {
                return false;
            }
            i += 1;
        }
    }
}