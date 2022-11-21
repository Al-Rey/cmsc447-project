const ws = require('ws')
const prompt = require('prompt');
const { Socket } = require('dgram');
const { message } = require('prompt');
const { send } = require('process');
//import net from "net";

var HOST = '127.0.0.1';
var PORT = 8081;
var MAX_SIZE = 1024;

class Rule
{
    constructor(category, rule, filter)
    {
        this.category = category;
        this.rule = rule;
        this.filter = filter;
    }
}

class OrParameters
{
    constructor(rules)
    {
        this.rules = rules;
    }
}

class AndParameters
{
    constructor(params)
    {
        this.params = params;
    }
}

class JsonRequest
{
    constructor(entries, rules)
    {
        this.entries = entries;
        this.query = query;
    }

    buildJson(rules)
    {
        let i = 0;
        let olist = [];
        let alist = [];
        let params = [];
        while (i < rule.length)
        {            
            if (rule[i] == "-AND-")
            {
                if (olist.length > 0)
                {
                    alist.push(AndParameters(olist));
                    olist = [];
                }
            }
            else
            {
                params.push()
            }
            i++;
        }
    }
}

function buildRequest(rules)
{

}

function JsonRequest()
{
    var json
}

function AndParameters()
{

}

function OrParameters()
{

}

function Rules(category, rule, filter)
{

}

function sendData(client, data)
{
    data = splitData(data);
    let dataIndex = 0;
    let bufferIndex = 0;
    let buffer = Buffer.alloc(MAX_SIZE);
    while (data[dataIndex] != '\0')
    {
        buffer[bufferIndex] = data[dataIndex];
        dataIndex++;
        bufferIndex++;
        console.log(buffer);
        if (bufferIndex >= buffer.length)
        {
            console.log(buffer);
            send(buffer);
            bufferIndex = 0;
        }
    }
    buffer.fill('\0', bufferIndex);
    console.log(buffer);
    client.send(buffer);
}

function splitData(data)
{
    let dataBuffer = data.split('');
    dataBuffer.push('\0');
    return dataBuffer;
}

function TEXT(text)
{
    return Buffer.from('$(text)\0', "ucs2");
}

let client = new ws.WebSocket("ws://localhost:8081");
client.addEventListener('open', (event) => {
    console.log("test");
    let msg = 'hello';
    let input = prompt("tell me something...");
    send(msg.toString());
});
client.addEventListener('close', (event) => {
    console.log('The connection has been closed successfully.');
});
client.addEventListener('error', (event) => {
    console.log('WebSocket error: ', event);
});
client.addEventListener('message', (event) => {
    console.log('Message from server ', event.data);
});
/*client.onopen = function(e)
{
    //alert("[open] Connection established");
    //alert("Sending to server");
    //sendData(client, "hello world");
};
client.onclose = function(event)
{
    if (event.wasClean)
    {
      alert(`[close] Connection closed cleanly, code=${event.code} reason=${event.reason}`);
    }
    else
    {
      // e.g. server process killed or network down
      // event.code is usually 1006 in this case
      alert('[close] Connection died');
    }
};
client.onerror = function(error)
{
    alert(`[error]`);
};*/