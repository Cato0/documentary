---
id: Tensorflow
title: Tensorflow
sidebar_label: Tensorflow
---

# Tensorflow

#####################################################################

# Install GPU

1. Install CUDA (8 / 9)
2. Install cudnn
3. pip install tensorflow-gpu    # GPU Version don't have normal CPU Tensorflow installed

# CPU:
- pip install --upgrade tensorflow==1.2.0
- pip install tensorflow        # latest CPU Version
    - 

- NISYS (Installed with Anaconda py36)
- Laptop (Installed with Anaconda)

Uninstall:

- pip show tensorflow
- pip uninstall tensorflow


# Import

import tensorflow as tf
from tensorflow import keras

print(tf.__version__)


#####################################################################

# Variables

    W = tf.Variable(tf.zeros((2, 2)), name="weights")
	
	const = tf.constant(2.0, name = "const")
	
    # create Tensorflow variables
    b = tf.Variable(2.0, name="b")

## Placeholders

	A = tf.placeholder(tf.int16)

### Insert Values into Placeholder => feed_dict

## Log / Show the Variable
	
	TODO
	
	WRONG
	with tf.Session() as sess:
		print(w1)
	

## Global Variable Initialize

		Inserts random weights into all the tf.Variables that are inside a Session ??? i think
		
		sess.run(tf.global_variables_initializer())

#####################################################################

# Sessions

## Start

Use "With" to automatically start and close the session after a process

    with tf.Session() as sess:
        ...

Or don't use with, then the close() function will be called when the session is garbage collected

    sess = tf.Session()

## Multiply with Session

    # Initialize two constants
    x1 = tf.constant([1,2,3,4])
    x2 = tf.constant([5,6,7,8])

    # Multiply
    	result = tf.multiply(x1, x2)

	# Multiply in Session
		with tf.Session() as sess:
			result = tf.run( x1 + x2 )

    
	# Matrix Multiplication
		tf.matmul(matrix1, matrix2)

	
	# Intialize the Session
    sess = tf.Session()

    # Print the result
    print(sess.run(result))

    # Close the session
    sess.close()

#####################################################################

# Flags

Variables, that can also be changed through the Terminal

Terminal:

    fileName.py --test 0.2

Code:

    tf.app.flags.DEFINE_float("variableName", 0.1, "Comment here")
    FLAGS = tf.app.flags.FLAGS
    print(FLAGS.test)

#####################################################################

# .Pb - File

Can save your whole graph (meta + data)
To load and use (but not train
- mostly used with C++

# Graphs

- Computational Graph that can be executed much more efficiently than i the same calculations were performed directly in Python
- Consists of:
    - Placeholder variables used for inputting data to the graph

- used for Importing and Exporting Network Models


# Models

model.ckpt.data-00000-of-00001
model.ckpt.index
model.ckpt.meta


## 1. ckpt.meta = Meta-Graph

The Meta-Graph stores the structure of the Graph (Network)
You have to import this first or otherwise Tensorflow doesnt know what variables the saved checkpoint values correspond to

	saver = tf.train.import_meta_graph('path/mode.ckpt.meta')

	
## 2. ckpt.data Checkpoint.data-File

- binary file which contains all the values of the weights, biases, gradients, and all other variables saved

	saver.restore(sess, "path/model.ckpt")

## Look at Checkpoint

If you want to see what is inside a checkpoint:

	python -m tensorflow.python.tools.inspect_checkpoint --file_name=ssd_300_vgg.ckpt       # dont use the extension of the file e.g. .data-00000-of-00001

## Save Model (Checkpoint + Meta Graph)

	# Create Model ...

	saver = tf.train.Saver()

	with tf.Session() as sess:

		# Train Model ...

		saver.save(sess, "C:/Users/Andre...")

## Restore Variables (Checkpoints)

First Look up the real Name and Shape of the Variable inside the Checkpoint-File .ckpt with:

	python -m tensorflow.python.tools.inspect_checkpoint --file_name=ssd_300_vgg.ckpt       # dont use the extension of the file e.g. .data-00000-of-00001

v1 = tf.get_variable(name = "Variable_1", shape=(10))
saver = tf.train.Saver()

	# Later, launch the model, use the saver to restore variables from disk, and
	# do some work with the model.

	with tf.Session() as sess:
		# Restore variables from disk.
		saver.restore(sess, "/tmp/model.ckpt")
		print("Model restored.")
		# Check the values of the variables
		print("v1 : %s" % v1.eval())
		print("v2 : %s" % v2.eval())


## Keras-Model (.h5)

existingModel.save_weights('weightsfile.h5')
existingModel.load_weights('weightsfile.h5')    

model.save_model(filename)
model = load_model('filename')


#####################################################################

# Simple Classification Example

