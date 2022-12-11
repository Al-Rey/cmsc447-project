# front-end client README

## Table of Contents
1. [Introduction](#1-introduction)
2. [Getting Started](#2-getting-started)
3. [How to Use](#3-how-to-use)
4. [Notable Features](#4-notable-features)
5. [Open Issues](#5-open-issues)
6. [Technical Notes](#6-technical-notes)

## 1. Introduction

### Purpose of this Document

This document is designed to inform readers on how to use the front-end client. Additionally this document provides information that users who would like to create their own forks of this front-end client should be aware of before making any alterations. This is done in order to facilitate a smoother adoption process by pre-empting some obstacles the user would likely encounter otherwise.

### Description of Project

The front-end client was designed to allow users to make queries to a database through the rust-server API. This allows user input to be sanitized on both the client side and the server side before being sent to the database. By having the client script use the API as a proxy we can prevent common threats such as SQL injection. At the same time the frontend client allows users to make more flexible and complex queries than would otherwise be possible using HTTP GET requests. For further details on how this is accomplished refer to the [Notable Features](#3-notable-features)section.

## 2. Getting Started

### Prerequisites

In order to use this API users will need to have the following software installed on their system:

1. Git (This is needed to clone this repository to your system) [Git Installation Documentation](https://git-scm.com/downloads)

2. Node.js (This is needed to run the script) [Node.js Installation Documentation](https://nodejs.org/en/download/)

3. Node Package Manager (Used by Node.js to install any needed dependencies) [npm Installation Documentation](https://docs.npmjs.com/cli/v8/commands/npm-install)

You will also need to create a GitHub account if you do not already have one. Additonally it is recommended that you have an Integrated Development Environment, commonly referred to as an IDE that provides an integrated terminal or command line interface. If you do not already have one installed you can find a list of popular IDEs [here](https://www.techrepublic.com/article/best-ide-software/).

### How to download and run the front-end client

Once you have the prerequisite software installed on your system it you are ready to download and run the API. You should begin by opening a terminal and navgating to the directory you would like to clone this git repository to. This can be done using the command: **cd** followed by the path to the directory you have chosen. Once there you will clone this repository by entering the command: **git clone https://github.com/Al-Rey/cmsc447-project.git** from there you will be prompted for your GitHub credentials. After providing your credentials the code from this repository will be downloaded to your machine.

Before continuing please have an instance of the API running in a seperate terminal or CLI. for instructions on how to build and run the API please refer to the [Getting Started](https://github.com/Al-Rey/cmsc447-project/tree/main/rust-server#2-getting-started) section of the rust-server README.md file.

Now that you have the source code on your machine you will want to navigate to the front-end client directory of the project. to do this enter in: **cd cmsc447-project/jsclient** if you are on Linux or **cd cmsc447-project\jsclient** if you are on Windows.

Finally to run the front-end client you will enter the command **node client.js**. The API will then query the database on your behalf and return the results to the front-end client. the results are then displayed as JSON objects. To see how you can create your own custom queries using the front-end client please refer to the [How to Use](#3-how-to-use) section.

## 3. How to Use

To create your own custom queries using the front-end client you will need to understand how the client builds queries. Each query has three levels: **Rules**, **AndParameters**, and a single **JsonRequest** object.

Rule objects form the foundation upon which the other two levels are built. each Rule object contains three values: a "category", a "rule" (all lower case), and a "filter". For a Rule object to be parsed into a valid query, the "category" field must match one of the elements in either the INT_CATEGORIES array or the STRING_CATEGORIES array. Additionally the "rule" value must match one of the values in the VALID_RULES array. It should also be noted that if a STRING_CATEGORIES can only use "eq" and "neq" for their "rule" value since within the scope of this project we are only considering if strings are equal or not equal. The "filter" value is used to specify what the value being filtered with is. When creating a new Rule object if you are using a string category the "filter" should also be passed in as a filter, and if you are using an integer category you should pass in the "filter" as an integer. Lets look at a few examples:

new Rule("pokemon_name", "eq", "pikachu"); This rule would return only pokemon whose name is pikachu.
new Rule("pokemon_name", "neq", "pikachu"); This rule would return only pokemon whose name is **not** pickachu.
new Rule("pokemon_name", "lt", "pikachu"); This rule is invalid and will be excluded since string categories must use either "eq" or "neq"
new Rule("pokemon_name", "eq", 1); This rule is invalid and will be excluded since string categories must have a string filter.

new Rule("speed", "eq", 50); This rule would return all pokemon with a speed value of 50.
new Rule("speed", "lte", 50); This rule would return all pokemon with a speed value less than or equal to 50.
new Rule("speed", "lte", "50"); This rule is invalid and will be excluded since integer categories must have an integer filter.
new Rule("speed", "eq", -1); This rule is invalid and will be excluded since negative numbers are not accepted.

The next level is composed of AndParameters. And parameters contain an array of Rule objects, which must all be met for a value to be returned by the database. Any Rule objects that are invalid will be excluded when parsed by an AndParameters object. If an AndParameters object does not contain any valid rules then it is also considered invalid and will be excluded. lets look at some examples in which we have two valid Rule objects: rule_a, rule_b, and a third Rule object rule_c which is invalid:

new AndParameters([rule_a]); since rule_a is valid this will just return the results of rule_a.
new AndParameters([rule_c]); since this AndParameters object only contains invalid rules it is invalid and will be excluded.
new AndParameters([rule_a, rule_b]); this will return any results that meet rule_a and rule_b.
new AndParameters([rule_a, rule_c]); since rule_a is valid but rule_c is not, this will return the results of rule_a.

The final level is made of a single JsonRequest object which is made of an array of AndParameters objects. For a value to be returned by the database it must meet all the criteria for at least one of the AndParameters. If there are no valid AndParameters the user receives an error message. Lets take a look at some examples where we have 2 valid AndParameters: params_a, and params_b and a third invalid AndParameters: params_c.

new JsonRequest([params_a]); since params_a is valid this will just return the results of params_a.
new JsonRequest([params_c]); since this JsonRequest object only contains invalid AndParameter it is invalid and will return an error message.
new JsonRequest([params_a, params_b]); this will return any results that meet params_a or params_b.
new JsonRequest([params_a, rule_c]); since params_a is valid but params_c is not, this will return the results of params_a.

Now that you know how to build a JsonRequest you can modify the lines labeled: **BUILD YOUR JsonRequest BETWEEN THESE COMMENTS** in the client.js file to suit your needs. Once you have set up the JsonRequest how you want simply restart the client.js script with the **node client.js** and your new query will be sent to the API.


## 4. Notable Features

## 5. Open Issues

## 6. Technical Notes