---
id: AngularJS
title: AngularJS
sidebar_label: AngularJS
---

# ANGULAR #

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
    <script type="text/javascript" src="Angular1.js"></script>

    {{  VariableName }}	# Dynamische Variable aus dem Controller 

## CONTROLLER

    app = angular.module('app1', [])
    app.controller('ctrl1', function($scope) {

        $scope.modul = {	# Object
            name: "Mathe",
            credit: 2,
            note: 3
    };

    $scope.variable = 0;	// Variable

    $scope.handleAdd = function (name, credit, note) {  # inputs unnötig
        $scope.module.push(angular.copy($scope.mod));
    }
    });

#####################################################################################

## ng-repeat #

    <tr ng-repeat=”x in module”></tr>

    <td>{{ x.name }}</td>
    <td>{{ x.credit }}</td>
    <td>{{ x.note }}</td>
    </tr>

#####################################################################################

## DIRECTIVE #

In HTML:

    <table-row m=”x” >  </table-row>	# x ist Variable im Controller die zum Directive übergeben wird
    # ODER
    <div table-row=””>    </div>

    app.directive('tableRow', function(){ # Name tableRow in HTML -> table-row!
    return {
        templateUrl: 'Directive.html',	# zusätzliche HTML-Datei
        restrict: 'EA', 	# 'A' macht Elemente in HTML-Tags oder 'E' macht eigene HTML-Tags
        scope:true,         # verschiedene Scopes und Variablen, jedes Element bekommt eigenes scope wird Vererbt

    scope: {
        modul: '=m',   
                            # modul: das was in der directive angezeigt wird; '=mod' istdas HTML-Attribut; die Variable im Controller die ins Directive übergeben wird kommt in HTML m='VariableName'
            test: '=test', 
            onDelete: '&'	# für Funktion im Directive
        },

        link: function (scope) {

            scope.delete = function() {
                scope.onDelete();
            };
        scope.rgb.r = 255; # Überschreibt andere Werte

        } 
    };
    });


#####################################################################################

# Scope #

- Direcetive with Isolated scope  vs.   No scope
    - When the directive has no scope it shares the same scope as the controller?

- How can you call a directive function from the controller?

Create a control Object in the Directive.js

    scope: {
        control: ‘=‘
    }

# Im link: function
	scope.controlObject = scope.control || {};
	scope.controlObject.test = 1;
	scope.controlObject.func1 = function () {
		…
    }

# Im Controller:

    $scope.dirFunc = {};

Im Main HTML:

    <div directive-name=‘‘ control=‘dirFunc‘>  <div>

Nachdem die directive geladen ist kann man dann machen:

    $scope.dirFunc.func1();


#####################################################################################

# Factory / Service / Provider #

- Service ist quasi nur ein Konstruktor und erstellt ein Objekt
- Factory ist nur eine Funktion die aufgerufen wird


- Einfügen als eigene Datei:

index.html:

    <script src="js/factory1.js"></script>
    # Ctrl.js
    app = angular.module('starter.controllers' , ['factory1'])
    app.controller(‘Ctrl1‘ function( …, factory1) {
    … });
    # Factory.js
    angular.module('factory1', [])
    .factory('factory1', function($http, $cordovaGeolocation, $rootScope, $state) {
    Var variable = 1;
    Var f = function () { … };
    return {
        sayHello: function () {
            console.log(„Hello World“);
        },	# Komma hier !
        sayBye: function () {
            console.log(„Bye“); }
    }

Service.js:

    angular.module('service1', [])
    .service("service1", function() {
        this.sayHello = function () {
            console.log("hello");
        };
    });

Service geht, wenn man will auch so nur als return Funktion:

    return {
        sayHello: function () {
            console.log(„Hello World“);
        };
    };

Eigene Methode in einer Factory aufrufen mit:

    this.functionName();

- Service ist besser mit ES6 sonst kann man eigentlich beides benutzen
- Oft nur Factory, wo man oben oberhalb von return sachen definieren kann 


#####################################################################################

# $apply #

Wenn eine $scope Variable erst nach dem laden geändert wird, dann wird diese nicht mehr auf dem View des Nutzers angezeigt. Mit $scope.apply(); kann man die Seite aktualisieren, sodas die $socpe Variablen nach neuem Value überpfüft warden.

    $scope.apply();
-> Ruft $digest() auf


#####################################################################################


#####################################################################################









