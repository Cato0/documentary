---
id: Numpy
title: Numpy
sidebar_label: Numpy
---

import numpy as np

# Manipulate Data 

## Array with Numpy

    array = np.array( [ [0,1,2,3] , [4,5,6,7] , [8,9,0,1] ] )
	#   0,1,2,3
	# ( 4,5,6,7 )
	#   8,9,0,1
	
    array.shape = (3L,4L)
    array.shape[0] = 3
    array.shape[1] = 4

	x1  = np.array( [[0.5], [0.5]] )	# 1 oben 1 unten
	x2	= np.array( [ [0.5, 0.5] ] )	# 1 links 1 rechts
	
	array[0:2] => ersten Beiden Elemente            => [ [0,1,2,3] , [4,5,6,7] ]
	array[::2] => Print alle Elemente mit 2 Steps   => [ [0,1,2,3] , [8,9,0,1] ]
	array[-1]  => Print letzte Element              => [ 8,9,0,1 ]

    array[:,2] => [2, 6, 0] => Drittes Element von jeder Spalte
    array[:, 0:3] => [ [0,1,2] , [4,5,6] , [8,9,0] ] => 0-3 aus jeder Reihe

## Length / Size of Array

    array = np.zeros((4,5))

    len(x3)         # => 4

    # 2d - Array
    len(x3[0]))     # => 5
    len(x3[1]))     # => 5

    x3.shape        # => (4,5)
    x3.shape[0]     # => 4
    x3.shape[1]     # => 5

## Create Data

    # 2x3 - Fours   # [ [4, 4, 4] [4, 4, 4] ]
    # 3x2 - Fours   # [ [4, 4] [4, 4] [4, 4] ]

### Zeros / Ones

    x1 = np.zeros(2)            # 2 - Zeros
    x2 = np.zeros((2,2))        # 2x2 - Zeros
    x3 = np.zeros((2,2,2))      # 2x2x2 - Zeros

### All numbers

    x  = 4 * np.ones(2,3)       # 2x3 - Fours
    x1 = np.full((2, 3), 4)     # 2x3 - Fours

### Einheitsmatrix / Identity Matrix

- creates

    x4 = np.eye(3)

## Random Number Array

    x1 = np.random.uniform(size=(2))    # Array with 2 values with values from 0 to 1

    x2 = np.random.uniform(size=(2,2))  # 2x2 Array with Values from 0 to 1

	np.random.shuffle(x1)				# Shuffles the datapoints in random order

## Sum up Array

    ar = np.array([[1,2,3], [4,5,6], [7,8,9]])
    x = ar.sum(axis=1)
    print(x)                # => [6,15,24]

## Slice Data from Array

    a = np.array([[1,2,3,4], [5,6,7,8], [9,10,11,12]])
    a[1]           # Row      => [5,6,7,8]
    a[:, 1]        # Column   => [2, 6, 10]
    a.diagonal()   # Diagonal => [1, 6, 11]

## argmax

    A = np.matrix([[1,2,3,33],[4,5,6,66],[7,8,9,99]])
    np.argmax(A[1:,2])

## Squeeze

Transform Array von [ [1, 2, 3] ] nach [ 1, 2, 3 ]

	z = np.array( [ [1, 2, 3] ] )
	np.squeeze(z) => [1,2,3]

## Arange
	np.arange(-5, 3) 	=> Array von [-5 bis 2]
	np.arange(-5, 3, 2) => [-5, -3, -1, 1] Array von [-5 bis 2] und jeden zweiten überspringen
	
    array.shape = (3L,4L)
    array.shape[0] = 3
    array.shape[1] = 4

Man kann auch Teilarrays = 0 oder 1 machen:

	A[1:3, 1:3] = np.zeros´
	
## Linspace
	x = np.linspace(2, 10, 2)
	=> Zahlen von 2 bis 10, insgesamt 2 Zahlen im Array
	e.g. np.linspace(1,5,3) => 1, 3, 5
	
## VStack

	Packt 2 Arrays untereinander
	
	E.g.
	x1 = np.array([1,2])
	x2 = np.array([3,4])
	
	np.vstack([x1,x2])	
	= [ [1,2] , [3,4] ]

## Transfer Matrix

	x1  = np.array( [[0.5], [0.5]] )	# 1 oben 1 unten
	x2	= np.array( [ [0.5, 0.5] ] )	# 1 links 1 rechts
	x2 => x1.T						    # 1 links 1 rechts => andersrum (1-2 Vektor in 2-1 Vektor)
	
## Dot-Produkt

w = np.array([[0.5],[0.5]])
x1= np.array([[2],[2]])

np.dot(w.T,x1)

#######################################################


# Other

number = [1, 2, 3, 4, 5]


### Change False to True to see Numpy arrays in action
    if True:
        array = np.array([1, 4, 5, 8], float)
        print(array)
        print("")
        array = np.array([[1, 2, 3], [4, 5, 6]], float)  # a 2D array/Matrix
        print(array)

- You can index, slice, and manipulate a Numpy array much like you would with a
a Python list.

### Change False to True to see array indexing and slicing in action
    if False:
        array = np.array([1, 4, 5, 8], float)
        print(array)
        print ("")
        print (array[1])
        print ("")
        print (array[:2])
        print ("")
        array[1] = 5.0
        print (array[1])

### Change False to True to see Matrix indexing and slicing in action
    if False:
        two_D_array = np.array([[1, 2, 3], [4, 5, 6]], float)
        print (two_D_array)
        print ("")
        print (two_D_array[1][1])
        print ("")
        print (two_D_array[1, :])
        print ("")
        print (two_D_array[:, 2])

- Here are some arithmetic operations that you can do with Numpy arrays

### Change False to True to see Array arithmetics in action
    if False:
        array_1 = np.array([1, 2, 3], float)
        array_2 = np.array([5, 2, 6], float)
        print (array_1 + array_2)
        print ("")
        print (array_1 - array_2)
        print ("")
        print (array_1 * array_2)

### Change False to True to see Matrix arithmetics in action
    if False:
        array_1 = np.array([[1, 2], [3, 4]], float)
        array_2 = np.array([[5, 6], [7, 8]], float)
        print (array_1 + array_2)
        print ("")
        print (array_1 - array_2)
        print ("")
        print (array_1 * array_2)

- In addition to the standard arthimetic operations, Numpy also has a range of
other mathematical operations that you can apply to Numpy arrays, such as
mean and dot product.

- Both of these functions will be useful in later programming quizzes.

Code:

    if False:
        array_1 = np.array([1, 2, 3], float)
        array_2 = np.array([[6], [7], [8]], float)
        print (np.mean(array_1))
        print (np.mean(array_2))
        print ("")
        print (np.dot(array_1, array_2))
