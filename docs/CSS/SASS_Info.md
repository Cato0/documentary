---
id: Sass
title: Sass
sidebar_label: Sass
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

# Sass

- VSCode install Live Sass Compiler
- create .scss File
- click Watch Sass on the Bottom
    - this automatically creates a css File and a Connection between scss and cs File
    - once you change scss file, it automatically changes css File

# Include Files

Filename:

- sollte den gleichen Namen haben wie das Element

_triangle.scss

In Main:

@import '_triangle';

# Variables

$primaryBtn : red;

.button1 {
    background-color: $primaryBtn
}

# Functions

@mixin functionName {
    display:flex;
    justify-content: center;
    aligh-items: center;
}

.header {
    @include functionName();
}


# Nesting


header {

    background-color: red;
    
    button {
        background-color: blue;
    }
}

# Inheritance

.button1 {
    background-color: red;
}

.contact {
    @extend .button1;
}

# Hover

.triangle {
    height: 0;
    width: 0;

    border-top: 100px solid transparent;
    border-bottom: 100px solid transparent;
    border-right: 100px solid $primaryBtn;
    &:hover{
        border-right: 100px solid yellow;
    }
}