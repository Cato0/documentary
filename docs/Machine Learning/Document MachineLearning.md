---
id: MachineLearning
title: Machine Learning
sidebar_label: Machine Learning
---

# Begriffe:

## Differenzierbar

Wann ist eine Funktion Differenzierbar?

Grafisch lässt sich die Eigenschaft Differenzierbarkeit so deuten, dass eine Funktion genau dann an der Stelle differenzierbar ist, wenn im zugehörigen Punkt des Graphen von genau eine Tangente existiert, die nicht senkrecht verläuft. Die Tangente ist der Graph der in der 2. Definition genannten linearen Funktion .

- keine 
- über 0 ??
- keine 

## Regression #

-> Zusammenhang zwischen 2 Variablen
-> Ergebnis ist mit Reellen Zahlen (Komma Zahlen)

Bsp: 
-> Given a picture of a person, we have to predict their age on the basis of the given picture

######################################################################################

## Classification #

-> Einteilung in Klassen / Gruppen

Bsp:
-> Given a patient with a tumor, we have to predict whether the tumor is malignant or benign.

######################################################################################

## Interpolation #

-> etwas hinzufügen

## Overfitting #

-> zu stark auf daten gelernt, sodass keine Generalisierung stattfinden kann


######################################################################################

## Faltung #

-> Z.B. für Kantenerkennung oder erkennung von hohen unterschieden in Frequenzen
-> Erkennung hoher unterschieden von Attributen

######################################################################################

## Kerneling

List up a low dimensional dataset and mapping it into a higher dimension

######################################################################################

## Max Pooling #

-> Kombiniert features

- reduces dimensionality and allows assumptions to be made about features contained in the sub-regions
- done to help overfitting
- reduces computational cost, by reducing the amount of parameters to learn

E.g. 4x4-Matrix gets transformed into a 2x2-Matrix

1 1 2 4
5 6 7 8  =>  6 8  
3 2 1 0  =>  3 4
1 2 3 4

Look at the 4 numbers in the top-left corner, pick the maximum value, and put it in the new array top-left corner 

######################################################################################

## Faltung #

######################################################################################

## Convolutional Neural Network #

-> Layer sind nicht unbedingt alle verbunden
-> Erkennung von Motiven/Featuren
-> Erstellt verbindungen zwischen speziellen Featuren

######################################################################################

## Optimizer

- Gradient Descent
  => Forward Pass + Change the Weight-Vector with the Loss Function w[x] += w[x] + learningRate*(expected_output - real_output)*input   # why *Input am ende ???
  
- Adam Optimization
- 

######################################################################################

## Loss Function (Fehler-Funktion)

### Mean Squared-Error

Error = 1/2 * Sum( oPred - Y )²

### Binary CrossEntropy

Inputs:
- oPred = Predicted Result
- Y     = Actual Result

CrossEntropy = Sum( -Y * ln(oPred) - (1-Y)*ln(1-oPred) )

Code:
crossentropy = np.sum( np.multiply( -1*Y, np.log(oPred)) - np.multiply(1-Y, np.log(1-oPred)) )

######################################################################################


## Activation Functions

Makes a function differentiable (Differenzierbar), by Transforming the Output Vector of a Layer into a specific Zahlenbereich e.g. 0 bis 1; oder -1 bis 1

### Sigmoid Function

Kann benutzt werden für Klassifikations Output (Entweder 0 oder 1)

f(x) = 1/(1+e^(-x))

### tanh

Entweder -1 oder 1

### ReLU

Meist benutzte

=> wenn der Wert unter 0 ist, wird er zu 0
=> wenn der Wert über 0 ist, bleibt er so wie er ist

if x > 0 => x
if x < 0 => 0

### Noisy ReLU

if x > 0 => x
if x < 0 => 0.01x

### Leaky ReLU

if x > 0 => x
if x < 0 => a*x

a ist ein Input in der Funktion

### Softmax Function

f(x) = e^(x)

Softmax Function works against negative probability
It transforms every negative Number into a positive one, but in a way that the value is still less than e^(0)

Makes a function differentiable (Differenzierbar)

E.g. [-1, 0, 4] -> [0.007, 0.018, 0.976]

######################################################################################

## Bias

Zusätzliches Gewicht an jeder Schicht kommt ein Bias.


######################################################################################

######################################################################################

# k-Nearest Neighbours #

- guckt auf "k-Nachbarn"
- nachbarn werden nach Ähnlichkeit von ihrem Vektor berechnet
    - nimmt eine Testinstanz und bestimmt k-Ähnliche Daten
    - ähnlichkeit mit euklidischer Distanz
- funktioniert fast gar nicht mehr bei Daten mit vielen Dimensionen (Attributen)

######################################################################################


# Genetischer Algorithmus #

- unsupervised learning method
- What to use it for?
    - ...

######################################################################################
	
# Support Vector Machine #

- supervised learning method
- can be used for classification or regression, but mostly Classification

- is used to find a hyperplane that best divides a dataset into two classes
- works better on smaller cleaner datasets, but then has a good accuracy


######################################################################################

# Neurales Netzwerk #

- supervised learning algorithm
- used for Classification or Regression

- overfitting

Modelle:

Standart:
Layer 1:
- Pixelweise Feature Extraction

Layer 2: 
- Kantenerkennung, was gehört zusammen

Layer 3:
- Repräsentation und Erkennung von Features (Arm, Gesicht)

VGG
- Standart Low-Level Modell für Kantenerkennung (Classification)

SDD
- Detektion + Classification


######################################################################################

# Reinforcement Learning

- Gradientenverfahren
- suche nach einer optimalen Lösung
- man braucht "Punkte" oder Gewinne, nachdem ein Durchgang bewertet werden kann

E.g. Lernen zu Laufen (Spiel)

######################################################################################

# Tree Based Modeling #

- supervised learning method
- overfitting

######################################################################################

# Naive Bayes Algorithm #

- for classification

######################################################################################

# ChiSquare #

$$ ((Actual - Expected)^2 / Expected)^1/2 ) $$

######################################################################################

# Square Error = Error^2 ??? #

######################################################################################

# Logistic Regression #

- for Classification

######################################################################################

# Linear Regression #

- for Regression Problems

Linear Equation: $y = a*x+b$

