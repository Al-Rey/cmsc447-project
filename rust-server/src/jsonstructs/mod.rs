use serde::{Serialize, Deserialize};

//Constants

const VALID_RULES: [&str; 6] = ["eq", "neq", "lt", "gt", "lte", "gte"];
const STRING_CATEGORIES: [&str; 3] = ["pokemon_name", "type1", "type2"];
const INT_CATEGORIES: [&str; 10] = ["pokedex_id", "attack", "special-attack", "defense", "special-defense", "speed", "hp", "height", "weight", "generation"];

//Struct Declarations

#[derive(Serialize, Deserialize)]
pub struct QueryParameter
{
    pub category: String,
    pub rule: String,
    pub filter: String
}

impl QueryParameter
{
    pub fn parse_rule(&self) -> String
    {
        //Checks if rule is in list of valid rules
        if self.is_valid_rule()
        {
            //checks if the category takes an integer as its filter
            if self.is_int_category()
            {
                //converts the QueryParameter into a SQL string if it is valid.
                return self.filter_with_int();
            }
            //checks if the category takes a string as its filter
            else if self.is_string_category()
            {
                //converts the QueryParameter into a SQL string if it is valid.
                return self.filter_with_string();
            }
        }
        //returns an empty string if the QueryParameter is invalid
        return "".to_string();
    }

    //Checks if the rule for this parameter is in the list of valid rules.
    fn is_valid_rule(&self) -> bool
    {
        let this_rule: &str = &self.rule as &str;
        return VALID_RULES.contains(&this_rule);
    }

    //Checks if the category for this parameter is in the list of integer categories
    fn is_int_category(&self) -> bool
    {
        let this_category: &str = &self.category as &str;
        return INT_CATEGORIES.contains(&this_category);
    }

    //Returns a SQL string if the QueryParameter is a valid integer rule. Otherwise an empty string is returned.
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

    //Checks if the category for this parameter is in the list of string categories
    fn is_string_category(&self) -> bool
    {
        let this_category: &str = &self.category as &str; 
        return STRING_CATEGORIES.contains(&this_category);
    }

    //Returns a SQL string if the QueryParameter is a valid string rule. Otherwise an empty string is returned.
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

#[derive(Serialize, Deserialize)]
pub struct AndParameters
{
    pub rules: Vec<QueryParameter>
}

impl AndParameters
{
    pub fn parse_query(&self) -> Vec<String>
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
                    //pushes different string onto the SQL query depending
                    //on if any valid AndParameters have been pushed on already.
                    if query.len() == 0
                    {
                        query.push_str("SELECT * FROM pokemon WHERE ");
                    }
                    //After the first valid AndParameters object has been pushed all
                    //subsequent valid AndParameters are pushed with the UNION prefix
                    else
                    {
                        query.push_str("\n UNION\n SELECT * FROM pokemon WHERE ");
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
        return query;
    }    
}

//Definitions of non-trait methods/functions/subroutines <--- "I always just call it a goober."

//formats valid integer and string QueryParameters as JSON strings.
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
    //This should never run but if an unforseen edge case occurs,
    //this returns an empty string to indicate the QueryParameter could not be parsed properly.
    return "".to_string();
}