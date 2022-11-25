const ws = require('ws')
const prompt = require('prompt');
const { Socket } = require('dgram');
const { message } = require('prompt');
const { send } = require('process');
//import net from "net";

var HOST = '127.0.0.1';
var PORT = 8000;
var MAX_SIZE = 1024;
const VALID_RULES = ["eq", "neq", "lt", "gt", "lte", "gte"];
const STRING_CATEGORIES = ["name", "type1", "type2", "ability_name"];
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
            if (this.category == STRING_CATEGORIES[i])
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
            if (this.rule == (VALID_RULES[0] || VALID_RULES[1]))
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

function sendRequest(requestBody)
{
    fetch('http://localhost:8000/GUP', {
    method: 'POST',
    headers:
    {
        'Accept': '*/*',
        'Content-Type': '*/*'
    },
    body: requestBody
    })
    .then(function(response)
    {
        return response.text();
    })
    .then(function(data)
    {
        console.log(data); // this will be a string
    });
}


//Example rules feel free to play around with these to get a feel for how they work.
let rule1 = new Rule("genEration", "neq", 1);
let rule2 = new Rule("Height", "lte", 3);
let rule3 = new Rule("speed", "lte", "5");
let rule4 = new Rule("name", "eq", "piKAchu");
let andBlock1 = new AndParameters([rule1, rule2]);
let andBlock2 = new AndParameters([rule3, rule4]);
let request = new JsonRequest(6, [andBlock1, andBlock2]);

//Do not change the lines below, they are what calls to the API.
let body = request.composeRequest();
//console.log(rule3.composeRule());
sendRequest(body);