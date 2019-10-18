---
id: React
title: React
sidebar_label: React
---

# React

https://www.youtube.com/watch?v=Ke90Tje7VS0


# TODO

- click button for show/not show
	- do i always have to create the dom element new?
- http request


# Install

- npm i npx
    # npm i create-react-app

Create node_modules:
- npm install

## Install Bootstrap

- TODO
	
# Information

File name:

> fileName.jsx

    with this you can have DOM-Elements like <button>Click</button> as a Javascript object, pass them in functions and everything

## Lifecicle

- use of components

# Basics

## Create Project

    npx create-react-app <app-name>

## Start Project

Start:
- npm start

## Create Component
	
1. Class Component
- requires render() function

2. Functional Component / Stateless Component
- no setState() function / no "state"

	// MAIN - App.js
	import Counter from "./components/counter";

	in return:

		<Counter></Counter>

1. export Class , js File ???

	// FileName => counter.jsx
	import React, { Component } from 'react';

	export default class Counter extends Component {
		
		state = {
			count: 3,
		};

		render () {

			return (<div>Hello World</div>);
		}
	}

2. export default App ,  jsx File ???

	import React from 'react';

	function App() {
	  return (
	    <div>
	        Hello
	    </div>
	  );
	}

	export default App;


# Debugger

- React Developer Tools		Chrome or Firefox Extension

# if
- 

# for

- do map function to do something on every element of array
	
	return <ul> {this.state.tags.map(tag => <li key={tag}>{tag}</li>)} </ul>

# THIS

- if you want to use this inside a Function, make the function an Arror-Function
- or 

    constructor() {
        super();    // Has to be called if this class is extented // calls constructor of super class
        this.handleIncrement = this.handleIncrement.bind(this); // Bind this to the Function
    }
	
OR just do Arrow Function:
- arrow function with Parameters:

	onCLick= { () => this.handleIncrement( { id: 1} ) }

State Changes

- you cant just change a variable and see it on the page like in Angular
- Use:
	
	this.setState({ count : this.state.count + 1 });
	
	
# Passing Data throught Components

## 1. From Parent Component

- through Attribute of the Component-DOM

In Main:

	<Counter key={k} value={v} selected={true}/>

INSIDE Component:

	this.props.value
	

## 2. Call a Function from another Component

in Main:

    handleDelete = () => {

    };

	<Counter onDelete={this.handleDelete}/>

in Component:
	
	<button onClick={this.props.onDelete()}>Delete</button>
	
	
## 3. From non-parent Component, if the 2 Comps have no relations

- "lift up" the component - Lift the State
	
# Pass to Child

In Main:

	<Counter key={counter.id} value={counter.value} selected={true}>

		{/* Add Title dynamically for every Counter Component  */}
		<h4>Counter #{counter.id}</h4>
	</Counter>
	
In Component:

	{this.props.children}
	
	
# Removing the Local State

- when you call a function that also changes another Component, the changes dont get updated in the DOM, because variables are saved locally in the Component

-> Create a controlled component, that has no State, but is completely controlled by its parent Component


# lifecycle states

- 3 lifecycle states

1. Mount
	1. constructor()
		- change state variable
	2. rendered()
		- here DOM-Elements will be rendered to the screen
	3. componentDidMount()
		- for Ajax calls, and getting Data from a Server
		- http requests ???
	
2. Update
	1. render
	2. componentDidUpdate
	
3. 	UnMount
	1. componentWillUnmount


# Sonstiges

- Comments
{/* A JSX comment */}



