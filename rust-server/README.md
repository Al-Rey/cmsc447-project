# Rust-Server API README

## Table of Contents
1. [Introduction](#1-introduction)
2. [Getting Started](#2-getting-started)
3. [Notable Features](#3-notable-features)
4. [Open Issues](#4-open-issues)
5. [Technical Notes](#5-technical-notes)

## 1. Introduction

### Purpose of this Document

This document is designed to inform readers on how to use the rust-server API. Additionally this document provides information that users who would like to create their own forks of this API should be aware of before making any alterations. This is done in order to facilitate a smoother adoption process by pre-empting some obstacles the user would likely encounter otherwise.

### Description of Project

The rust-server API was created to allow users frontend users to make queries to a database in a way that minimizes the attack surface of the database by common threats such as SQL injection. This API provides end users with the ability to make highly flexible and complex queries to the database more so that could be done using tradition HTTP GET requests. Furthermore an end user does not need to have any knowledge of SQL since all SQL operations are abstracted by the API. Further details of how this is achieved can be found in the [Notable Features](#3-notable-features) section.

## 2. Getting Started

### Prerequisites

In order to use this API users will need to have the following software installed on their system:

1. Git (This is needed to clone this repository to your system) [Git Installation Documentation](https://git-scm.com/downloads)

2. the rust compiler (This is needed to build the API.) [Rust Installation Documentation](https://www.rust-lang.org/tools/install)

You will also need to create a GitHub account if you do not already have one. Additonally it is recommended that you have an Integrated Development Environment, commonly referred to as an IDE that provides an integrated terminal or command line interface. If you do not already have one installed you can find a list of popular IDEs [here](https://www.techrepublic.com/article/best-ide-software/).

### How to downlaod and run the API

Once you have the prerequisite software installed on your system it you are ready to download and run the API. You should begin by opening a terminal and navgating to the directory you would like to clone this git repository to. This can be done using the command: **cd** followed by the path to the directory you have chosen. Once there you will clone this repository by entering the command: **git clone https://github.com/Al-Rey/cmsc447-project.git** from there you will be prompted for your GitHub credentials. After providing your credentials the code from this repository will be downloaded to your machine.

Now that you have the source code on your machine you will want to navigate to the rust-server directory of the project. to do this enter in: **cd cmsc447-project/rust-server** if you are on Linux or **cd cmsc447-project\rust-server** if you are on Windows.

The final step is to build and run the API. To do this enter the command: **cargo run**. This will automatically download the needed dependencies and compile the API. Once it is done compiling, the API will begin running. At this point the API will run until the interupt command is given, in most terminals the interupt command is given by pressing the **control** key and the **C** key simultaneously, but it may be different depending based on your system.

Now that the API is running you can send it commands using the **client.js** script located in the **jsclient** directory of this project. For information on how to use that script please refer to it's README document.

## 3. Notable Features

## 4. Open Issues

## 5. Technical Notes