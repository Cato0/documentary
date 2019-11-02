Graph QL - Apollo

npm install apollo-angular apollo-angular-link-http apollo-client apollo-cache-inmemory graphql-tag graphql --save


Create Graph QL Server

OR

Use Cloud Server e.g. launchpad.graphQL.com

# GraphQL

## Server

siehe myGithub 1. Javascript / GraphQL / server.js

Goto: http://localhost:4000/graphql

Query:

    query getCoursesForTopic($courseTopic :String!) {
        courses(topic: $courseTopic) {
            title
            author
            description
            topic
            url
        }
    }

Query Variables:

    {"courseTopic": "asd"}

## Client Methods

1. Curl Command

curl -X POST \
-H "Content-Type: application/json" \
-d '{"query": "{ hello }"}' \
http://localhost:4000/graphql


2. It's also simple to send GraphQL from the browser. Open up http://localhost:4000, open a developer console, and paste in:

fetch('/graphql', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  },
  body: JSON.stringify({query: "{ hello }"})
})
  .then(r => r.json())
  .then(data => console.log('data returned:', data));


3. NodeJS
	
	// npm i node-fetch --save
	const fetch = require('node-fetch');

	var courseTopic = "asd";
	var query = `query getCoursesForTopic($courseTopic :String!) {
	  courses(topic: $courseTopic) {
	    title
	    author
	    description
	    topic
	    url
	  }
	}`;

	fetch('http://localhost:4000/graphql', {
	  method: 'POST',
	  headers: {
	    'Content-Type': 'application/json',
	    'Accept': 'application/json',
	  },
	  body: JSON.stringify({
	    query,
	    variables: { courseTopic },
	  })
	})
	  .then(r => r.json())
	  .then(data => console.log('data returned:\n', data.data.courses));