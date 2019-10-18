---
id: CSS
title: CSS
sidebar_label: CSS
---

# Table of Contents

- [Table of Contents](#table-of-contents)
- [Margin vs. Padding](#margin-vs-padding)
- [Color](#color)
- [Border](#border)
- [Gute Websites](#gute-websites)
- [Responsive Website Design](#responsive-website-design)
  - [Only for Tablet and Desktop Computer](#only-for-tablet-and-desktop-computer)
  - [Desktop Computer](#desktop-computer)
- [SASS](#sass)


# Good to know

- different Browsers have default Paddings and margins
- at the start always reset that default value

* {
    padding: 0;
    margin: 0;
    box-sizing: border-box; 
}

# Box Model:    Margin, Border, Padding

Box Model für jedes Element
- man hat innen Padding, mitte Border, außen Margin
- dann erst kommt der Inhalt des Elements


# Specificity

- chooses from 2 conflicting styles 

Example:

    div {
        background-color: green;
    }- 
- 
- 


    div.name {
        background-color: red;
    }

=> Es wird grün, weil die Specificity größer ist in der Classe

Id > Classe > Div


Forced Fix:

    div.name {
        background-color: red !important;
    }



# Color

- background-color  -> Background
- color -> Text Color

# Rem vs Em vs Px

- browser translates rem and em into pxpixel values, depending on the font size

- rem
    - setting font-sizes based on the font-size of the root HTML element
- em

- px

- %

# Border

# Position Relative / Absolute / Fixed / Static

- position: absolute;
    - looks all the parent elements, where the next "position: relative" or "position: fixed" is and sets it to this value

Afterwards you can set "top: 50%, left, top, bottom"

## Move to Center

Example: Set inner box exactly in the middle of the outer box

    .boxOuter {
        background-color: rgb(217, 255, 127);
        width: 200px;
        height: 200px;
        position: relative;
    }

    .boxInner {
        background-color: rgb(120, 42, 165);
        width: 50px;
        height: 50px;
        position: absolute;

        left: 50%;  /* 50% of the Outer Box */
        top: 50%;
        transform:translate(-50%, -50%);    /* verschiebe die Box 50% der eigenen Größe */
    }

    OR 

    .boxInner {
        background-color: rgb(120, 42, 165);
        width: 50px;
        height: 50px;
        position: absolute;

        margin: auto;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
    }


## Absolute

- setzt Element absolut, nicht relative zu anderen Elementen
- Reference ist zum Parent !!!
- Element kümmert sich nicht um andere Elemente, überschneiden auch

## Relative

- setzt Elements relative zu anderen Elementen


## Static

## Fixed

- similar to absolute, reference to entire Page


# Triangle / Dreieck

.triangle {
    height: 0;
    width: 0;

    border-top: 100px solid transparent;
    border-bottom: 100px solid transparent;
    border-right: 100px solid yellow;
}

Erklärung:

Das Element ist 0, es gibt nur die 4 Borders. Wenn 3 davon entfernt werden, kommt 1 Dreieck dabei raus

# Z-Index

TODO

# Visibility

## Visibility: hidden    vs.    display: none

- mit Display None, existiert das Element nicht mehr im DOM
    - d.h. relative Positionierungen oder ähnliches gehen nicht mehr damit kaputt

- Visibility: hidden
    - macht das Element nur unsichtbar, Child Elemente z.B. greifen immer noch auf dessen größe zu, dadurch werden immer noch andere Elemente verschoben



# Background-Position


background-position: center top;
background-position: bottom bottom;
background-position: 0 0;
background-position: 50% 50%;
background-position: 50px 0px;

-> 1. Parameter :  
-> 2. Parameter : 


# Greater than >>>

TODO

# Gute Websites

- Responsive Design
- nicht zu viele Daten laden (wenig Animationen, Gifs)
  - Firefox Audit for Performance Review


# Responsive Website Design

- develop for mobile first, then tablet, then desktop
- 
- <meta name="viewport" content="width=device-width, initial-scale=1.0">
- fluid widths
- set max-width    not width
- media queries
- rem over px
- flexbox
- mobile first, stacked columns

<meta charset="utf-8">	???



## Only for Tablet and Desktop Computer

    /* run css code, if the screen exists and min-width is 768px (width from iphone6) */
    
    @media only screen and (min-width: 768px) {	
        .img-banner {
            display:block;
            width: 100%;
            padding-bottom: 30px;
        }
        
        .wrapper {
            width: 100%;
            margin: 0 auto;
        }
    }


## Desktop Computer

    @media only screen and (min-width: 1000px) {	
        body {
            
        background-color: black;
    }
    }
# SASS

- siehe SASS_Info File