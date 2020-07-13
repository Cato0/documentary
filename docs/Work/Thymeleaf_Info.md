---
id: Thymeleaf
title: Thymeleaf
sidebar_label: Thymeleaf
---


# Commands


## Call a Function

TODO

th:object


## * vs. $

There is an important difference though: the asterisk syntax evaluates expressions on selected objects rather than on the whole context. That is, as long as there is no selected object, the dollar and the asterisk syntaxes do exactly the same.


> *{attributeName}

    Benutzt einen besimmten Kontext, der vorher mit "th:object" angegeben wurde
    
> ${attributeName}

    Benutzt den globalen Kontext
    

## th:text

    <label th:text="#{subscription.type}">Type: </label>

### Text + Variable

    <p>Some Text before <span th:text="variableName"</span> Some text after <p>


    - th:utext
        - unescaped Text
        https://www.thymeleaf.org/doc/tutorials/3.0/usingthymeleaf.html#unescaped-text

## th:remove

    <li th:remove="all"><input type="radio" /> <label>Second Type</label></li>

# th:object

    - 

    <form action="#" th:object="${subscription}" th:action="@{/subscribeth}">

- damit aktiviert man dieses Object und kann es benutzen z.B. mit:
    - th:if="*{customerLoggedIn}"

    - sonst geht es auch mit globalen Variablen:
        - th:if="${customerLoggedIn}"
        - th:if="!${customerLoggedIn}"

## th:action

- some kind of link
- similar to html <form> 




TODO TEST this
- um dies zu benutzen, mus man eine andere Funktion im Backend anwenden:
    - Model model.addAttribute(MODEL_ATTRIBUTE_WINNING_REQUEST, winningRequest);

https://www.thymeleaf.org/doc/articles/springmvcaccessdata.html

## th:each - ForEach

    <li class="skill-bar d-flex" th:each="gewinnzahl : *{gewinnzahlenHauptziehung}"> 

        <div class="skill-bar-container"></div>

    </li>


## When - Otherwise

## th:if

    th:if="${#fields.hasErrors('ackAgb')}"

    th:unless

    z.B.

        th:if="!${@authenticationService.isAuthenticated()}"
    

## th:value

    <input type="email" name="email" th:value="*{email}" placeholder="your@email" />

- ähnlich wie in Angular wird die Variable email hier hinein gesetzt (2 Way Binding ?)

## th:field

    <input type="email" th:field="*{email}" placeholder="your@email" />

- has different functionality depending on the html tag its inside
- mit <input> ist es genauso wie th:value, außer das der th:name und th:id noch automatisch gesetzt werden


## th:readonly="*{customerLoggedIn}"

    <input type="text " placeholder="Antwort " name="answer" th:value="*{answer}" th:readonly="*{customerLoggedIn}">

## th:disabled

    <input type="text " placeholder="Antwort " name="answer" th:value="*{answer}" th:disabled="*{customerLoggedIn}">


## th:href

    <a th:href="@{/register.html}" class="btn btn--s forward">Jetzt registrieren</a>


## th:with

Declare an HTML element with the th:with attribute.
- creates local Variable



## th:fragment & th:replace

Baue Templates

<div th:fragment="lastschrift (gamingInfo)" th:object="${gamingInfo}">
    <Something>
</div>

Einbauen in ein anderes Modul:

<div th:repalce="technisches/fragmente/spielinformationen :: lastschrift({$gamingInfo})">


</div>


## th:classappend

    th:classappend='${isAdmin} ? class-name'

    th:classappend="${#fields.hasGlobalErrors()} ? border-danger"


# Javascript in Thymeleaf

https://stackoverflow.com/questions/26526037/javascript-function-call-with-thymeleaf




# Errors (Adesso)


1. 



2. Warning

    <div class="warning" th:if="${#fields.hasErrors('ackNoGameCommunity')}">
        <p th:errors="*{ackNoGameCommunity}">Error Message.</p>
    </div>