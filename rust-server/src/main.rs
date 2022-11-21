#![feature(decl_macro)]
use lib::jsonstructs::*;
use lib::dbquery::*;
use rocket::{self, post, routes};
use serde_json;



#[post("/GUP", data="<query>")]
fn get_using_post(query: String) -> String
{
    let json_object: JsonRequest = serde_json::from_str(query.as_str()).unwrap();
    return build_query(json_object);
    //print_json_request(json_object);
}

fn print_json_request(json_object: JsonRequest)
{
    let mut and_rules: usize = 0;
    let mut or_rules: usize = 0;
    while and_rules < json_object.params.len()
    {
        if json_object.params[and_rules].rules.len() > 0
        {
            println!("{{");
            while or_rules < json_object.params[and_rules].rules.len()
            {
                println!("  category = {}", json_object.params[and_rules].rules[or_rules].category);
                println!("  rule = {}", json_object.params[and_rules].rules[or_rules].rule);
                println!("  filter = {}", json_object.params[and_rules].rules[or_rules].filter);
                or_rules += 1;
                if or_rules < json_object.params[and_rules].rules.len()
                {
                    println!("  or");
                }
            }
            println!("}}");
            or_rules = 0;
        }
        and_rules += 1;
        if and_rules < json_object.params.len()
        {
            println!("and");
        }
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