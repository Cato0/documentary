---
id: FirstSpirit
title: FirstSpirit
sidebar_label: FirstSpirit
---

# Neue Datei erstellen CMS


- neuer Ordner
    - neue Vorlage ()
    - nur die html-Form einfügen
    - rechtsklick neue Vorlage einfügen
        - DE e.g "Bilderrätsel"
        - Referenzname e.g. "st_bilderraetsel"


GRÜN
- im Ordner rechtsklick Absatz einfügen
    - !!! falls hier der falsche Ordner angezeigt wird folgendes:
        - ROT Standardseite -> obige Reiter "Inhaltsbereiche"
            -> Zugelassene Absatzvorlagen editieren:
            -> unten auf den Ordner neues hinzufügen und den richtigen Ordner auswählen



- erstes mal Freigeben:
    - ???


## Javascript File hinzufügen

- suche nach "ft_js_page_specific" im CMS
    - dort ganz unten einfügen:
        $CMS_IF(#global.pageContext["set_isBilderraetselLabeled"] != null && #global.pageContext["set_isBilderraetselLabeled"])$
        <script src="$CMS_REF(media:"bilderraetsel")$?v=$CMS_VALUE(#global.now.format("yyyyMMdd"))$"></script>
        $CMS_END_IF$
    - im ROTEN File dann nur noch $CMS_SET(set_isBilderraetselLabeled,true)$ auf true setzen
- 


# Tooltip erstellen:

- CMS Braun - Datenquellen - Tooltips
    - Strg + n für neue Datei


# Create $CMS_VALUE
	- In der Vorlage (Rot) -> Formular muss ein neues Element angelegt werden
		- dann speichern, Bearbeiten beenden
	- Dann im Inhalt (Grün) einen Wert vergeben
	- Dann kann man es z.B. in Vorlage -> html 	benutzen z.B. mit $CMS_VALUE(st_option_1)$



# Commands

## Comment

$-- this is a comment --$

## Console.log

WinSCP

- Log File
    - /opt/jboss/5.2.0-eap/server/infocus1a/log/infocus-logfile.log

## With

    	<div class="col-md-10 mobile-padding" th:with="result = ${@lottoHistogrammComponent.getResult(param.glueckszahl)}"> 
		

## Value

    $CMS_VALUE(st_caption_submit,default:"Teilnehmen")$

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

e.g.

<c:when test="${dateFrom lt now and now lt dateEnd}">