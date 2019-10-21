---
id: Angular2++
title: Angular2++
sidebar_label: Angular2++
---

# Install #

	install npm

	npm i @angular/cli		# Als admin ausführen

#####################################################################################

# Fundamental Concepts


components
dependency injection
binding


# Basic Commands

	ng serve						# Start Server / App
	ng test							# Start all Tests

	ng new appName					# Create New Project
	ng generate component compName	# Create new Component
	ng generate service serviceName # Create new Service

## Erstelle Ionic Project:

	ionic new appName
	ionic generate component compName


######################################################################################

# Neue Komponente / New Component

ng generate componentName
ionic generate componentName

1. als HTML Element einfügen
wird mit dem 'Selector' in HTML angezeigt meist:
- der Selector steht in der Datei "compName.component.ts"

	<app-component-name></app-component-name>

Oder:

	<p app-component-name> Asd </p>

- kann auch umgestellt werden sodass es als Klasse benutzt wird:

<p class="app-component-name"> Asd </p>



1. import in Ts
wo auch immer man die neue Componente einsetzen will muss in die Ts-File:

in app.module.ts Example mit 

Oben:

	import {MatProgressBarModule} from '@angular/material'

in @NgModule

	imports: [ MatProgressBarModule ]


#####################################################################################

# Constructor vs ngOnInit #

- constructor kennt keine HTML Elemente (wird vorher aufgerufen)
- ngOnInit wird nach den HTML Elementen aufgerufen

#####################################################################################

# Directives

- directives are instructions in the DOM
- with or without templates

- directives are usually added by using attribute selector
- directives are components

## Ng-Model (Two-Way-Binding) #

	// Angular 2/3 ?

	<input [value]="variableName" (input)="changeName($event)">

	changeName(ev) {
		this.variableName = ev.target.value;
	}

## ngModel

// Anuglar 5

	<input type="text" [(ngModel)]="name">
	<p>{{ name }}</p>

// Angular 8

	benötigt noch einen Import in app.module.ts

	import { FormsModule } from '@angular/forms';
	@NgModule({
		imports: [
			FormsModule      
		]

#####################################################################################

# ngFor #

- create a List of <p> Elements

<p *ngFor="let i of arrayName">
    For Loop {{i}}
</p>

// arrayName: Array<number> = [1, 2, 3, 4]
Result:
For Loop 1
For Loop 2
For Loop 3
For Loop 4

######################################################################################

# ngIf #

Only displays the Div if the variable "check" is true.
- You can use else, to create a ng-template, that will be displayed if "check" is false

	<div *ngIf="check else noCheck" >
		<p>Hello World</p>
	</div>

<ng-template #noCheck>
    <p >
        No Check to see here. Move on!
    </p>
</ng-template>


######################################################################################

# ngTemplate

- see above, ngIf

######################################################################################

# ngStyle

<p [ngStyle]="{'background-color' : 'red'}">Styling</p>
OR
<p [ngStlye] = "{backgroundColor: getColor()}" >

- second calls a Function getColor, to dinamically change the Background Color

######################################################################################

# ngClass

- dinamically add or remove Classes

######################################################################################


# Ng-Click / Button #

	(click) = "functionName()"


######################################################################################

# TEST #

siehe UnitTest.md

	describe - arguments: Test name , A function

	beforeEach - method that is being fired before each test block

	afterAeach - method that is being fired after each test block

	it - This method executes a function to perform a test operation

	expect - evaluates the result from the test block and performs the asserts statements

	toEqual - compare the actual with the expected result

	beforeAll - this method is executed once in the test block to provide the descripition of the test suits 

######################################################################################

# Communicate between Components #

1. Passing the reference

	...

2. Communication through parent component

	...

3. Communication through Service

with ServiceObject

	import { ServiceNameComponent } from ...

	serviceObject;

	constructor (private serv: ServiceName) {
		this.serviceObject = serv;
	}

	ngInit () {
		this.serviceObject.serviceFunction();
	}

4. Passing the reference

- Sende Daten von Class a zu Class b
- -> Starte eine Funktion von der Klasse B im Konstruktor von A

In app.component.html


	<app-a [object]="bName"> </app-a>
	<app-b #bName> <app-b>

- in a.component.ts
	import { Component, Input, HostListener } from '@angular/core';
	import { B } from '../b/b.component';

-> unter export class A
			
	@Input() object: B;
	
	@HostListener('functionName')
	functionName() {
		this.object.functionName2();
	}


in b.component

	import { Component, HostBinding } from '@angular/core';


-> unter export class B

Attribute:

	something = false;

	@HostBinding('class.something')
	functionName2 () {
		this.something = true;
	}

	
2. Communication through parent component
	

######################################################################################

# Deploy #

ng build --produ

-> Creates dist folder that you can Access

######################################################################################

# Http

## Create HTTP Server

npm install -g http-server

cd into your project folder

"http-server -o"		-o is to open browser to the page

## Http-Request

	import { Http } from '@angular/http';

	this.http.get(url).subscribe( 
		(data) => { ... }
	)

## Https

TODO

######################################################################################


# Observables (Observers)

https://medium.com/@luukgruijs/understanding-creating-and-subscribing-to-observables-in-angular-426dbf0b04a3

- works like a subscription to a newsletter
- the subscriber waits, until the Producer "pushes" some data, then the subscriber will get it and can do something with it

$-Dollar Sign is considered best practice to identify your variable is an observable

e.g.
	public users$: Observable<IUser[]>



During an HTTP-Request

	import { Observable } from "rxjs/Rx"


    public ngOnInit() {
        this.users$ = this.client.fetchUsers()
    }

	fetchUsers returns an Observable, which we assign to the users$
	
	- you have to subscribe to observables


# TODO

- directives
- ngSwitch
- services
- observables, subscriptions