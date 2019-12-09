---
id: SpringBoot
title: SpringBoot
sidebar_label: SpringBoot
---

# Thymeleaf - Commands



## Call a Function

TODO

## * vs. $

> *{attributeName}

    TODO


> ${attributeName}

    TODO
    

## th:text

    <label th:text="#{subscription.type}">Type: </label>

## th:remove

    <li th:remove="all"><input type="radio" /> <label>Second Type</label></li>

# th:object

    <form action="#" th:object="${subscription}" th:action="@{/subscribeth}">

## th:each - ForEach

    <li class="skill-bar d-flex" th:each="gewinnzahl : *{gewinnzahlenHauptziehung}"> 

        <div class="skill-bar-container"></div>

    </li>


## When - Otherwise

## th:if

    th:if="${#fields.hasErrors('ackAgb')}"



## th:value

    <input type="email" name="email" th:value="*{email}" placeholder="your@email" />

- ähnlich wie in Angular wird die Variable email hier hinein gesetzt (2 Way Binding ?)

## th:field

    <input type="email" th:field="*{email}" placeholder="your@email" />

- has different functionality depending on the html tag its inside
- mit <input> ist es genauso wie th:value, außer das der name noch automatisch gesetzt wird


## th:readonly="*{customerLoggedIn}"

    <input type="text " placeholder="Antwort " name="answer" th:value="*{answer}" th:readonly="*{customerLoggedIn}">

## th:disabled

    <input type="text " placeholder="Antwort " name="answer" th:value="*{answer}" th:disabled="*{customerLoggedIn}">


## th:href

    <a th:href="@{/register.html}" class="btn btn--s forward">Jetzt registrieren</a>


