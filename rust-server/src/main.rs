#![feature(decl_macro)]
use lib::jsonstructs::*;
use rocket::{self, post, routes};
use serde_json;



#[post("/GUP", data="<query>")]
fn get_using_post(query: String) -> String
{
    let json_object: JsonRequest = serde_json::from_str(query.as_str()).unwrap();
    let mut and_rules: usize = 0;
    let mut or_rules: usize = 0;
    let mut rules: usize = 0;
    while and_rules < json_object.query.len()
    {
        loop
        {
            println!("{{");
            loop
            {
                println!("  category = {}", json_object.query[and_rules].params[or_rules].rules[rules].category);
                println!("  rule = {}", json_object.query[and_rules].params[or_rules].rules[rules].rule);
                println!("  filter = {}", json_object.query[and_rules].params[or_rules].rules[rules].filter);
                rules += 1;
                if rules >= json_object.query[and_rules].params[or_rules].rules.len()
                {
                    println!("}}");
                    break;
                }
                println!("  or");
            }
            rules = 0;
            or_rules += 1;
            if or_rules >= json_object.query[and_rules].params.len()
            {
                break;
            }
            println!("and");
        }
        or_rules = 0;
        and_rules += 1;
    }
    return query;
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