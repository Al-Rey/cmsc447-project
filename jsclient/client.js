const ws = require('ws')
const prompt = require('prompt');
const { Socket } = require('dgram');
//import net from "net";

var HOST = '127.0.0.1';
var PORT = 8080;
var MAX_SIZE = 6;

function sendData(client, data)
{
    let datalength = data.length;
    data = splitData(data);
    let dataIndex = 0;
    let bufferIndex = 0;
    let buffer = Buffer.alloc(MAX_SIZE);
    while (data[dataIndex] != '\0')
    {
        dataIndex++;
        bufferIndex++;
        if (bufferIndex >= buffer.length)
        {
            client.send(buffer, );
            bufferIndex = 0;
        }
    }
    buffer.fill('\0', bufferIndex);
    client.send(buffer);
}

function splitData(data)
{
    let dataBuffer = data.split('');
    dataBuffer.push('\0');
    return dataBuffer;
}

let client = new ws.WebSocket("ws://localhost:8080");
client.onopen = function(e)
{
    alert("[open] Connection established");
    alert("Sending to server");
    sendData(client, "hello world");
};