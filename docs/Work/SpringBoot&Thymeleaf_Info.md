---
id: SpringBoot
title: SpringBoot
sidebar_label: SpringBoot
---

# th - Commands


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


## th:field

    <input type="email" th:field="*{email}" placeholder="your@email" />


## th:href

...