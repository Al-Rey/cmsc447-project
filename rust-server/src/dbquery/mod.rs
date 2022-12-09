use serde::{Serialize, Deserialize};
use crate::pokemonmodel::Pokemon;
use crate::jsonstructs::JsonRequest;
use sqlx::mysql::{MySqlPoolOptions, MySqlRow, MySqlConnection};
use sqlx::{FromRow, Row, Pool, MySql};
use futures::executor::block_on;
use dotenv;

//Struct declarations

pub struct DbClient
{
    //This is used like a static class. It does not contain data but has methods associated with it.
}

impl DbClient
{
    pub fn new() -> Self
    {
        Self { }
    }

    //DO NOT TOUCH THIS CODE IF YOU DO WE MAY NEVER GET IT WORKING AGAIN.
    pub async fn query_database(request: JsonRequest) -> String
    {
        let sql_query: String = build_query(request);
        println!("{}", sql_query);
        //let mut results: Vec<Pokemon> = vec![];
        let conn_str: &str = &DbClient::get_connection_string();
        let pool = DbClient::get_connection(conn_str);
        let results = DbClient::send_query(&pool.await, &sql_query).await;
        let mut parsed_results: String = String::new();
        let mut i: usize = 0;
        while i < results.len()
        {
            if parsed_results == ""
            {
                parsed_results.push_str("{\"Results\": { \"Pokemon\": [");
            }
            parsed_results.push_str(&format!("{}", results[i].jsonify()));
            i += 1;
            if i < results.len()
            {
                parsed_results.push_str(", ");
            }
        }
        if parsed_results != ""
        {
            parsed_results.push_str("]} }");
        }
        else
        {
            parsed_results = "No results found".to_string();
        }
        //println!("{}", parsed_results);
        return parsed_results.to_string();
    }

    async fn send_query(pool: &Pool<MySql>, sql_query: &str) -> Vec<Pokemon>
    {
        let rows = sqlx::query(sql_query);
        //maps the fields returned by the database to the appropriate fields
        //of Pokemon structs in a vector of Pokemon
        let results: Vec<Pokemon> = rows
        .map(|row: MySqlRow| Pokemon
        {
            //index: row.get("id"),
            pokemon_name: row.get("pokemon_name"),
            pokedex_id: row.get("pokedex_id"),
            attack: row.get("attack"),
            special_attack: row.get("special_attack"),
            defense: row.get("defense"),
            special_defense: row.get("special_defense"),
            speed: row.get("speed"),
            hp: row.get("hp"),
            type1: row.get("type1"),
            type2: row.get("type2"),
            list_of_moves: row.get("move_list"),
            ability_name: row.get("ability_name"),
            height: row.get("height"),
            weight: row.get("weight"),
            generation: row.get("generation"),
        })
        .fetch_all(&*pool)
        .await.unwrap();
        return results;
    }

    //Initializes a connection with the database
    pub async fn get_connection(conn_str: &str) -> Pool<MySql>
    {
        return MySqlPoolOptions::new()
            .max_connections(10)
            .connect(conn_str).await.unwrap();
    }
    
    //Constructs a connection string using variables found in the .env file. (environmental variables)
    pub fn get_connection_string() -> String
    {
        dotenv::dotenv().ok();
        let database_type: &str = &std::env::var("DB_TYPE").unwrap();
        let user: &str = &std::env::var("DB_USER").unwrap();
        let password: &str = &std::env::var("DB_PASSWORD").unwrap();
        let host: &str = &std::env::var("DB_HOST").unwrap();
        let name: &str = &std::env::var("DB_NAME").unwrap();
        let connection_string: String = format!{"{}://{}:{}@{}:3306/{}", database_type, user, password, host, name};
        return connection_string;
    }
}

pub fn build_query(request: JsonRequest) -> String
{
    return request.parse_request();
}
