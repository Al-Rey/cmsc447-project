#![feature(decl_macro)]
use lib::dbquery::DbClient;
use rocket::{self, post, routes};
use futures::executor::block_on;
use serde_json;

#[post("/GUP", data="<query>")]
fn get_using_post(query: String) -> String
{
    println!("{}", query);
    let try_parse_json = serde_json::from_str(query.as_str());
    match try_parse_json
    {
        Ok(json_object) =>
        {
            return block_on(DbClient::query_database(json_object));
        },
        Err(_error) => 
        {
            //Error message sent as json string to avoid a fatal error on the client side.
            return "{ \"Error\": \"ERROR: Invalid request detected.\" }".to_string();
        },
    }
}

fn rocket() -> rocket::Rocket
{
    rocket::ignite()
        .mount("/", routes![get_using_post],)
}

fn main()
{
    let api: rocket::Rocket = rocket();
    api.launch();
}