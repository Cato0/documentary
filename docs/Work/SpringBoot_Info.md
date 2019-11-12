---
id: SpringBoot
title: SpringBoot
sidebar_label: SpringBoot
---

# Commands

## Each

    <li class="skill-bar d-flex" th:each="gewinnzahl : *{gewinnzahlenHauptziehung}"> 

        <div class="skill-bar-container"></div>

    </li>



## When - Otherwise

    <c:choose>
        <c:when test="${dateFrom lt now and now lt dateEnd}">       // lt => lower than =>  <
            <text>When</text>
        </c:when>


        <c:otherwise>
            <text>Otherwise</text>
        </c:otherwise>
    </c:choose>


# <c:if>

