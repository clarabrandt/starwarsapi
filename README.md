# Star Wars funclub
This api gives you the characters of all Star Wars movies and their heights, that can be arranged in ascending or descending order. 

**Getting Started**

These instructions will get you a copy of the project up and running on your local machine for development purposes.

**Requirements**

To run the project you will need Node.js, Docker and npm installed on your environment.

# Project setup

**Git clone repository**

$ git clone https://github.com/clarabrandt/starwarsapi.git

**Got to the directory**

$ cd starwarsapi

**install the dependencies of the project**

$ npm install

**Start**

$ npm init

**Start docker and dump database**

$ docker-compose up -d

# Example

Returns the characters from a Star Wars movie in ascending or descending height order

**URL**

/api/search?q={search_term}&order=DESC | ASC

**Method**

GET

**URL parameters**

**Required**

search_term = string --> it must be a word from a title of a Star Wars movie

order = ASC for ascending height order or DESC for height order of the characters 

**Success Response:**

Code: 200 

Content: { "name" : "Luke Skywalker", "height" : 172,  "name" : "Leia Organa", "height" : 150}

Error Response:

Code: 404 NOT FOUND 

Content: { error : "The force appears not to be with you. Please, choose a different search term." }

