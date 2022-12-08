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
const STRING_CATEGORIES = ["pokemon_name", "type1", "type2", "ability_name"];
const INT_CATEGORIES = ["pokedex_id", "attack", "special-attack", "defense", "special-defense", "speed", "hp", "height", "weight", "generation"];

class Rule
{
    constructor(category, rule, filter)
    {
        if ((typeof category || typeof rule) !== "string")
        {
            this.category = "";
            this.rule = "";
        }
        else
        {
            this.category = category.toLowerCase();
            this.rule = rule.toLowerCase();
        }
        if (typeof filter === "string")
        {
            filter = filter.toLocaleLowerCase();
        }
        this.filter = filter;
    }

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

    isValidStringRule()
    {
        if (this.isStringCategory() && typeof this.filter === "string")
        {
            if (this.rule === (VALID_RULES[0] || VALID_RULES[1]))
            {
                return true;
            }
        }
        return false;
    }

    isValidIntRule()
    {
        if (this.isIntCategory() && typeof this.filter === 'number' && !Number.isNaN(this.filter))
        {
            if (this.filter < 0)
            {
                return false;
            }
            else if (this.filter > 5 && this.category == "generation")
            {
                return false;
            }
            for (let i = 0; i < VALID_RULES.length; i += 1)
            {
                if (this.rule == VALID_RULES[i])
                {
                    return true;
                }
            }
        }
        return false;
    }

    validateRule()
    {
        return (this.isValidIntRule() || this.isValidStringRule());
    }

    composeRule()
    {
        if (this.validateRule())
        {
            this.filter = this.filter.toString();
            let composedRule = JSON.stringify(this);
            //console.log(composedRule);
            return composedRule;
        }
        return "";
    }
}

class AndParameters
{
    constructor(params)
    {
        this.params = params;
    }

    composeParameters()
    {
        /*let roundNumber = 0;
        console.log("Simplifying your query: round " + roundNumber + "...");
        while (!this.checkForContradictions())
        {
            roundNumber+=1;
            console.log(this.params);
        }
        console.log(this.params);*/
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
        //console.log("After checking for contradicting query parameters no valid queries were found");
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

    composeRequest()
    {
        //console.log(JSON.stringify(this));
        //console.log();
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
        return "";
    }
}



async function sendRequest(requestBody)
{ 
    let url = "http://" + HOST + ":" + PORT + "/" + PROTOCOL;
    let request = {method: 'POST', headers: {'Accept': '*/*', 'Content-Type': '*/*'}, body: requestBody};
    let result = fetch(url, request)
        .then((response) => { return response.json();});
        //.then(function(data) {return data;});
    return await result;
    //console.log(results);
    //return await results.json(); //results.then( function(result) { return resolve(result); });
}

function sendRequestSilent(requestBody)
{
    let url = "http://" + HOST + ":" + PORT + "/" + PROTOCOL;
    fetch(url, {
    method: 'POST',
    headers:
    {
        'Accept': '*/*',
        'Content-Type': '*/*'
    },
    body: requestBody
    }).then((response) => response.json())
    .then(data => {
        return data;
    });
}

function storeResponse(httpResponse)
{
    return httpResponse;
}

async function makeApiCall(request)
{
    let requestBody = request.composeRequest();
    //console.log(body);
    if (requestBody != "")
    {
        let results = await sendRequest(requestBody);
        //console.log(results);
        RESPONSE = results;
        //const response = responsePromise.then((result) => storeResponse());
        //return JSON.stringify(sendRequest(body).Results);
        /*.then(function(data) { 
            return JSON.parse(JSON.stringify(data)).Results; });*/
        //console.log(response);//.then((test) => { console.log(test)});
        //return response;
    }
    else
    {
        console.log("ERROR: Invalid request detected by client side input validation, please try again.");
    }
}

async function makeApiCallSilent(request)
{
    let body = request.composeRequest();
    if (body != "")
    {
        //console.log(rule3.composeRule());
        await sendRequestSilent(body);
    }
    else
    {
        console.log("ERROR: Invalid request detected by client side input validation, please try again.");
    }
}

async function stressTest(request)
{
    console.log("Starting Stress Test...");
    let i = 0;
    let total = 0;
    let min = 100;
    let max = 0;
    let numRequests = 100;
    const sleep = ms => new Promise(r => setTimeout(r, ms));
    while (i < numRequests)
    {
        const s = new Date();
        let start = s.getTime();
        await makeApiCall(request);
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
        await sleep(100);
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


//Example rules feel free to play around with these to get a feel for how they work.

//These should be caught by client side input validation and changed to all lowercase chars.
let rule1 = new Rule("speed", "lt", 20);
//let rule2 = new Rule("speed", "neq", 2);
//this should be caught by client side input validation and excluded due to the filter being a string for an int category
//let rule3 = new Rule("speed", "gte", 2);
let rule4 = new Rule("generation", "eq", 1);
//this should be caught by client side input validation and converted to all lowercase letters.
//let rule4 = new Rule("name", "eq", "piKAchu");
//let rule5 = new Rule("askjdaksjd", "eq", 5);

let andBlock1 = new AndParameters([rule1, rule4]);
//let andBlock2 = new AndParameters([rule3]);
//let andBlock3 = new AndParameters([rule3, rule4]);
let request = new JsonRequest(10, [andBlock1]);
//Do not change the lines below, they are what calls to the API.
//multiclientTest(request);
var RESPONSE = makeApiCall(request);
//console.log(typeof RESPONSE);
/*.then((data) =>
{
    console.log(data);
    return data;
}).then((r) => 
{
    dataGoesHere = r;
    console.log(dataGoesHere);
});*/
const sleep = ms => new Promise(r => setTimeout(r, ms));
while (typeof RESPONSE == 'undefined')
{
    //sleep(100);
    //console.log(typeof RESPONSE);
}
console.log("data goes here: ");
console.log(typeof RESPONSE);
RESPONSE.then(function(test) {console.log(JSON.parse(JSON.stringify(RESPONSE)).Results); });
//Do something with this data
//console.log(dataGoesHere);
//stressTest(request);
