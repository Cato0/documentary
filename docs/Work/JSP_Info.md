---
id: JSP
title: JSP
sidebar_label: JSP
---

# Commands


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



# c:set

> <c:set scope="session" value="Marienkaefer" var="solution"/>

Scope Options:
    - session
    - 


# c:out

> <c:out value="${value}" name="variable">

