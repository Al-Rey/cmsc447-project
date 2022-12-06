use crate::pokemonmodel::{Pokemon};
use serde::{Serialize, Deserialize};

//Constants

const VALID_RULES: [&str; 6] = ["eq", "neq", "lt", "gt", "lte", "gte"];
const STRING_CATEGORIES: [&str; 4] = ["name", "type1", "type2", "ability_name"];
const INT_CATEGORIES: [&str; 10] = ["pokedex_id", "attack", "special-attack", "defense", "special-defense", "speed", "hp", "height", "weight", "generation"];

//Struct Declarations

#[derive(Serialize, Deserialize)]
pub struct JsonRequest
{
    pub entries: u32,
    pub params: Vec<AndParameters>
}

impl JsonRequest
{
    pub fn parse_request(&self) -> String
    {
        let mut i: usize = 0;
        let mut query: String = String::new();
        //This loop runs until the end of the list has been reached
        while i < self.params.len()
        {
            let mut foundnext: bool = false;
            //loop runs until a valid set of and conditions is found or the loop reaches the end of the list of parameters.
            //This loop ensures that only valid sets of and parameters are included.
            while i < self.params.len() && foundnext == false
            {
                let mut k: usize = 0;
                let next_result_set: Vec<String> = self.params[i].parse_query();
                //This loop checks if there are any valid rules within each set of and parameters
                while k < next_result_set.len()
                {
                    if next_result_set[k] != ""
                    {
                        foundnext = true;
                        break;
                    }
                    k += 1;
                }
                if foundnext == true
                {
                    if query.len() > 0
                    {
                        query.push_str("\n UNION\n SELECT * FROM pokemon WHERE ");
                    }
                    else
                    {
                        query.push_str("SELECT * FROM pokemon WHERE ");                        
                    }
                    break;
                }
                else
                {
                    i += 1;
                }
            }
            if i < self.params.len()
            {
                //This loop parses valid sets of and conditions
                let mut j: usize = 0;
                let and_result: Vec<String> = self.params[i].parse_query();
                while j < and_result.len()
                {
                    if and_result[j] != ""
                    {
                        query.push_str(&and_result[j].clone());
                    }
                    j += 1;
                    if j < and_result.len() && and_result[j] != "" && and_result[j - 1] != ""
                    {
                        query.push_str(" AND ");
                    }
                }
                i += 1;
            }
        }
        //query.push_str("'");
        return query;
    }    
}

#[derive(Serialize, Deserialize)]
pub struct QueryParameter
{
    pub category: String,
    pub rule: String,
    pub filter: String
}

#[derive(Serialize, Deserialize)]
pub struct AndParameters
{
    pub rules: Vec<QueryParameter>
}

#[derive(Serialize, Deserialize)]
pub struct JsonResponse
{
    pub results: Vec<Pokemon>
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

//Trait Definitions/Implementations <--- "I always just call it a goober."

impl ParseQuery for AndParameters
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
            Ok(_n) => 
            {
                if self.filter.parse::<i32>().unwrap() < 0
                {
                    return "".to_string();
                }
                else if self.category == "generation".to_string() && self.filter.parse::<i32>().unwrap() > 5
                {
                    return "".to_string();
                }
                return format_rule(self);
            },
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
            return format_rule(self);
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

//Definitions of non-trait methods/functions/subroutines <--- "I always just call it a goober."

fn format_rule(param: &QueryParameter) -> String
{
    if param.is_string_category()
    {
        if param.rule == VALID_RULES[0].to_string() { return format!("{} = '{}'", param.category, param.filter) }
        else if param.rule == VALID_RULES[1].to_string() { return format!("{} != '{}'", param.category, param.filter) }
    }
    else
    {
        if param.rule == VALID_RULES[0].to_string() { return format!("{} = {}", param.category, param.filter) }
        else if param.rule == VALID_RULES[1].to_string() { return format!("{} != {}", param.category, param.filter) }
        else if param.rule == VALID_RULES[2].to_string() { return format!("{} < {}", param.category, param.filter) }
        else if param.rule == VALID_RULES[3].to_string() { return format!("{} > {}", param.category, param.filter) }
        else if param.rule == VALID_RULES[4].to_string() { return format!("{} <= {}", param.category, param.filter) }
        else if param.rule == VALID_RULES[5].to_string() { return format!("{} >= {}", param.category, param.filter) }
    }
    return "".to_string();
}