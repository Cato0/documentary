---
id: JSP
title: JSP
sidebar_label: JSP
---

# Commands


## Each

    ...

## c:when - Otherwise

    <c:choose>
        <c:when test="${dateFrom lt now and now lt dateEnd}">       // lt => lower than =>  <
            <text>When</text>
        </c:when>

        <c:otherwise>
            <text>Otherwise</text>
        </c:otherwise>
    </c:choose>

# <c:if>

    <c:if test="{email ==}">

# c:set

> <c:set scope="session" value="Marienkaefer" var="solution"/>

Scope Options:
    - session
    - 
    

# c:out

> <c:out value="${variableName}">

# c:forEach

    <c:forEach var="type" items="${allTypes}" varStatus="typeStatus">
        <li>
        <sf:radiobutton path="subscriptionType" value="${type}" />
        <label for="subscriptionType${typeStatus.count}">
            <s:message code="subscriptionType.${type}" />
        </label>
        </li>
    </c:forEach>