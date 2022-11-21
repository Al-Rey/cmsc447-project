use serde::{Serialize, Deserialize};
use rocket::{Responder};

//Constants

const VALID_RULES: [&str; 6] = ["eq", "neq", "lt", "gt", "lte", "gte"];
const STRING_CATEGORIES: [&str; 4] = ["name", "type1", "type2", "ability_name"];
const INT_CATEGORIES: [&str; 10] = ["pokedex_id", "attack", "special-attack", "defense", "special-defense", "speed", "hp", "height", "weight", "generation"];

//Struct Declarations

#[derive(Serialize, Deserialize)]
pub struct JsonRequest
{
    pub entries: u32,
    pub params: Vec<OrParameters>
}

#[derive(Serialize, Deserialize)]
pub struct QueryParameter
{
    pub category: String,
    pub rule: String,
    pub filter: String
}

#[derive(Serialize, Deserialize)]
pub struct OrParameters
{
    pub rules: Vec<QueryParameter>
}

#[derive(Serialize, Deserialize, Responder)]
pub struct JsonResponse
{
    pub results: String
}

#[derive(Serialize, Deserialize)]
pub struct DbEntriesReturned
{
    result_lists: Vec<Vec<Pokemon>>
}

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

trait ParseQuery
{
    fn parse_query(&self) -> Vec<String>;
}

trait ParseRule
{
    fn parse_rule(&self) -> String;
}

trait FilterWithInt
{
    fn filter_with_int(&self) -> String;
}

trait FilterWithString
{
    fn filter_with_string(&self) -> String;
}

trait IsIntCategory
{
    fn is_int_category(&self) -> bool;
}

trait IsStringCategory
{
    fn is_string_category(&self) -> bool;
}

trait IsValidRule
{
    fn is_valid_rule(&self) -> bool;
}

trait AreEqual
{
    fn are_equal(&self, check_against: Pokemon) -> bool;
}

trait QueryDatabase
{
    fn query_database(&mut self, params: Vec<String>) -> Vec<Pokemon>;
}

//Trait Definitions/Implementations <--- "I always just call it a goober."

impl ParseQuery for JsonRequest
{
    fn parse_query(&self) -> Vec<String>
    {
        let mut i: usize = 0;
        let mut output_vec: Vec<String> = Vec::new();
        while i < self.params.len()
        {
            let or_result: Vec<String> = self.params[i].parse_query();
            let mut j: usize = 0;
            loop
            {
                if j >= or_result.len()
                {
                    break;
                }
                else if or_result[i] != ""
                {
                    output_vec.push(or_result[i].clone());
                }
                j += 1;
            }
            i += 1;
        }
        return output_vec;
    }
}

impl ParseQuery for OrParameters
{
    fn parse_query(&self) -> Vec<String>
    {
        let mut parsed_output: Vec<String> = Vec::new();
        let mut i: usize = 0;
        loop
        {
            if i >= self.rules.len()
            {
                break;
            }
            parsed_output.push(self.rules[i].parse_rule());
            i += 1;
        }
        return parsed_output;
    }
}

impl ParseRule for QueryParameter
{
    fn parse_rule(&self) -> String
    {
        if self.is_valid_rule()
        {
            if self.is_int_category()
            {
                return self.filter_with_int();
            }
            else if self.is_string_category()
            {
                return self.filter_with_string();
            }
        }
        return "".to_string();
    }
}

impl FilterWithInt for QueryParameter
{
    fn filter_with_int(&self) -> String
    {
        match &self.filter.parse::<i32>()
        {
            Ok(_n) => format!("http://get/pokemon/{}/{}/{}", &self.category, &self.rule, &self.filter),
            Err(_err) => "".to_string(),
        }
    }
}

impl FilterWithString for QueryParameter
{
    fn filter_with_string(&self) -> String
    {
        //must be "eq" or "neq"
        if self.rule == VALID_RULES[0] || self.rule == VALID_RULES[1]
        {
            return format!("http://get/pokemon/{}/{}/{}", &self.category, &self.rule, &self.filter);
        }
        return "".to_string();
    }
}

impl IsIntCategory for QueryParameter
{
    fn is_int_category(&self) -> bool
    {
        let temp: &str = &self.category as &str;
        return INT_CATEGORIES.contains(&temp);
    }
}

impl IsStringCategory for QueryParameter
{
    fn is_string_category(&self) -> bool
    {
        let temp: &str = &self.category as &str; 
        return STRING_CATEGORIES.contains(&temp);
    }
}

