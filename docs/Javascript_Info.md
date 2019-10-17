# Table of Contents

- [Table of Contents](#table-of-contents)
- [Npm](#npm)
  - [Create package.json File](#create-packagejson-file)
  - [Global installation](#global-installation)
- [Script Links](#script-links)
- [ES6 Features](#es6-features)
- [Var vs. Let vs. Const](#var-vs-let-vs-const)
  - [Var](#var)
  - [Let](#let)
  - [Const](#const)
- [Classes](#classes)
  - [Inheritance](#inheritance)
- [This, Bind, Call, Apply](#this-bind-call-apply)
  - [Bind](#bind)
- [Copy](#copy)
- [Closures](#closures)
- [Conditionals](#conditionals)
  - [If](#if)
  - [If Short](#if-short)
- [Loops](#loops)
  - [For](#for)
  - [While](#while)
  - [Do while](#do-while)
- [Iterator](#iterator)
- [Funktionen](#funktionen)
  - [Or](#or)
  - [Short Version (with return)](#short-version-with-return)
  - [var asd = function () {} vs. fucntion asd () {}](#var-asd--function---vs-fucntion-asd)
  - [Annonyme Funktion](#annonyme-funktion)
- [Array / Object / Map / Set](#array--object--map--set)
  - [Array](#array)
  - [Object](#object)
  - [Map](#map)
  - [Set](#set)
- [Call by Value vs. Call by Reference](#call-by-value-vs-call-by-reference)
- [Mapping](#mapping)
  - [Short:](#short)
  - [Long:](#long)
- [Every](#every)
- [Join](#join)
- [Filter](#filter)
- [Sort Array](#sort-array)
  - [Sort by specific Value](#sort-by-specific-value)
  - [Sortierung nach Wert](#sortierung-nach-wert)
  - [Sortierung nach Name](#sortierung-nach-name)
- [Include - Import / Export](#include---import--export)
  - [File 1: Export](#file-1-export)
  - [Export Class](#export-class)
  - [File 2: Import](#file-2-import)
- [Math](#math)
- [Try - Catch](#try---catch)
- [Overloading](#overloading)
- [User Input](#user-input)
- [Events](#events)
- [Callbacks](#callbacks)
- [Promises](#promises)
  - [Promise All](#promise-all)
  - [Inside a Function](#inside-a-function)
- [Async / Await](#async--await)
- [Web Workers](#web-workers)
- [Local Storage](#local-storage)
- [String Manipulation#](#string-manipulation)
  - [Strings with Variable](#strings-with-variable)
  - [Substring](#substring)
  - [Repeat](#repeat)
- [Clean Function with multiple Parameter](#clean-function-with-multiple-parameter)
- [Interface](#interface)
- [Read and Write Files](#read-and-write-files)
- [JSON](#json)
- [Http-Request / API Call / Fetch](#http-request--api-call--fetch)

# Npm

- install globally
- Mac:  export NODE_PATH=/usr/lib/node_modules
- Windows: set global /node_modules/ folder to your environmental Variable

## Create package.json File

- npm init

- npm install <package> --save
  - Writes the installed packages inside package.json

npm install
- looks at package.json File and installs node_module dependencies

## Global installation

Only use it for specific packages, that you can run with CMD, nothing that you need to import with "require"

Path:
    Windows:
        C:\Users\andre\AppData\Roaming\npm

    Linux:
        
Examples:
    - npm install jshint -g
      - jshint <filename>
    - npm install nodemon -g
      - nodemon <filename>

- npm install jshint -g


# Script Links

CSS

    <link rel="stylesheet" type="text/css" href="Test.css">

Javascript

    <script type="text/javascript" src="Angular1.js"> </script>

Jquery

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

AngularJS

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"> </script>

BOOTSTRAP

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

######################################################################################

# JSDoc - Documentation - Dokumentation

/**
 * Returns the sum of a and b
 * @param {number} a
 * @param {number} b
 * @returns {number}
 */
function sum(a, b) {
    return a + b;
}


# ES6 Features

- let, const
- Arrow Functions
- Classes
- Enhanced Object Literals
- String interpolation
- Destructuring
- Default
- Spread
- Spread + Object LiteraArrowls

# Var vs. Let vs. Const

The difference is scoping. var is scoped to the nearest function block and let is scoped to the nearest enclosing block, which can be smaller than a function block. Both are global if outside any block.

## Var

## Let

let is only visible in the for() loop and var is visible to the whole function.
	for( let i = 0; i < 5; i++ )

Let can be used in closures

The purpose of Let is to free up memory when not needed in a certain block


## Const

unveränderbare Variable (Konstante)
	
######################################################################################

# Classes #

    var apple = {
        type: "macintosh",
        color: "red",
        
        getInfo: function () {
            return this.color + ' ' + this.type + ' apple';
        }
    }

    class Rectangle {
    constructor(height, width) {
        this.height = height;
        this.width = width;
    }
    }

## Inheritance

    Animal = function (age, name) {
        this.age = age;
        this.name = name;
    };

    Cat = function (age, name, catFood) {
        Animal.call(this, age, name);
        this.catFood = catFood;
    };

Funktionen können auch im Konstruktor sein oder außerhab mit „prototype“

    Cat.prototype.walk = function () {
        # do something
    }

Für inheritance braucht man dann:

    Cat.prototype = Object.create(Animal.prototype);

######################################################################################

# This, Bind, Call, Apply

    var context = {
        name: "Tom"  
    };
    
    function func1(param1, param2)
    {  
        return param1 +' '+ this.name + param2;   
    }
    
    // Bind
    var neueFunktion = func1.bind(context, "Hallo", "!");
    console.log( neueFunktion() );

	//Example:
	
	var funcs = {};

	for (var i = 0; i < 3; i++) {

	  var t = 5 + i;

	  funcs[i] = function(x) {
		
		console.log('Binded value: ' + x);      // Binded
		console.log('Non binded value: ' + t);  // Not Binded
		
	  }.bind(this, i);
	}
	for (var j = 0; j < 3; j++) {
	  funcs[j]();
	}
	
    // Call
    console.log( func1.call(context, "Hallo", "!") );

	// Example:
	
	var funcs = {};

	for (var i = 0; i < 3; i++) {

	  var t = 5 + i;

	  funcs[i] = function(x) {
		
		console.log('Binded value: ' + x);      // Binded
		console.log('Non binded value: ' + t);  // Not Binded
		
	  }.call(this, i);
	}
	
    // Apply
    console.log( func1.apply(context, ["Hallo", "!"]) );

    // Ausgabe: Hallo Tom!

## Bind

Example:

Zähle von 1-10 in 10 Sekunden


    function count ( i, max= 10) {

        console.log(i);
        if( i++ >= max) return ;
        setTimeout(count.bind(this, i), 1000);
        //setTimeout( function() { count(i); }, 1000 );
    }

    /* 
    count.bind(this, i);
    =>
    function () {
        count(i);
    }
    */

    count(0);

######################################################################################

# Copy

Create Copy:

    var q = {age:10, 'profile.country': 'india'};
    var duplicateQ = Object.assign({}, q);
    delete duplicateQ['profile.country'];

OTHERWISE this Error can occur:

    var q = dublicateQ;             # This doesnt create a copy, only a reference!
    delete dublicateQ.country;      # This thereby also removes the q.country not only dublicateQ.country


# Closures

Closure ist ein abgeschlossener Bereich, Funktion innerhalb einer Funktion, der Referenzen behält und zurückgegeben werden kann.

"A closure in JavaScript is like keeping a copy of all the local variables, just as they were when a function exited."

	https://stackoverflow.com/questions/111102/how-do-javascript-closures-work?rq=1
	
	var gLogNumber, gIncreaseNumber, gSetNumber;  // nicht zwingend nötig aber hilfreich um zu erläutern, dass es nach setupSomeGlobals() globale Variablen sind

	function setupSomeGlobals() {
	  // Local variable that ends up within closure
	  var num = 42;
	  // Store some references to functions as global variables
	  gLogNumber = function() { console.log(num); }
	  gIncreaseNumber = function() { num++; }
	  gSetNumber = function(x) { num = x; }
	}

	setupSomeGlobals();
	gIncreaseNumber();
	gLogNumber();       // 43
	gSetNumber(5);
	gLogNumber();       // 5

	var oldLog = gLogNumber;

	setupSomeGlobals();
	gLogNumber(); // 42

	oldLog(); // 5
	
######################################################################################

# Conditionals

## If

    if (x == 2) {
        doSomething();
    }
    else if {
        doElseIf();
    }
    else {
        doElse();
    }

## If Short

    if (x == 2) { return 1; }
    else        { return 2; }

Same thing in Short:

    (x == 2) ? 1 : 2;

######################################################################################

# Loops #

## For

    for (var i = 0; i < 5; i++) {
        console.log(i);
    }


    for (var i in array) {
        console.log(array[i]);
    }


## While

    while (x > 0) {
        console.log(x);
        x--;
    }

## Do while

    do {                    # Always calls the function once
        console.log(x);
        x--;
    } while (x > 10);

# Iterator

    const makeIterator = (someArray) => {
        let nextIndex = 0;
        return {
        next: () => {
            if (nextIndex < someArray.length) {
            return {
                value: someArray[nextIndex++],
                done: false
            };
            }
            return {
            done: true
            };
        }
        };
    }

    const iterator = makeIterator([1, 2, 3]);

    let result = iterator.next();
    console.log(result);    // 1

######################################################################################

# Funktionen #

    var log = function(message) {
        console.log(message);
    }

## Or

    var doLog2 = (message) => {
        return console.log(message);
    }

## Short Version (with return)

    var doLog = (message) => console.log(message);

## var asd = function () {}  vs.  fucntion asd () {}

1. Is a Variable and can only be called after it has been declared (underneath)

Code:

    asd();  # Error
    var asd = function () {}
    asd();  # Works


2. Is already visible even above its definition

Code:

    asd(); # Works
    function asd () {}
    asd(); # Works


## Annonyme Funktion #

    function () {
    # doSomething();
    }

- Funktion ohne Namen die sofort und nur einmal ausgeführt wird
- Kann so als Parameter übergeben werden

######################################################################################

# Array / Object / Map  / Set

## Array

    var arr = [1, 2, 3];

    arr.forEach ( (num) => {
        console.log(num);
    });

    arr.push(1);

    arr.pop();  // Delete Last Element

    arr.splice( start, numOfDeletedElements, replacementObject);
    arr.splice( 0 , 1);     // Delete First Element
    arr.splice( 1 , 2);     // Delete Second and Third Element 
    arr.splice( 0, 1, 4);   // Deletes and replaces the first Element with a 4

    arr.slice(start, end);
    arr = arr.slice(2, 4);  // Returns the 3. and 4. Element of the Array

    arr.sort(); // Siehe unten "Sort-Array" für weitere Möglichkeiten

## Object

    var object = { 
        x : 5,
        testFunc : function() { console.log("test Now"); },
        y : 8
    };

## Map

    var map1 = new Map();
    map1.set('dog', 'woof');    // Key = 'dog', Value = 'woof'
    map1.set('cat', 'meow');

    map1.get('dog');   // returns 'woof'. Get the Value of the Key 'dog'

    console.log( map1.key );    // Show all available Keys

## Set

Sets cannot contain 2 identical Variables at the same time.


    var set1 = new Set([1, 2, 3]);

    set1.add(4);    // Adds the Value 4
    set1.delete(2); // Finds and deletes the Value 2, no matter where it is
    set1.clear();   // Delete all Values
    set1.size;

    Set to Array:

    1. arr = [...set1];
    2. arr = Array.from(set1);

######################################################################################

# Call by Value vs. Call by Reference

Call by Reference in Javascript only works with Arrays or Objects.

Normal Variables get treated with Call by Value and won't keep a change that is made inside a function.

######################################################################################

# Mapping #

=> do something for all Elements inside an Array

    var array1 = [1, 4, 9, 16];

## Short:
    const map1 = array1.map( (x) => x + 2);

## Long:
    const map1 = array1.map( function (x) {
        return x+2;
    });

    console.log(map1);  # => [2, 8, 18, 32]


Sqrt on every Element of an Array:

    map2 = array1.map(Math.sqrt);


######################################################################################

# Every #

    function isBelowThreshold(currentValue) {
    return currentValue < 40;
    }

    var array1 = [1, 30, 39, 29, 10, 13];

    console.log(array1.every(isBelowThreshold));
    # expected output: true

######################################################################################

# Join #

    var elements = ['Fire', 'Wind', 'Rain'];

    console.log(elements.join());
    # expected output: Fire,Wind,Rain

    console.log(elements.join(''));
    # expected output: FireWindRain

    console.log(elements.join('-'));
    # expected output: Fire-Wind-Rain

######################################################################################

# Filter #

    var words = ['spray', 'limit', 'elite', 'exuberant', 'destruction', 'present'];

    const result = words.filter(word => word.length > 6);

    console.log(result);
    # expected output: Array ["exuberant", "destruction", "present"]

######################################################################################

# Sort Array #

    var array = [2, 5, 1];

    array.sort();               # => [1, 2, 5]
    array.sort( (a,b) => a+b ); # => [5, 2, 1]

## Sort by specific Value

    var items = [
    { name: 'Edward', value: 21 },
    { name: 'Sharpe', value: 37 },
    { name: 'And', value: 45 },
    { name: 'The', value: -12 },
    { name: 'Magnetic' },
    { name: 'Zeros', value: 37 }
    ];

## Sortierung nach Wert
    items.sort(function (a, b) {
    if (a.value > b.value) {
        return 1;
    }
    if (a.value < b.value) {
        return -1;
    }
    # a muss gleich b sein
    return 0;
    });

## Sortierung nach Name
    items.sort(function(a, b) {
        var nameA = a.name.toUpperCase(); # ignore upper and lowercase
        var nameB = b.name.toUpperCase(); # ignore upper and lowercase
        if (nameA < nameB) {
            return -1;
        }
        if (nameA > nameB) {
            return 1;
        }

        # namen müssen gleich sein
        return 0;
    });


######################################################################################

# Include - Import / Export #

## File 1: Export

    module.exports = {

        x: 10,
        
        testFunction: function () {
            return 1;
        },

    }

## Export Class

    Class Item {
        constructor () {
            console.log("hello");
        }
    }

    module.exports = Item;

## File 2: Import

    var file = require('./fileOne');	# This file is in the same folder

    file.testFunction();

######################################################################################

# Math

    Math.sqrt(4)
    > 2
    
    Math.max(...[1, 4, 3])
    > 4

######################################################################################

# Try - Catch #

    try {
        someFunction();	// If this function would return an error, it switchest o the catch
    }
    catch (err) {
        console.log(err);
    }

######################################################################################

# Overloading #

    function CatStrings(p1, p2, p3)
    {
    var s = p1;
    if(typeof p2 !== "undefined") {s += p2;}
    if(typeof p3 !== "undefined") {s += p3;}
    return s;
    };

    CatStrings("one");        // result = one
    CatStrings("one",2);      // result = one2
    CatStrings("one",2,true); // result = one2true


######################################################################################

# User Input #

    var stdin = process.openStdin();

    stdin.addListener("data", function(d) {

    console.log("you entered: [" + d.toString().trim() + "]");

    });


######################################################################################

# Events #

Dom on-Event handlers:

    var boxes = document.getElementsByClassName("box");

    for( var i = 0; i < boxes.length; i++) {
        boxes[i].addEventListener("mousemove" , function(e) {
            console.log(this);
            this.style.backgroundColor = "green";
        });
    }

- Mousemove
- Mouseover
- Mouseout
- Click
- Resize

Event Listener übernimmt die Variable nicht, ist immer der letzte Wert aus der schleife

-> in Funktionen Kapseln (Encapsule)

e.g.

    (function(i) {

        google.maps.event.addListener(marker[i], 'click', function () {    
            info.open($scope.map,this);
        });
    }(i));

	// eventuell mit .bind(this, i) machen???
	
######################################################################################

# Callbacks #

Funktion als Parameter, damit die zweite Funktion synchron nach der ersten kommt. Hilft z.B. bei Angular/NodeJS, wo alles asynchrony läuft.

    var functionOne (callback) {

    doSomethingFirst();
    if (callback) callback();
    }

 ## Call Function
    functionOne( function () {
    
    doSomethingAfter();
    
    })

    if(callback) {
    callback();        # Callback Funktion ausführen, wenn man hier ist und


######################################################################################

# Promises #

- Für asynchrones Verhalten, damit kein Callback-Hell entsteht
- Quasi Callbacks mit return-Funktion
- Wenn man beim resolve angekommen ist, dann kommt alles nach dem .then hinter dem Promise. Wie ein return mit Rückgabeparameter

-> Siehe 1. Javascript/Async/Promises.js

    function func1 () {
        return new Promise((resolve, reject) => {
            setTimeout(() => {
                // Do Something
                resolve(someObject);
            }, 1000);
        });
    }


## Promise All

Creates an Array of Promises, which all work simultaniously, but then waits until all.
So you can call a function after all Promises finished.
This is not all Promises working one after another! 

    function eins (x) {
        return new Promise ( (res, rej) => {
            setTimeout ( () => { console.log("eins");    res(); }, 2000);
        } );
    }
    function zwei (x) {
        return new Promise ( (res, rej) => {
            setTimeout ( () => { console.log("zwei");    res(); }, 100);
        } );
    }
    function drei (x) {
        return new Promise ( (res, rej) => {
            setTimeout ( () => { console.log("drei");    res(); }, 1000);
        } );
    }

    promises.push(eins());
    promises.push(zwei());
    promises.push(drei());

    Promise.all( [eins, zwei, drei] ).then( (m) => { console.log("End"); console.log(m); } );
    // Output:  zwei, drei, eins

## Inside a Function
var f1 = function () {

    return new Promise ( (res) => {
        // ...
    });
}

######################################################################################

# Async / Await #

Async Function can say "await", which recognizes that an function is coming up that takes some time and that the code should be waiting for. Everything after the await therefore will be called after the  function of await.

    async function test1 () {
        await async1();
        await async2();
        testFunction();
    }

    function async1 () {
        return new Promise((resolve, reject) => {
            setTimeout(() => {
                console.log("async1");
                resolve('resolve 1');
            }, 2000);
        });
    }

    function async2 () {
        return new Promise((resolve, reject) => {
            setTimeout(() => {
                console.log("async2");
                resolve('resolve 2');
            }, 1000);
        });
    }

    function testFunction () {
        console.log("testFunction");
    }

    test1();

E.g. Count up to 10 in 10 Seconds:

    function plus1 (x) {
        return new Promise ( (res, rej) => { 
        setTimeout ( () => { console.log(x); res(x+1);  }, 1000);
        } );
    }

    async function do1 ()  {

        var now = 1;
        for (var i = 1; i < 10; i++) {
            now = await plus1(now);
        }
        console.log(now);
    }

    do1();

######################################################################################

# Web Workers #

- Real Multithreading for Javascript. One Thread for each Core
- Funktioniert nicht in Chrome nur Firefox

Create Worker:

    var worker1 = new Worker('worker.js');

    (new JS file – worker.js):

    onmessage = function(e) {
        if(e.data != undefined) {
        console.log("hello: "+e.data*2 );
        postMessage({  result: e.data*2 });
        }
    };

Post Message:

    worker1.postMessage(2);

Was tun: onMessage -> Catch Result:

    worker1.onmessage = function(e) {
    console.log("Result: "+e.data.result);
    };

    worker1.terminate();	# close worker from Main Thread
    close();				# worker closes itself


######################################################################################

# Local Storage #

    localStorage.setItem("r","Rot");    # Key = "r"; Value = "Rot"
    localStorage.r;                     # Gibt Value aus der den Key "r" hat
    localStorage.getItem("r");  	    # wie ein drüber gibt Rot aus
    localStorage.key(0);                # Gibt Key aus, der an der Stelle 0 im Array

    for (i=0; i<localStorage.length; i++) {
        alert(localStorage.getItem(localStorage.key(i)));   
        # Geht durch gesamten LocalStore und gibt alle Values aus
    } 

    localStorage.clear();

# Session Storage

- TODO

# Cookies

Cookies are stored with key=value

    document.cookie = "key=value";
    
Get Coockie by Key Name:

    function getCookie(name) {
        var value = "; " + document.cookie;
        var parts = value.split("; " + name + "=");
        if (parts.length == 2) return parts.pop().split(";").shift();
    }


Delete:

    // Delete only with Name
    function delete_cookie( name ) {
        document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
    }

    // Delete with Name, Path and Domain
    function delete_cookie2( name, path, domain ) {
        if( get_cookie( name ) ) {
        document.cookie = name + "=" +
            ((path) ? ";path="+path:"")+
            ((domain)?";domain="+domain:"") +
            ";expires=Thu, 01 Jan 1970 00:00:01 GMT";
        }
    }

######################################################################################

# String Manipulation# 

## Strings with Variable

    var test = 2
    console.log(`what ${test}`);

## Substring

    var str = "abc";

    # Param. 1 = Anfangsstelle des Substrings  # Param. 2 = Länge des Substrings
    var substr = str.substr(1,2); #  => bc
    var substr = str.substr(0,1); #  => a
    var substr = str.substr(0,2); #  => ab
    var substr = str.substr(2,1); #  => c
    var substr = str.substr(1,1); #  => b


## Repeat

    var x = "1".repeat(3);  # => "111"

######################################################################################

# Clean Function with multiple Parameter #

    let drawPoint = (a, b, c, d) => {
        ...
    }
    INSTEAD

    drawPoint({
        a:1,
        b:2,
        c:3,
        d:4
    })

######################################################################################

# Interface #

USE INTERFACE (Always use first Capital letter for Interfaces)

    interface Point {
        a: number,
        b: number,
        c: number,
        d: number
    }


######################################################################################

# Read and Write Files

TODO

######################################################################################

# JSON #

    JSON.stringify(data)	# turns a JavaScript object into JSON text and stores that JSON text in a string

    JSON.parse(data)		# turns a string of JSON text into a JavaScript object 

######################################################################################


# Http-Request / API Call / Fetch

1. Ajax (Http GET, Http POST)

    const Http = new XMLHttpRequest();
    const url='https://jsonplaceholder.typicode.com/posts';
    Http.open("GET", url);
    Http.send();

    Http.onreadystatechange = (e) => {
    console.log(Http.responseText)
    }

    - geht auch mit JQuery

    $.get ,  $.post

2. fetch

    const url = 'https://jsonplaceholder.typicode.com/post';

    fetch(url)
    .then( (data) => { return data.json()} )
    .then( res ) => { console.log(res) }

3. Axios
...

4. Angular HttpClient
