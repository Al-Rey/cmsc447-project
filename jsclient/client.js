const ws = require('ws')
const prompt = require('prompt');
const { Socket } = require('dgram');
const { message } = require('prompt');
const { send } = require('process');
const { format } = require('path');
const streamToString = require('stream-to-string');
const { PassThrough } = require('stream');
//import net from "net";

const HOST = 'localhost';
const PORT = "8000";
const PROTOCOL = "GUP";
const VALID_RULES = ["eq", "neq", "lt", "gt", "lte", "gte"];
const STRING_CATEGORIES = ["pokemon_name", "type1", "type2"];
const INT_CATEGORIES = ["pokedex_id", "attack", "special-attack", "defense", "special-defense", "speed", "hp", "height", "weight", "generation"];


//The most basic building block for making the API requests.
//Rules contain a category, a rule and a filter.
class Rule
{
    constructor(category, rule, filter)
    {
        //invalidates the when it is initialized if it does
        //not contain the expected parameter types.
        if ((typeof category || typeof rule) !== "string")
        {
            this.category = "";
            this.rule = "";
        }
        //user input is further sanitized by setting all letters to lowercase
        else
        {
            this.category = category.toLowerCase();
            this.rule = rule.toLowerCase();
        }
        //if the filter is a string then it is also set to all lowercase.
        //Nothing is done if the filter is an int.
        if (typeof filter === "string")
        {
            filter = filter.toLowerCase();
        }
        this.filter = filter;
    }

    //Checks if this rule contains a valid int category
    isIntCategory()
    {
        for (let i = 0; i < INT_CATEGORIES.length; i += 1)
        {
            if (this.category == INT_CATEGORIES[i])
            {
                return true;
            }            
        }
        return false;
    }

    //Checks if this rule contains a valid string category
    isStringCategory()
    {
        for (let i = 0; i < STRING_CATEGORIES.length; i += 1)
        {
            if (this.category === STRING_CATEGORIES[i])
            {
                return true;
            }
        }
        return false;
    }

    //Checks if a Rule is a valid string Rule. Returns true if it is and false if it is not.
    isValidStringRule()
    {
        if (this.isStringCategory() && typeof this.filter === "string")
        {
            //checks that the rule is either "eq" or "neq"
            if (this.rule === (VALID_RULES[0] || VALID_RULES[1]))
            {
                return true;
            }
        }
        //Returns false for any unforseen edge cases.
        return false;
    }

    //Checks if a Rule is a valid int Rule. Returns true if it is and false if it is not.
    isValidIntRule()
    {
        if (this.isIntCategory() && typeof this.filter === 'number' && !Number.isNaN(this.filter))
        {
            //negative integers are not allowed.
            if (this.filter < 0)
            {
                return false;
            }
            //returns false if searching for a generation outside the valid range
            else if ((this.filter == 0 || this.filter > 5) && this.category == "generation")
            {
                return false;
            }
            //Checks if the rule for the Rule is in the list of VALID_RULES.
            for (let i = 0; i < VALID_RULES.length; i += 1)
            {
                if (this.rule == VALID_RULES[i])
                {
                    return true;
                }
            }
        }
        //Returns false for any unforseen edge cases.
        return false;
    }

    //checks if the Rule is a valid string Rule or int Rule.
    validateRule()
    {
        return (this.isValidIntRule() || this.isValidStringRule());
    }

    //Creates a piece of a JSON string from valid Rules
    composeRule()
    {
        if (this.validateRule())
        {
            this.filter = this.filter.toString();
            let composedRule = JSON.stringify(this);
            return composedRule;
        }
        //if the Rule is not valid an empty string is returned.
        return "";
    }
}

class AndParameters
{
    constructor(params)
    {
        this.params = params;
    }

    //Loops through all the Rules in params and creates a JSON string containing an array of Rules.
    composeParameters()
    {
        let nextParam = "";
        let composedParams = "";
        for (let i = 0; i < this.params.length; i += 1)
        {
            nextParam = this.params[i].composeRule();
            if (nextParam != "" && composedParams != "")
            {
                composedParams += "," + nextParam;
            }
            else if (nextParam != "")
            {
                composedParams += '{"rules": [' + nextParam;
            }
        }
        if (composedParams != "")
        {
            return composedParams + "]}";
        }
        //Returns an empty string if no valid Rules were found in params.
        return "";
    }
}

