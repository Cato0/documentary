---
id: FirstSpirit
title: FirstSpirit
sidebar_label: FirstSpirit
---

# Neue Datei erstellen CMS

ROT
- neuer Ordner
    - neue Vorlage ()
    - nur die html-Form einfügen
    - rechtsklick neue Vorlage einfügen
        - DE e.g "Bilderrätsel"
        - Referenzname e.g. "st_bilderraetsel"

1. Eigenschaften
2. Formular - z.B. INPUT_DOM
3. Regeln wo z.B. Attribute erstellt werden können?
4. Schnipsel /
5. html Code


GRÜN
- im Ordner rechtsklick Absatz einfügen
    - !!! falls hier der falsche Ordner angezeigt wird folgendes:
        - ROT Redaktionell/Standardseite -> Eigenschaften und der obige Reiter von "Inhaltsbereiche"
            -> Zugelassene Absatzvorlagen editieren:
            -> unten auf den Ordner neues hinzufügen und den richtigen Ordner auswählen

- erstes mal Freigeben:
- SEPERATOR
    => clean-space in between 2 elements
    => can be inserted or deleted from Tree Element on the Left. Not necessary to include a $CMS_RENDER(...) inside the HTML


Dann Attribute hinzufügen:
-  ROT Formular und Regeln editieren

# Beschriftungen

Beschriftungen:
- Schlüssel: z.B. error.gameprocessing.savedgame.changeName.invalidName
- Wert: Text String
- wie wird es dann im Code eingebunden?
    - durch eine Backend Funktion:
        - <th:block th:with="savedGameMessagePopup=${gamingInfo.retrieveAndDeleteSaveGameMessagePopup()}">
        - <th:text="${savedGameMessagePopup.title}>

Tooltips:
- Tooltip-Überschrift
- Identifier für die einbindende Seite
    - z.B. cookie.googlemaps.note
-> Dann im Roten:
    - <CMS_PARAM name="p_param" value="cookie.googlemaps.note" />

## Javascript File hinzufügen

- suche nach "ft_js_page_specific" im CMS
    - dort ganz unten einfügen:
        $CMS_IF(#global.pageContext["set_isBilderraetselLabeled"] != null && #global.pageContext["set_isBilderraetselLabeled"])$
        <script src="$CMS_REF(media:"bilderraetsel")$?v=$CMS_VALUE(#global.now.format("yyyyMMdd"))$"></script>
        $CMS_END_IF$

    $CMS_SET(#global.pageContext["set_isPasswordStrengthRequired"], true)$

    - im ROTEN File dann nur noch $CMS_SET(set_isBilderraetselLabeled,true)$ auf true setzen
- 


# Template

Example:
    $CMS_RENDER(template:"ft_winning_numbers_keno")

    Klick Control + RENDER um direkt auf die Seite zu kommen

# Tooltip erstellen:

- CMS Braun - Datenquellen - Tooltips
    - Strg + n für neue Datei

    - Schlüssel eingeben e.g. error.user.login.onlineidcheck.INVALID
    - Wert eingeben     SomeString

    - zurück auf Tooltips
    - und Freigeben unter: rechtsklick auf Tooltipps und unter "Extras" und "Angezeigte Zeilen freigeben"

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

## CMS_FUNCTION


    	<CMS_FUNCTION name="Navigation" resultname="fr_ft_mainNavigation">
            <CMS_PARAM name="expansionVisibility" value="all"/>
            <CMS_PARAM name="wholePathSelected" value="1"/>
            <CMS_PARAM name="suppressEmptyFolders" value="1"/>
            <CMS_VALUE_PARAM name="root" value="fr_ft_navRoot"/>

        </CMS_FUNCTION>

## CMS_ARRAY_PARAM

		<CMS_ARRAY_PARAM name="innerBeginHTML">
			<CMS_ARRAY_ELEMENT index="0"><![CDATA[$--

            </CMS_ARRAY_ELEMENT>
		</CMS_ARRAY_PARAM>
        
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