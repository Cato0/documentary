---
id: FirstSpirit
title: FirstSpirit
sidebar_label: FirstSpirit
---

# Commands

## Console.log

TODO

## With

    	<div class="col-md-10 mobile-padding" th:with="result = ${@lottoHistogrammComponent.getResult(param.glueckszahl)}"> 
		

## For Loop

         $CMS_FOR(for_wrapper,[1 .. 20])$
             <li class="skill-bar d-flex"> 
                 <div class="histogramm-entry lotto-bullet standard">
                     <p class="lotto-bullet--number">$CMS_VALUE(for_wrapper)$</p>
                 </div>
                 <div class="skill-bar-container"> 
                     <div class="skill-bar-content" style="width: $CMS_VALUE(for_wrapper * 5)$%;"></div>
                     <span class="skill-bar-value">$CMS_VALUE(for_wrapper * 2)$</span>
                 </div>
             </li>
         $CMS_END_FOR$


## For Each

  <select name="month">
    <option value="Jan">January</option>
    <option value="Feb">February</option>
    <option value="Mar">March</option>
    <option value="Apr">April</option>
    <option value="May">May</option>
    <option value="Jun">June</option>
    <option value="Jul">July</option>
    <option value="Aug">August</option>
    <option value="Sep">September</option>
    <option value="Oct">October</option>
    <option value="Nov">November</option>
    <option value="Dec">December</option>
  </select>
  <select name="day">
    <c:forEach begin="1" end="31" var="day">
      <option><c:out value="${day}"/></option>
    </c:forEach>
  </select>

## If

    $CMS_IF(isPreview)$

        HTML CONTENT

    $CMS_END_IF$


## Switch Case

    $CMS_SWITCH(pt_product)$

        $CMS_CASE("lotto")$
            Lotto
        $CMS_CASE("ejp")$
            EJP
        
        $CMS_CASE("keno")$
            KENO
        
        $CMS_CASE("glsp")$
            GS
            
    $CMS_END_SWITCH$


## Operators

    == or eq
    != or ne
    <  or lt
    >  or gt
    <= or le
    >= or ge


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