impl IsValidRule for QueryParameter
{
    fn is_valid_rule(&self) -> bool
    {
        let temp: &str = &self.rule as &str;
        return VALID_RULES.contains(&temp);
    }
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

impl QueryDatabase for DbEntriesReturned
{
    fn query_database(&mut self, params: Vec<String>) -> Vec<Pokemon>
    {
        let mut i: usize = 0;
        while i < params.len()
        {
            let or_lists: Vec<Vec<Pokemon>> = Vec::new();
            while params[i] != "-AND-"
            {
                //TODO: implement database query
                i += 1;
            }
            if or_lists.len() > 0
            {
                self.result_lists.push(merge_k_or_lists(or_lists));
            }
            i += 1;
        }
        if self.result_lists.len() > 0
        {
            return merge_k_and_lists(&mut self.result_lists);
        }
        let empty_vec: Vec<Pokemon> = Vec::new();
        return empty_vec;
    }
}

//Definitions of non-trait methods/functions/subroutines <--- "I always just call it a goober."

fn merge_k_and_lists(and_lists: &mut Vec<Vec<Pokemon>>) -> Vec<Pokemon>
{
    while and_lists.len() > 1
    {
        let mut i: usize = 0;
        let mut j: usize = 0;
        while i < and_lists.len() - 1
        {
            //merges next pair of vectors
            and_lists[j] = merge_two_and_lists(&and_lists[i], &and_lists[i + 1]);
            i += 2;
            j += 1;
        }
        //adds on last vector if there were an odd number of vectors
        if i < and_lists.len()
        {
            and_lists[j] = and_lists[i].clone();
            //shrinks the list by half
            and_lists.truncate(j + 1);
        }
    }
    return and_lists[0].clone();
}

fn merge_two_and_lists(list1: &Vec<Pokemon>, list2: &Vec<Pokemon>) -> Vec<Pokemon>
{
    let mut list1_position: usize = 0;
    let mut list2_position: usize = 0;
    let list1_length: usize = list1.len();
    let list2_length: usize = list2.len();    
    let mut merged_vec: Vec<Pokemon> = Vec::with_capacity(std::cmp::min(list1_length, list2_length) + 1);
    while list1_position < list1_length && list2_position < list2_length
    {
        if list1[list1_position].index < list2[list2_position].index
        {
            list1_position += 1;
        }
        else if list1[list1_position].index > list2[list2_position].index
        {
            list2_position += 1;            
        }
        else
        {
            merged_vec.push(list1[list1_position].clone());
            list1_position += 1;
            list2_position += 1;
        }
    }
    merged_vec.shrink_to_fit();
    return merged_vec;
}

fn merge_k_or_lists(mut or_lists: Vec<Vec<Pokemon>>) -> Vec<Pokemon>
{
    while or_lists.len() > 1
    {
        let mut i: usize = 0;
        let mut j: usize = 0;
        while i < or_lists.len() - 1
        {
            //merges next pair of vectors
            or_lists[j] = merge_two_or_lists(&or_lists[i], &or_lists[i + 1]);
            i += 2;
            j += 1;
        }
        //adds on last vector if there were an odd number of vectors
        if i < or_lists.len()
        {
            or_lists[j] = or_lists[i].clone();
            //shrinks the list by half
            or_lists.truncate(j + 1);
        }
    }
    return or_lists[0].clone();
}

fn merge_two_or_lists(list1: &Vec<Pokemon>, list2: &Vec<Pokemon>) -> Vec<Pokemon>
{
    let mut list1_position: usize = 0;
    let mut list2_position: usize = 0;
    let list1_length: usize = list1.len();
    let list2_length: usize = list2.len();    
    let mut merged_vec: Vec<Pokemon> = Vec::with_capacity(list1_length + list2_length);
    while list1_position < list1_length && list2_position < list2_length
    {
        if list1[list1_position].index < list2[list2_position].index
        {
            merged_vec.push(list1[list1_position].clone());
            list1_position += 1;
        }
        else if list1[list1_position].index > list2[list2_position].index
        {
            merged_vec.push(list2[list2_position].clone());
            list2_position += 1;            
        }
        else
        {
            merged_vec.push(list1[list1_position].clone());
            list1_position += 1;
            list2_position += 1;
        }
    }
    while list1_position < list1_length
    {
        merged_vec.push(list1[list1_position].clone());
        list1_position += 1;
    }
    while list2_position < list2_length
    {
        merged_vec.push(list2[list2_position].clone());
        list2_position += 1;
    }
    merged_vec.shrink_to_fit();
    return merged_vec;
}
