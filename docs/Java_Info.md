---
id: Java
title: Java
sidebar_label: Java
---

# Table of Contents

- [Table of Contents](#table-of-contents)
- [Libraries](#libraries)
- [Imports](#imports)
- [Loops](#loops)
- [Public, Private, Protected](#public--private--protected)
- [Functions](#functions)
	- [Annonymous Function](#annonymous-function)
	- [Call by Value](#call-by-value)
	- [Call by Reference](#call-by-reference)
- [Classes](#classes)
- [Inheritance](#inheritance)
- [Interface](#interface)
- [Enum](#enum)
- [Final](#final)
	- [Constant](#constant)
	- [Final Function](#final-function)
- [Static](#static)
	- [Static Variable](#static-variable)
	- [Static Method](#static-method)
- [Array](#array)
	- [Array Fill](#array-fill)
	- [Find specific Value](#find-specific-value)
	- [Multidimensional](#multidimensional)
- [Lambda](#lambda)
- [Sort](#sort)
- [List / Collection](#list---collection)
- [Override](#override)
- [Synchronized](#synchronized)
- [withdraw](#withdraw)
- [Random](#random)
- [Threads](#threads)
- [GUI](#gui)
- [Maven](#maven)
	- [Lifecycle-Phases](#lifecycle-phases)
	- [Eclipse / Intellij](#eclipse---intellij)
	- [Create a Project](#create-a-project)
	- [Build the Project](#build-the-project)
	- [Start Java File](#start-java-file)

###########################################################################

IF Abfrage Abkürzung

- TODO

###########################################################################

Value Type (Int, long, float, char) vs Reference Type (String, JFrame, ClassName)


###########################################################################
# Libraries #

	java.lang
	java.util
	java.io
	java.util.regex
	java.text
	java.sql
	java.net
	java.util.concurrent
	java.util.concurrent.locks
	java.util.concurrent.atomic
	javax.servlet
	javax.servlet.http
	java.lang.reflect
	java.nio
	java.nio.channels
	java.nio.charset
	javax.swing
	java.awt
	java.awt.event
	org.xml.sax
	org.w3c.dom
	javax.xml.parsers
	javax.naming

###########################################################################

# Imports

	package ...

	import java.util.*;

###########################################################################

# Loops

	int[] x = new int[10];

	for (int i = 0; i < x.length; i++) {
		System.out.println(x[i]);
	}

	for (int i : x) {
		System.out.println(i);
	}

###########################################################################


# Public, Private, Protected

Public:

- available everywhere

Private:

- only available inside the class

Protected:

- available to any Class as well as any Subclasses that you create


###########################################################################

# Functions

TODO

## Annonymous Function



## Call by Value

- like in Javascript, Python, a function always calls by value given a normal value
- if the input parameter is complex, e.g. array or object, it gets called by reference


	public static void plus1(int a) {		// Call by Value
		a++;
	}

## Call by Reference

	public static void plus1(int [] a) {	// Call by Reference as Array Input
		a[0]++;
	}

###########################################################################

# Classes

	public class Warrior {

		protected String name = "Warrior";
		public int health = 0;

		// Constructor

		public Warrior () {

		}

		// Override
		public Warrior (String name) {
			setName(name);
		}

		// Setter
		public void setName(String name) {
			this.name = name;
		}

		//Getter
		
		public String getName() {
			return name;
		}
	}


###########################################################################

# Inheritance

class Cat extends Animal {

	// Now Cat has all the attributes and Methods of the Animal Class

	public Cat (name, food) {

		super(name);			// Calls the Animal Constructor and inserts the name
		this.food = food;		// Now handle all the specific variables for Cat
	
		super.AnimalFunction();	// Calls a function or a variable from the "Super-Class" meaning one Class higher
	}
}

IN MAIN:

Animal a1 = new Animal('name');			// Instance of Animal
Animal a2 = new Cat ('name', 'food');	// Instance of Cat

###########################################################################

# Interface

// Interface show only the general construct how the Class has to be build e.g. it should have 


public interface Animal {
    public int y = 2;

    public int eat();
	public void sleep();
}

// Implements Animal means it has to have the functions Eat and Sleep (Abstract Functions)
class Pig implements Animal {

	public void sleep () {
		System.out.println("Zzz");
	}

	public void sleep () {
		System.out.println("Zzz");
	}
}


## Abstract

- Abstract classes are similar to interfaces
- Abstract Classes cannot be instantiated, but they can be subclassed

	abstract void moveTo(double deltaX, double deltaY);

If a class includes abstract methods, then the class itself must be declared abstract, as in:


###########################################################################

# Enum

Enum erstellen (wie Class)


	public Enum Tage {

		Monday(1),
		Tuesday(2);

		private int zahl;

		Tage(int z) {
			this.zahl = z;
		}

		public int getZahl() {
			return zahl;
		}
	}

IN MAIN -> Tage t = Tage.Monday;  (kein NEW !!!)

###########################################################################

# Final

## Constant

- final x = 5
- then you can't reasign the variable value

## Final Function

- cannot be overridden by a subclass
- e.g. If a Function inside the Animal Class is final, it cannot be changed/overridden in the Cat/Dog Class 

# Static

## Static Variable

- doesnt exist ?
- rather use final for a variable

## Static Method

- belongs to the Class, not to any Object of the Class
- meaning if you want to use you have to create an Object first, if it isn't Static
- if it is a Static Method, you can call it without creating an Object

###########################################################################

# Array


	int[] x = new int [10];

	int [] x2 = {1, 2, 3};
	String [] x3 = {"asd", "bca"};   

## Array Fill

	import java.util.Arrays;
	Arrays.fill(x, 2);		// Fills the Arrays with Value 2

## Find specific Value

	Arrays.binarySearch(arrayName, value);

## Multidimensional

	int [][] array = new int [2][2];
	
	int [][] array = { {1, 2}, {3, 4}, {5, 6} };
	
	System.out.println(array[2][1]);	// => 6


###########################################################################

# Lambda

-> 

TODO

###########################################################################


# Sort

	int [] sortArray = {3, 2, 1};
	Arrays.sort(sortArray);
	System.out.println(Arrays.toString(sortArray));

###########################################################################


# List / Collection #

	List<String> list1 = new ArrayList<String>(20);
	list1.add(x);

	List<Integer> list2 = new ArrayList<Integer>(Arrays.asList(1, 2, 3, 4));
	list2.add(5);
	

###########################################################################

# Override

		// Constructor
		public Warrior () {

		}

		// Override
		public Warrior (String name) {
			setName(name);
		}

###########################################################################

# Synchronized

- TODO

###########################################################################

# withdraw

- TODO

###########################################################################

# Random

int min = 1;
int max = 5;
        
int rand = (int)(Math.random() * (( max - min) + 1));

###########################################################################

# Threads #

	import java.util.*;

	class Class_Name implements Runnable {

		String name;
		int time;
		Random r = new Random();

		public Class_Name(String x) {  // Konstruktor
			x = name;
			time = r.nextInt(999);
		}
		
	}

	class Main {

	Thread t = new Thread("thread1"); // Konstruktor aufruf

	t.start();

	}


###########################################################################

# GUI #

	import javax.swing.JFrame;

	private JFrame frame;

	frame = new JFrame(title);
	frame.setSize(width,height);
	frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	frame.setVisible(true);

-> main



###########################################################################


# Maven

https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html

- Build Management Tool
- defines how your .java File gets compiled

Why use it?

- downloads all Libaries necessary
- ...

## Lifecycle-Phases

- validate
- compile
- test
- package
- integration-test
- verify
- install
- deploy

Additional:  
- clean
- site

## Eclipse / Intellij

- ???

## Create a Project

> mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false

- creates src Folder with main und test

## Build the Project

> mvn package

creates target folder

## Start Java File

> java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App


