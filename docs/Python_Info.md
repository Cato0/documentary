---
id: Python
title: Python
sidebar_label: Python
---

# Table of Contents

- [Table of Contents](#table-of-contents)
- [Print](#print)
    - [Convert ipython to python](#convert-ipython-to-python)
    - [Use Variables inside Strings](#use-variables-inside-strings)
    - [print without newline](#print-without-newline)
    - [Format](#format)
    - [f-String	(Mostly Used For Python-2)](#f-string-mostly-used-for-python-2)
- [if / else](#if--else)
    - [Extras](#extras)
    - [Short Version (Ternary Operators)](#short-version-ternary-operators)
- [Functions](#functions)
    - [Anonymous Function (Lambda)](#anonymous-function-lambda)
    - [Reduce-Function](#reduce-function)
- [Switch](#switch)
- [List Comprehension](#list-comprehension)
- [Syzeof](#syzeof)
- [Relative Path](#relative-path)
- [Import / Export](#import--export)
    - [Import with whole Path](#import-with-whole-path)
    - [Import with relative Path](#import-with-relative-path)
    - [From](#from)
- [Can be called immediately without the use of 'fileName' before the call](#can-be-called-immediately-without-the-use-of-filename-before-the-call)
- [Arrays []](#arrays)
    - [Push to the array](#push-to-the-array)
    - [Remove from Array](#remove-from-array)
    - [Length](#length)
    - [Multidimensional Arrays](#multidimensional-arrays)
    - [[:x]](#x)
    - [Sum of Array](#sum-of-array)
- [Tupel ()](#tupel)
- [Sets](#sets)
    - [Remove](#remove)
- [Join #](#join)
- [map](#map)
    - [Map with 2 Parameters](#map-with-2-parameters)
    - [With Lambda-Function](#with-lambda-function)
- [Sorting](#sorting)
    - [Sort](#sort)
    - [Natsort](#natsort)
- [Filter](#filter)
- [Generator](#generator)
- [Decorators](#decorators)
- [Mutations](#mutations)
- [Dictionary {'a': 1 , 'b': 2}](#dictionary-a-1--b-2)
- [Loops](#loops)
- [Enumerate - gives you an automatic counter](#enumerate---gives-you-an-automatic-counter)
- [Class](#class)
- [Inheritance / Super()](#inheritance--super)
- [super() - refers to the Parent Class](#super---refers-to-the-parent-class)
- [Slots](#slots)
- [JSON](#json)
    - [Dictionary or something else to JSON](#dictionary-or-something-else-to-json)
    - [JSON to Dictionary](#json-to-dictionary)
- [Read & Write Files](#read--write-files)
    - [Write](#write)
    - [Read](#read)
- [Organize Files](#organize-files)
    - [Create Array of all Directories](#create-array-of-all-directories)
    - [Create Array of all Files inside a Directory](#create-array-of-all-files-inside-a-directory)
    - [Together (Last two)](#together-last-two)
- [Try / Catch - Try / Except](#try--catch---try--except)
    - [Example:](#example)
    - [With](#with)
- [Global / Local Variables](#global--local-variables)
- [Thread](#thread)
- [Async](#async)
- [Timer / Performance](#timer--performance)
    - [Testing how long a functions runs](#testing-how-long-a-functions-runs)
    - [Lambdify](#lambdify)
- [PyPlot (MatPlotLib)](#pyplot-matplotlib)
- [Images](#images)
    - [Image Read](#image-read)
    - [Image Show](#image-show)
    - [PIL](#pil)
    - [Image Save](#image-save)
- [Get Inputs from Command Line](#get-inputs-from-command-line)
- [Numpy](#numpy)
- [SymPy](#sympy)
- [SciPy](#scipy)

# Print #


## Convert ipython to python

    ipython nbconvert --to python fileName.ipynb


## Use Variables inside Strings

    x = 1
    print("x: " + repr(x) + " more")

    ||

    print("Result:", result)

    ||

    a = 2
    print("a: %a" % a)
## print without newline

    x = 1
    y = 2
    print(x),
    print(x)
=> 1 2

## Format

	Strings:
	print("Hallo {} ich bin {}".format(yourName, myName))

## f-String	(Mostly Used For Python-2)

	Strings:
		print(f"Hallo {yourName} ich bin {myName}")

	Lists:
		print(f"Hallo {x[1]}")
		
	Dictionary:	(Double ' and " is Important here !)
		test = {"1": 2, 3: "4"}
		print(f"Hallo: {test['1']}")

	Komma Zahlen:
		
		pi = 3.141519123
		print(f"Hallo: {pi:.04}")	
		=> 3.142
		
		# pi:.04f => 3.1415
		
	
	
#######################################################

# if / else #

    if condition:
        print("something")
    elif condition2:
        print("something else")
    else:
        print("else")

## Extras

Wenn die Zahl 2 im Array a enthalten ist: dann do

    a = [1,2,3]
    if 2 in a:
        do()

## Short Version (Ternary Operators)

    is_fat = True
    state = "fat" if is_fat else "not fat"

    or

    return a if a > b else b


- Sets state to either "fat" or "not fat" depending on the value is_fat

#######################################################

# Functions

    def name:
        return 0

## Anonymous Function (Lambda)

- Short Version to write a function
- It's used for a function that requires another function as input

Code: 

    f = lambda x, y : x + y
    f(1,1)  # => 2

Equivalent to:

    f(x, y):
        return x+y

## Reduce-Function #

- Reduziert ein Array auf eine Zahl
- Wendet zuerst die Funktion auf die ersten beiden Zahlen im Array an, dann auf die Zahl die herauskommt, und Zahl 3

Code:
    import functools

    seq = [1, 2, 3, 4];    
    x = functools.reduce(lambda x,y: x+y, seq)

=> 10

#######################################################

# Switch

    - Python doesnt have an inherent Switch Statement, but it can easily be done by using a Dictionary

    switcher = {
        '0': "zero",
        1: "one",
        'two: 2,
    }

    switcher.get('0')     => "zero"
    switcher.get(1)       => "one"
    switcher.get('two')   => 2

#######################################################

# List Comprehension

	Example 1:
	
		listX = [1, 2, 3]
		comp = [i*2 for i in listX]
	
		=> [2, 4, 6]
	
	Example 2 with If-Conditional:
	
		listX = [2, 3, 4]
		comp = [i for i in listX if (i%2 == 0)]
		
		=> [2, 4]
	
#######################################################


# Syzeof #

    a = [1,2,3]

    size = len(a)

- ODER

Code:

    import sys

    sys.getsizeof(data)

# Relative Path

Gives you the relative Path from where the File is getting executed

	import os
	os.path.dirname(__file__)

Example:

	import os
	
	dir = os.path.dirname(__file__)
	filePath = os.path.join(dir, "fileName.png")
	
	ODER
	
	path = dir + "\\" + "fileName.png"

# Import / Export

    import fileName
    import FolderName.fileName


    if __name__ == '__main__':
        print("Hello im export File")

- This makes it so that you dont call any function when this file only gets imported. The code below only gets executed, when you specifically start it

## Import with whole Path

    import sys
    sys.path.append('C:/Users/nisys/Desktop/Andre/TensorFlow/SSD-Tensorflow1/')
    from folderName import fileName

## Import with relative Path

    # This gets executed from a File that is one Folder above the to be exported Folder "ExportFolderBefore"
    # exportFilename is a file inside the folder "ExportFolderBefore"
    
    # e.g. /aboveFolder/ExportFolderBefore/exportFilename.py
    #      /aboveFolder/fileExecutionFolder

    import sys, os
    sys.path.append( os.getcwd() + '\..\ExportFolderBefore')    # os.getcwd() gets the Path you are in, when you execute the File NOT necceserily the Path the file is in
    import exportFilename as someName

    # Alternative:
    sys.path.append( os.path.realpath(__file__) + '\..\ExportFolderBefore')
    import exportFilename as someName
    

## From

1. import a single function instead of a complete file

    from fileName import functionName

    # Can be called immediately without the use of 'fileName' before the call
    functionName()

2. Use From to import a File inside another Directory (Folder inside the Source Folder )

    from ImportDirectory import ImportTest

ImportTest.test()

3. Call a Function 2 Folder-Levels above the source

    from ImportDirectory.ImportDeeper import deepFile

    deepFile.deepFunction()

#######################################################

# Arrays  [] #

    a = [1,2,3]

    a[0]  # => 1
    a[-1] # => 3 # -1 im Array nimmt den letzten Punkt; -2 den vorletzten
	
## Push to the array

    a.append(5)     # Push it to the end
	a += 5          # Push it to the end

    a.insert(2,5)   # Push it to Position 2 

	a = list(np.arange(0:3))	# create a List of numbers from 0 to 2
	
## Remove from Array

    a.pop()         # Removes last value in the array
    a.remove(2)     # Removes the value 2 that is anywhere in the array, if it appears multiple times, delete the first one

## Length
    len(a)

## Multidimensional Arrays

    b = [ ("a", 1, "this") , ("b", 2, "that"), ("c", 3, "other")]

    print( b[0][0] )    # => "a"
    print( b[0][1] )    # => 1
    print( b[1][0] )	# => "b"
    print( b[1][1] )	# => 2

## [:x]
    ar = [1,2,3,4]
    print( ar[:2] )   # => [1,2]
    print( ar[2:] )   # => [3,4]
    print( ar[:8] )   # => [1,2,3,4]

## Sum of Array
    ar = [1,2,3,4,5,6]
    print( sum(ar[:-3]) ) # => 6
    print( sum(ar[-3:]) ) # => 15
    print( sum(ar) )      # => 21

#######################################################

# Tupel   () #

    tupel = (1,2,3)

    tupel[1] # => 2

- Tupels values can't change ??
- but you can delete objects inside

#######################################################

# Sets #

- Set is an unordered collection with no duplicate elements
- Basic uses include membership testing and eliminating duplicate entries

Code:

    testSet = {"this", "that", "other"}
    # ODER
    testSet = set(["this", "that", "other"])

    print("this" in testSet)    # => True

- Cant append

## Remove
    testSet.remove("other")
    testSet.pop()

Schreibe alles raus, was nicht a,b,c ist:

    a = {x for x in 'abracadabra' if x not in 'abc'}
    print(a) # => set(['r', 'd'])

#######################################################

# Join # 

    s = "-"
    seq = ["a", "b", "c"];  # This is sequence of strings.
    print( s.join(seq) )    # OR print( "-".join(seq) )

=> a-b-c

#######################################################

# map #

- Use a function on all Elements of an Array

Structure:

| map(< function > , < sequence >) 

    x = [1, 2, 3, 4, 5]
    def plus1 (number):
        return number + 1

    d = map(plus1, x)
=> [2, 3, 4, 5, 6]

In Python 3.1 map(plus1,x) returns a map object
To get the real array use:

	d = list(map(plus1, x))
	
Or since Python 3.5:

	d = [*map(plus1, x)]

## Map with 2 Parameters

    seq = [1, 2, 3, 4]
    add = lambda x,y: x+y

    # List Comprehension:
        res = [add(x, 2) for x in seq ]

    # itertools.repeat
        res = map(add, seq, itertools.repeat(2, len(seq) ))

    # functools.partial
        res = map(functools.partial(add, y=2), seq)

## With Lambda-Function

    a = [1, 2, 3]
    b = [2, 3, 4]

    c = list(map(lambda x,y:x+y, a,b))
=> [3, 5, 7]

#######################################################

# Sorting

x = ['11', '3', '2', '0']

## Sort

x.sort()

=> ['0', '11', '2', '3']

## Natsort

x = natsort.natsorted(x, key=lambda y: y.lower())

- ['0', '2', '3', '11']

#######################################################

# Filter #

- Filters out certain Elements of an array, that don't watch the conditional function

Structure:

| filter(< conditional > , < function > , < sequence >)

Filter out every Value that ...

| fib = [0,1,1,2,3,5,8,13,21,34,55]

| filter(lambda x: x % 2, fib)

=> [1, 1, 3, 5, 13, 21, 55]
- Bedeutet: if (x % 2 != 0) => behalte diese Zahl

| filter(lambda x: x % 2 == 0, fib)

=> [0, 2, 8, 34]
- Bedeutet: if (x % 2 == 0) => behalte diese Zahl


#######################################################

# Generator #

- Iteratable List, when you don't want to allocate the memory for all results at the same time

Code:

    def fibon(n):
        a = b = 1
        for i in range(n):
            yield a
            a, b = b, a + b     # Same as below
            # c = a
            # a = b
            # b = c+b

    for x in fibon(5):
        print(x)


#######################################################

# Decorators #

- Changes a function by inserting something before or after the old function is called

Code:

    def a_new_decorator(a_func):

        def wrapTheFunction():
            print("I am doing some boring work before executing a_func()")

            a_func()

            print("I am doing some boring work after executing a_func()")

        return wrapTheFunction

    def a_function_requiring_decoration():
        print("I am the function which needs some decoration to remove my foul smell")

    a_function_requiring_decoration()
    #outputs: "I am the function which needs some decoration to remove my foul smell"

    a_function_requiring_decoration = a_new_decorator(a_function_requiring_decoration)
    # now a_function_requiring_decoration is wrapped by wrapTheFunction()

    a_function_requiring_decoration()
    # outputs:I am doing some boring work before executing a_func()
    #         I am the function which needs some decoration to remove my foul smell
    #         I am doing some boring work after executing a_func()


#######################################################

# Mutations #

- Pointer in python

    x = ["5"]

    y = x      # Works kind of like a Pointer in c++ ?
    x += ["7"]
    y += ["7"] # OR This also works and changes x

    x = ["hello"] # This would NOT change y

- Now whenever you change x, you also change y
- Only works with Arrays, Tuples ...

#######################################################


# Dictionary {'a': 1 , 'b': 2} #

    dict1 = {'a': 1 , 'b': 2}

    dict1['a'] = 3
    print(dict1['a'])

    print("a" in dict1)    # => True
    print(1 in dict1)      # => False

    if "a" in dict1:
        print("a is in")


#######################################################

# Loops #

    a = [3,5,7]
    for i in range( len(a) ):
        print(a[i])

    for i in range(1,3):    # 1,2
        print(i)

    words = ["a", "b"]
    for i in words:
        print(i) # "a", "b"
    else:
        print("nothing found inside words")


# Enumerate - gives you an automatic counter

    some_list = [1, 3]

    for counter, value in enumerate(some_list):
        print(counter, value)
=> (0, 1)

=> (1, 3)

    for counter, value in enumerate(some_list,2):   # enumeration lets the counter start at 2 instead of 0
        print(counter, value)
=> (2, 1)

=> (3, 3)

#######################################################

# Class #

- class Classname():    # Old Classes without object for python lower than 2.1
- new Class with (object) can use slots and super()
- Python has no real Private Variables, but you can do setters and getters and rely on Conventions, that people don't use them

Code:

    class Classname(object):
        
        # variable = 5  # Gets initialized in __init__
        # _name = None  # shouldnt be accecces when you have setter and getters, but it could be

        # Constructor (cannot be overloaded)
        def __init__(self, value):
            self.variable = value
            print("setter")

        # Getter
        @property
        def name(self):
            print("get Name")
            return self._name
        
        # Setter
        @variable.setter
        def name(self, value):
            print("setter")
            self._name = value

        def funcName(self):
            self.variable = 5

    x = Classname()
    x.funcName()


- TODO @classmethod
    - use this instead of overloading the __init__


- __ getitem__"




#######################################################

# Inheritance / Super()#

    class MyParentClass(object):
        def __init__(self):
            pass

    class SubClass(MyParentClass):
        def __init__(self):
            MyParentClass.__init__(self)


# super()  - refers to the Parent Class

    class MyParentClass():
        def __init__(self, x, y):
            pass

    class SubClass(MyParentClass):
        def __init__(self):
            super().__init__(x,y)         # Python 2: super(SubClass, self).__init__()


#######################################################

# Slots #

- Same use of a Class, but heavily reduces the RAM usage (sometimes by 40 - 50%)

    class MyClass(object):
        __slots__ = ['name', 'identifier']
        def __init__(self, name, identifier):
            self.name = name
            self.identifier = identifier
            #self.set_up()


#######################################################

# JSON

import JSON

## Dictionary or something else to JSON

json.dumps(x)
json.dump(x)

## JSON to Dictionary

json.loads(x)
json.load(x)

			
#######################################################

# Read & Write Files

## Write
    file = open('addresses.txt', 'w')
    file.write("asd")
    file.close()

## Read
    file = open('addresses.txt', 'r')
    v = file.read()
    vLine = file.readline()


#######################################################

# Organize Files

## Create Array of all Directories

    import os

    ROOT_PATH = "C:/Users/Andre/Desktop/TensorFlow/"
    train_data_directory = ROOT_PATH + "BelgiumTSC_Training/Training/"
    test_data_directory = ROOT_PATH + "BelgiumTSC_Testing/Testing/"

    directories = []

    for d in os.listdir(train_data_directory):                  # Lists all files in a directory
        if os.path.isdir(os.path.join(train_data_directory, d)):    # If the file is a directory, then ...
            directories.append(train_data_directory + d)            # Add the Path to the Directory-Array
    
    print(directories[0])

## Create Array of all Files inside a Directory

    def getFileNames(path, file_ending):

        fileNames = []

        for filename in os.listdir(path):                      # For each Filename
            if filename.endswith(file_ending):                 # if the File ends with .ppm
            fileNames.append(path + "/" + filename)            # Add the hole Path to the Image-Array

        return fileNames

## Together (Last two)

    # Gets all Names of Files inside a directory

    import os

    def getFileNames(path, file_ending):

        directories = []
        fileNames = []

        for directory in os.listdir(path):                          # Lists all files in a directory
            if os.path.isdir(os.path.join(path, directory)):        # If the file is a directory, then ...
            directoryName = path + directory                        # DirectoryName of each Folder
            directories.append(directoryName)                       # Add to Array

            for filename in os.listdir(directoryName):              # For each Filename
                if filename.endswith(file_ending):                  # if the File ends with for example .ppm
                fileNames.append(directoryName + "/" + filename)    # Add to Array
        
        return fileNames

    Example:
        getFileNames( "C:/Users/Andre/Desktop/TensorFlow/TrainingData/" , ".ppm")

#######################################################

# Try / Catch  - Try / Except#

    try:
        print("asd" + 1)
    except(TypeError):
        print("Type Error")

    try:
        print(5/0)
    except(ZeroDivisionError):
        print("dont divide by zero")

	try:
		do something
	finally:
		tear things down

## Example:

    x = "/"     # This char cannot be turned into an Int -> ValueError
    try:
        y = int(x)
        print(y)
        y+=1
        print(y)
    except ValueError:
        print("Type Error - Input must be an Integer")
    except:
        print("Error")

## With
		
"With" requires a class with __enter__ and __exit__ methods.
After as comes the "Guard Object" that can be used inside the code.
When called, it starts the __enter__ method and no matter what happens in that code, calls the guard objects __exit__ method

Code:

	with someClass() as thing:
		thing.someCode()
	
	with someClass():
		some Code


Common use when opening file. It automatically closes it after the use

	with open("welcome.txt") as file
	
		data = file.read()
		print(data)
	
Without the With-Statement this would do:

	file open("welcome.txt")
	data = file.read()
	print(data)
	file.close()
	
	
    #try:
    #    print()
    #except(ValueError)
    #    print("Value Error")

Example:

    class one:
        def __init__(self):
            print("Init")

        def __enter__(self):
            print("Enter")
            # Connect to DB

        def __exit__(self, type, value, tb):
            print("Exit")
            # Close DB

    with one():
        print("Test")

    # Output: Init, Enter, Test, Exit


TODO:
    Raise, With

#######################################################

# Global / Local Variables #

- Change the value of a global variable inside a function

Code:

    x = 1
    def test():
        global x
        x = 2
            
        # x => 2


#######################################################

# Thread #

    import thread
    import time

    def count(num1, num2):
    for i in range(num1, num2):
        print(i)

    thread.start_new_thread( count, (0,10) )
    thread.start_new_thread( count, (0,10) )

    while 1:    # This is needed for some reason ...
        pass

#######################################################

# Async

	import asyncio

	async def main():
		print('Hello ...')
		await asyncio.sleep(1)
		print(' ... World!')

	# Python 3.7
	asyncio.run(main())
		
#######################################################

# Timer / Performance #

    time.time() # => current Time

## Testing how long a functions runs

    import time

    start_time = time.time()
    someFunction()
    howLongItTakes = time.time() - start_time

#######################################################

## Lambdify
	
Transforms sympy expressions to lambda functions which can be used to calculate numerical values very fast

Erweiterung einer bereits bestehenden Funktion ???
	
	x = symbols('x')
	
	f1 = lambda x : x+1
	res = lambdify( x, f1(x), np )

	# Use Case:
	print( res(4) )
	
	

#######################################################

# PyPlot (MatPlotLib)

Syntax necessary:
	
	plt.figure() # ??? kA wofür das ist
	plt.plot(x, y 'red', label='')
	
	

Examples:

#######################################################

# Images

## Image Read

Entweder Matrix von 0-1 oder von 0-255
e.g. 127.5 / 255 = 0.5
SciPy gib 0-255, MatPlotLib gibt 0-1

mit SciPy ...

Matrix ist mit Zahlen von 0-255

	import scipy
	
	matrix = scipy.misc.imread(filePath)

ODER mit MatPlotLib

Matrix ist mit Zahlen von 0-1	


	import matplotlib.image as mpimg
	
	matrix = mpimg.imread(filePath)
	
ODER

    import skimage
    import io
    
    img = io.imread("C:/Users/Andre/Desktop/TensorFlow/Training/00000/01153_00000.ppm")

    print(img)
    print(img.size) # Print the number of `images`'s elements
    print(img.ndim) # Print the `images` dimensions


## Image Show

    import matplotlib.pyplot as plt
    import matplotlib.image as mpimg
    
    img=mpimg.imread('your_image.png')
    imgplot = plt.imshow(img)
    plt.show()

## PIL

	from PIL import Image
	
	Image.open(imagePath)


## Image Save

from PIL import Image

im = Image.fromarray(array)
im.save(save_path)

#######################################################


# Get Inputs from Command Line

in CMD:

    python testFile.py 1 2

in Script:

    import sys

    print(sys.argv[1])


#######################################################

# Numpy

Siehe Document_Numpy

#######################################################

# SymPy

Siehe Document_SymPy

#######################################################

# SciPy

Siehe Document_SciPy