---
id: jQuery
title: jQuery
sidebar_label: jQuery
---

# Table of Contents

- [Table of Contents](#table-of-contents)

## Select

    $(".className")
    $("#idName")
    $("body")

## Attributes

    <div someName="something"></div>

    attrValue = x.attr("someName")

## Classes

    .hasClass("name")
    .addClass("name")

    if ( x.hasClass("sd) )
    ... 


## Create/Append & Delete

### Append

$("#x").append("<div>asd</div>");


### Delete

$("#x").remove();


## Events

### Document Ready

    $(document).ready(function () {
        ...
    }

### Change-Value

    $(.input1).change(function () {
        ...
    }

### Other useful

.keydown
.keyup
.mouseenter
.mouseleave
.focus
.hover
.click
.scroll
.load
.resize
.submit
.blur


## CSS

???
x.css.backgroundImage("red")

x.html("asd")


## each-Loop

    $('.button-1,.button-2,.button-3').each(function() {
        $(this).something();
    });

## jQuery Function


    (function( $ ){
        $.fn.myfunction = function() {
            this.css("color", "green");
            return this;            
        }; 
    })( jQuery );


1. Wrapped around an "Immediately-Invoked Function", to work better with other jQuery Plugins
2. The "return this" makes it so the function is chainable with others
3. Then you can call it with:


    $('#my_div').myfunction();


## Http-Request

    

    $.ajax({
            url: '/api/autocomplete/address?plz=' + postCode,
            type: 'GET',
            contentType: 'application/json',
            success: function (data) {
                if(data) {
                    $("#placeInput").val(data);
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                //On error do this
                console.log(xhr.status);
                console.log(thrownError);
            }
        });