class JsonRequest
{
    constructor(entries, rules)
    {
        this.entries = entries;
        this.query = rules;
    }

    //This builds a json string that can be read by the API.
    composeRequest()
    {
        if (typeof this.entries !== "number" && !Number.isNaN(this.entries))
        {
            return "";
        }
        let composedQuery = "";
        let nextAndBlock = "";
        for (let i = 0; i < this.query.length; i += 1)
        {
            nextAndBlock = this.query[i].composeParameters();
            if (nextAndBlock != "" && composedQuery != "")
            {
                composedQuery += "," + nextAndBlock;
            }
            else if (nextAndBlock != "")
            {
                composedQuery += '"params": [' + nextAndBlock;
            }
        }
        if (composedQuery != "")
        {
            return '{"entries": ' + this.entries.toString() + ", " + composedQuery + "]}";
        }
        //Returns an empty string if the JsonRequest did not contain any valid AndParameters.
        return "";
    }
}

//Takes a JSON string as a parameter and sends it to the API as the body of a POST request.
async function sendRequest(requestBody)
{ 
    let url = "http://" + HOST + ":" + PORT + "/" + PROTOCOL;
    let request = {method: 'POST', headers: {'Accept': '*/*', 'Content-Type': '*/*'}, body: requestBody};
    let result = fetch(url, request)
        .then((response) => { return response.json();});
    //Returns the API's response.
    return await result;
}

//Takes a JsonRequest as a parameter and sets the global response value equal to the value returned by the API.
async function makeApiCall(request)
{
    //generates a JSON string from the JsonRequest passed in to the argument
    let requestBody = request.composeRequest();
    //Only makes an API call if the JsonRequest produced a valid JSON string.
    if (requestBody != "")
    {
        let results = await sendRequest(requestBody);
        RESPONSE = results;
    }
    //If the string generated by the JSON body was not valid an error message is printed.
    else
    {
        console.log("ERROR: Invalid request detected by client side input validation, please try again.");
    }
}

//BUILD YOUR JsonRequest BETWEEN THESE COMMENTS
let rule1 = new Rule("speed", "lt", -1);
let rule2 = new Rule("pokemon_name", "eq", "a");
let andBlock1 = new AndParameters([rule1, rule2]);
let request = new JsonRequest(10, [andBlock1]);
//BUILD YOUR JsonRequest BETWEEN THESE COMMENTS

var RESPONSE = makeApiCall(request);
while (typeof RESPONSE == 'undefined' && RESPONSE != ""){ }
RESPONSE.then(function(test) {console.log(JSON.parse(JSON.stringify(RESPONSE)).Results); });
RESPONSE = "";


//DEFUNCT TESTS
//These tests no longer work with the way the client and API are implemented.
//They have been commented out so that they may be modified in the future to work with the client and API again.
/*
async function stressTest(request)
{
    console.log("Starting Stress Test...");
    let i = 0;
    let total = 0;
    let min = 100;
    let max = 0;
    let numRequests = 1000;
    const sleep = ms => new Promise(r => setTimeout(r, ms));
    while (i < numRequests)
    {
        let rule1 = new Rule("speed", "lt", 100);
        let rule2 = new Rule("pokemon_name", "eq", "piKAchu");

        let andBlock1 = new AndParameters([rule1, rule2]);

        let request = new JsonRequest(10, [andBlock1]);
        RESPONSE = "";
        const s = new Date();
        let start = s.getTime();

        var RESPONSE = makeApiCall(request);
        while (typeof RESPONSE == 'undefined' && RESPONSE != ""){ }
        RESPONSE.then(function(test) { });

        const e = new Date();
        let timeElapsed = e.getTime() - start;
        total += timeElapsed;
        if (timeElapsed > max)
        {
            max = timeElapsed;
        }
        if (timeElapsed < min)
        {
            min = timeElapsed;
        }
        i += 1;
        await sleep(300);
    }
    console.log("Stress Test Results:");
    console.log(numRequests + " requests sent.");
    console.log("Total time elapsed in ms: " + total);
    console.log("average response time in ms: " + total/numRequests);
    console.log("min response time in ms: " + min);
    console.log("max response time in ms: " + max);
}

async function multiclientTest(request)
{
    let i = 0;
    while (i < 100)
    {
        const sleep = ms => new Promise(r => setTimeout(r, ms));
        await sleep(250);
        makeApiCallSilent(request);
        i += 1;
    }
}
*/