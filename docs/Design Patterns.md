---
id: DesignPattern
title: Design Pattern
sidebar_label: Design Pattern
---

# Design Patterns

# Links

https://github.com/faif/python-patterns

# Singelton
- Allow only a single Instance for a Class
- One global point of access
- It is designed for Classes with only Functions, rather than Attributes


    public class ClassicSingleton {
        private static ClassicSingleton instance = null;
        protected ClassicSingleton() {
            // Exists only to defeat instantiation.
        }
        public static ClassicSingleton getInstance() {
            if(instance == null) {
                instance = new ClassicSingleton();
            }
            return instance;
        }
    }

# Factory Pattern
    - create a multitude of Class-Objects
    - creates an Interface (e.g. JAVA)
    - you have a Factory Class, that creates different types of Objects
    - The factory takes as Input which class should be created
    -> Then the factory returns this specific Object


# Observer

- Class 1. -> Class where updates happen
- Class 2. -> All other Classes, that observe Class 1 and makes changes, when Class 1 makes an update

## Implementation:

- Class 1. has an array with all the observer Instances that have been created
    - on an update change, also change something in every observer Instance
    - Function bind_to
        - this method is called by every observer, to include the new observeer Instance inside the observer-Array inside Class 1.
        - this method has the function as parameter, where the Update is relevant (Callback-Function)
            - e.g. a = global.B + self.b this always gets updated, when global.B changes

- Class 2. has Class 1. as an Input-Parameter
    - calls bind_to once to update
    - has a Function, where you change something, that is Dependent on a Global Variable
        - this makes the update each time the global Variable gets changed
        - its being called by Class 1. and has as a parameter the global Variable


# Strategy

- Class takes an algorithm as Input e.g. how a discount will be calculated
- then other Parameters e.g. Price will be calculated with this algorithm


# Prototype

- tries to reduce the number of classes required
- Creates new object instances by cloning prototype.


# Pool
- Stores a set of initialized objects kept ready to use.

# Builder
- Decouples the creation of a complex object and its representation.
