use std::process::Command;
use serde::{Serialize, Deserialize};
//use diesel::pg::PgConnection;
//use diesel::prelude::*;
use std::env;
use crate::pokemonmodel::Pokemon;
use crate::jsonstructs::JsonRequest;
use crate::jsonstructs::ParseRequest;

//Struct declarations

#[derive(Serialize, Deserialize)]
pub struct DbEntriesReturned
{
    result_lists: Vec<Vec<Pokemon>>
}

trait QueryDatabase
{
    fn query_database(&mut self, params: Vec<String>) -> Vec<Pokemon>;
}

//Trait implementations

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

//Normal functrions

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

/*pub fn establish_connection() -> PgConnection
{
    dotenv::dotenv().ok();
    let database_url = env::var("DATABASE_URL").expect("DATABASE_URL must be set");
    PgConnection::establish(&database_url)
        .unwrap_or_else(|_| panic!("Error connecting to {}", database_url))
}*/

pub fn run_query(username: String, db: String, request: JsonRequest)
{
    /*let output = Command::new("ls")
        .arg("-l")
        .arg("-a")
        .output()
        .expect("error occurred");
    *///println!("stdout: {}", String::from_utf8_lossy(&output.stdout));
    /*cmd.args(["-U", &username, "-d", &db, "-c", &build_query(request)]);
    cmd.output()
    .expect("Failed to execute process");
    match cmd.output()
    {
        Ok(o) =>
        {
            unsafe
            {
                println!("Output: \n{}", String::from_utf8_unchecked(o.stdout));
            }
        },
        Err(e) =>
        {
            println!("Error during run_query function: {}", e);
        }
    }*/
}

pub fn build_query(request: JsonRequest) -> String
{
    return request.parse_request();
}
