# 

- Tooltipps sollten schließen, wenn man daneben klickt
- FUNKTIONIERT:
    - bei Startseite unten am Tooltip (?)
- FUNKTIONIERT NICHT:
    - beim Spielschein (Normalschein beim Tooltip (?))


TODO Montag:

für den Vat - mischling
- irischer wolfshude
- portugisischer ...
- Tierheim


# 590


Hi @Du kannst du die hier die Schriftgröße aller "*Pflichtfelder" noch auf 10px ändern?

Außerdem gibt es hier noch eine Inkonsistenz bei den 3 Seiten Registrierung, Kundenkarte-Antrag-stellen, und Dauerspielantrag. Wie im folgenden Bild zu sehen ist ist das Pflichtfeld hier immer auf einer unterschiedlichen Höhe im Vergleich zum h3. Könnten diese bitte noch alle auf einer Höhe gemacht werden am besten so wie auf der Registrierungseite, da diese die einzige Seite ist von der es eine Vorlage gibt.


TESTSERVER:

1. Register
- Pflichtfeld muss nur ein kleines bisschen nach oben
- sieht aber relativ ok aus wenn die Pixelgröße 10 ist

2. Dauerspiel
-  antrag stellen
    - ist ok (nicht 100% perfekt aber 1px nach oben wahrscheinlich)
- Stammdaten ändern
    - nicht ok, muss noch weiter nach oben

3. Kundenkarte
- stammdaten änderung
    - nicht ok, muss noch weiter nach oben
- verlustmeldung
    - nicht ok, muss noch weiter nach oben
- antrag stellen
    - nicht ok, muss noch weiter nach oben

LOKAL:

1. Register
    - *Pflichtfelder zu weit nach unten
    - nicht auf einer Höhe mit "Ihre Benutzerdaten
- Dauerspielantrag
    - auf einer Höhe mit Allgemeine Daten
- Kundenkarteantrag
    - gut, auf einer Höhe mit Allgemeine Daten
- welche Seiten betrifft es alles?
- Felix: "betrifft alle 5 Seiten von DS/KK (Dauerspiel / Kundenkarte)
    - 

- SEITE:  Dauerspielantrag
- Schriftgröße von *Pflichtfelder* ist nun größer (20px)

Registrierungs-Seite:
-> von <p> Element auf ein <span> Element ändern
    -> das sollte es klein machen
    -> dann höchstens noch verschieben

Dauerspiel- und Kundenkarte-Seite:
-> in dem <span> ist ein
    - required-field-standing-order (sollte Felix da rein bauen laut Du) setzt die font-size auf 20px anstelle von 10px kann du das noch ändern?
    - required-fields mit 10px (richtige größe) wird dadurch gelöscht

- außerdem ist die Ausrichtung auf der Registrierungsseite und auf der Kundenkarten Seite noch nicht richtig. Es sollte auf einer Höhe mit der Überschrift sein.


SCREENSHOT
- kann ich heute schon mal machen
    - testen wie genau ich in GIMP mehrere Bilder zusammen packen kann
    - GIMP-File erstellen in myGithub


COMMENT:
Ich nehme mal stark an, dass *Pflichtfelder die gleiche größe haben soll wie in der Vorlage für die Registrierungsseite, ich glaube 10px. @Du könnte das noch eben verändert werden?
Außerdem ist die Ausrichtung der *Pflichtfelder nicht immer auf der selben Höhe wie die Überschrift. Dies gilt für die Seiten:
- Kundenkarte-Antrag stellen
- Registrierung?
- 

https://arithnea.invisionapp.com/share/P6REHYVVQ52#/screens/360321798

@Du könntest du die Schriftgröße noch ändern? Ist momentan für die Seiten Registrierung, Dauerspielantrag und

- *Pflichtfelder auf der Kundenkarte-Antrag stellen Seite ist nicht auf der selben Höhe

- Dauerspiel Antrag stellen = Perfekt
    - 
- 

# 474

- an DU:

    - Popup: Fehler
        - ist z.B. aufgetreten, wenn man denselben Namen für einen Favoritentipp 2 mal speichern will aber das sieht jetzt auch sehr gut aus.

    - Capitalize Fehler bei den Favoritentipps speichern ist immer noch vorhanden
        - Screenshot und Kommentar vom Felix
        - es gibt 2 mal "transform-capitalize"
            - 1. beim aufklappen für alle Elemente
            - 2. nur für das eingeklappte Element

    - nach einem CSS update sollte es jetzt hoffentlich klappen
    - SOSNT
        - AUFKLAPPEN: 
            - es ist entweder in der Klasse: "dropdown-option" oder irgendwie im Zusammenhang mit:
                - _ngcontent-hwa-c19
        - nicht aufklappen:
            - class="ng-pristine ng-valid ng-touched"
            - _ngcontent-hwa-c19


# 334

- Pfeile sind in der mobilen Version weg
- werden die nun wirklich gebruacht???

    - woran liegt das genau?
        - "display: none;" wird zurzeit auch in der mobile Version angewendet
        - kannst du da noch mal einen "@media screen and (min-width: 767px)" einbauen?

    // FÜGE DAS EIN:
    @media screen and (min-width: 767px) {
    .gewinnzahlen-mobile-btn {
        display: none !important;
        }
    }

    - welche Klasse generiert den Pfeil?
        - <button class="btn-text forward gewinnzahlen-mobile-btn" type="button"></button>
        
    - der ist aber immer noch da wieso wird der Pfeil nicht angezeigt in mobile?
        - display: none !important;
            - in gewinnzahlen-mobile-btn
            - soll theoretisch das display none machen, sobald man nicht in der mobile Version ist


# 474

TODO
- Angaben unvollständig:
    - Text ändern "ohne Zeilenumbruch
- Fehler:
    - Text ändern anstatt OK -> Fenster schließen
- Favoriten laden:
    - Satzzeichen "!" anstatt "."

- BUG:
    - als ausgangssituation sollte im Drop-Down-Feld "Meien Favoritentipps" stehen

REST soll DU machen
- Mouseover = schwarz
- 

4 - adesso Tests
4- Tickets Favoritentipps, Startseite

- mein Ticket ist offen auf mich eingestellt
    - 1. bei mir lassen
    - 2. an DU
    - 3. an Felix

- Felix fragen
    - wo sind eigentlich die Texte für die Favoritentipp oder kann ich die nicht im CMS ändern?
    - die sind gar nicht in den Tooltipps oder in den

Fragen:
- wo ich im CMS die Favoritentipp Pop Ups bearbeiten kann
    - savedgame.saved.success.titel
savedgame.saved.success.title

ft_tooltip_modal p_tooltipID:"favorites"


- ft_settings
- ft_html_header
- ft_page_header
- ft_page_body_output
- ft_page_footer
- ft_sticky_menu


Search For:
- modal-xl

spielbestaetigung.modal.spielschein.loeschen.option.loeschen


FEHLER:
Der von Ihnen gewählte Name ist leider nicht zulässig. Er darf maximal 30 Zeichen haben und muss aus alphanumerischen Zeichen bestehen. Außerdem muss der Name je Spielart einzigartig sein.

error.gameprocessing.savedgame.changeName.invalidName

-> Das ok soll zum Fenster schließen werden
-> und der Link ist schwarz beim Hovern



1.  Link wird immer noch schwarz anstatt etwas heller blau
    - "Fenster schließen" bei erfolgreich gespeichert 
    - bei Fehler
        -  (mehr als 5) der OK Link ist schwarz
        - bei Fehler einzigartiger Name
    - Spielhilfe Link beim ?

    -> funktioniert bei:
        -> Favoritentipp laden
            - Bitte wählen Sie einen Favoritentipp aus.
            -> Abrechen
        -> Favoritentipp speichern
            -> Abbrechen
            <button class="btn-text forward ml-0 pl-0" arial-label="Close" data-dismiss="modal">
            -> <span _ngcontent-uvn-c19="">
    


2. Angaben unvollständig
    - "Angabe Unvollständig" ohne Zeilenumbruch
    - siehe Screenshot vom 12.05
    
3. Erfolgreich gespeichert:
    - laut Vorlage ist hier nicht links "Fenster schließen" sondern rechts "Fortfahren" soll das auch noch geändert werden?
    - außerdem größer machen (zu kurz)

4. Fehler:
    - statt dem "Ok" soll "Fenster schließen stehen"

5. Favoriten laden
    - Satzzeichen "!" und kein "."
    - Placeholder mit "Meine Favoritentipps" als Ausgangssituation

6. erst speichern und dann laden
    - zeigt nicht direkt die neuen Favoriten an
    - funktioniert erst nach einem Refresh der Seite
    - ist das ok? Oder dafür ein neues Ticket erstellen?
    - 

7. Favoritennamen können Sonderzeichen enthalten, sogar nur ein Leerzeichen gilt als gültiger Name.
    - könnte das noch zu Problemen führen?

# 416

- Über dem Service ist der Abstand noch zu groß. Da ist auch noch ein ".clean-space" drin
    -> bei Hero (Überschrift)
        - st_headline

1. einfach an jemand anderen abgeben
- 

- Abstand oben zwischen "Service" bei Annahmestellenfinder und dem oberen Kästchen ist größer als in der Vorlage
    - "Clean-Space" drin lassen oder nicht?

- wo ist der Clean Space?
    - nicht auf der Startseite im CMS

# 498

- Hinweise / Fehlermeldungen schließen
- komme an die Stelle nicht dran. Macht nur Arithnea, also wieder zurück zum Martin geben?
- ist sowieso Prio 4

# 463

- Eurojackpot - Quick Tipp ist etwas zu weit nach rechts ausgerichtet
    - soll so sein
- KENO - Quick Tipp ist ganz weg
    - soll so sein
- Spiel-Übersicht
    - die Superzahl ist rechts in der Mitte, nicht linksbündig
        - soll so sein
# 65

- Designänderung der Navigation auf mobiler Ansicht
- sieht ok aus

# 73

144
- Kachel ist nicht verlinkt, soll aber dann wohl auch so bleiben
- Sebastianos schrieb bereits:
    - "Bitte das Verhalten mit LTG klären, sie auch Kommentar von André F."


## 318

// DONE

- Design Änderungen
- die ich alle nicht machen soll???
    - was ist mit dem Zurück-   tton?


1. Am Beginn der Seite fehlt der Link "Zurück zum Spielschein".
// 2. Die Überschrift soll heißen "Möchten Sie am Online-Abo teilnehmen?".
3. Die Schriftart/-gestaltung ub den Tabellenkopf ist zu fett.
// 4. Das Wort "Bezahlung" im Text muss fett und dunkelblau sein. Ebenso wie die Teilüberschrift "Hinweise bei Zahlung über Spielkonto".
5. Der Button "Abonnieren" und der Link "Abbrechen" soll linksbündig platziert werden.
6. Die Absätze sind im Soll-Zustand vorgegeben. Bitte beachten.
// 7. Die Checkboxen zur Bezahlung sollten eigentlich Radiobuttons sein.
8. Die Bezeichnung hinter den Checkboxen/zukünftig Radionbuttons soll in der Höhe mittig platziert sein.
// 9. Bei den Bezeichnung hinter den ersten beiden Checkboxen/zukünftig Radiobuttons fehlt ein Leerzeichen.

"
FOTO + Zuweisen an ! Arithnea. Bitte noch die Buttons kleiner machen, 

Punkte

3, 5, 6, 8

"
Punkte 2, 4, 7 und 9 wurden bearbeitet. Der Rest am besten von Arithnea, inklusive der Verkleinerung der Größe aller Button

ich habe Punkte XXX gemacht bitte noch die weiteren vervollständigen

Zuweisen an Felix


## 386

// DONE

- Backend Änderung

Glücksspirale
- komplett Super 6 und Spiel 77 einbauen?

EuroJackPot
//- Was heißt jetzt genau Validierung bei EuroJackpot?
//- wie das Backend erweitern?
    - EJP am Freitag gezogen
    - LOTTO mit Super 6 und Spiel 77 aber am Samstag danach

// DONE

Gewinnzahlen und Quoten - Glücksspirale
- Gewinnklasse
- Gewinnzahl
- Anzahl der Gewinne
- Quote (e.g. 10Euro)

Gewinnzahlen und Quoten - Lotto
- Gewinnklasse
- Anzahl der Gewinne
- Quote (e.g. 10Euro)



JIRA: LTLR-386 feature: Daten für  Glücksspirale, Gewinnzahlen und Quoten gesetzt

339

- Passwort
- Absprache mit Merle
- DONE

333
- Checkboxen, Edge Design
- kann ich nicht reproduzieren, mal die Merle fragen ob die das Ticket bereits gefixt hat
- DONE

335

- DONE
    Für folgende Input Felder werden trotzdem vorschläge gegeben (ANDERS)
    - Email wiederholen
    - Passwort
    - Passwort Wiederholen

371

- DONE

384

- DONE

367

- kein Pflichtfeld?
    - wie setze ich 2 required statements in Thymeleaf?
        - brauche ich nicht, entweder requried, wenn der Nutzer angemeldet ist?
        - oder aus dem Ticket entnehme ich das Feld soll IMMER required sein


- Validierung auch im Backend
    - ContactFormService.validateContactForm
        - ist dies nicht bereits hier?
            - customerValidationUtils.validateEMailAddress(contactFormData, bindingresult)

## 312

- rd weg machen
- auf welcher Seite ist das???

Suche nach:
- Einstellungen

Globale Inhalte
- Lotto Thüringen Redaktionelle-Einstellungen
    - Produkt Navigation: Glücksspirale

 - Produkt Navigation
    - Produkt Seite
    - st_productPage

- Produkt Logo
    - Zeitpunkt
    - Preisgeld
    - Gewinnchance

    - st_productLogo

    - ft_fragment_product_banner_lotto
    - ft_fragment_product_banner_eurojackpot
    - ft_fragment_product_banner_keno
    - ft_fragment_product_banner_glücksspirale
        - nur wenn man es anklickt
        - 
        
        ft_spiel_navitation
            - line 34, 50
        Seitenteile/Navigation (ROT)
        - 	            	<p th:if="${!#strings.isEmpty(jackpot.praefix)}" th:text="${jackpot.praefix}">rd3. </p>

        - jackpot.praefix
        - 

    // DONE


## 207

- Darstellung Annahmestellensuche
- Abstand bei den Suchergebnissen!!!

- Annehmestellen_Details
    - bei dem Carousel sollen die Navigations-Punkte unterhalb des Bildes, am besten ohne die Größe des Bildes zu verändern

Könnte für die Abstände in der Annahmestellensuche_Übersicht bitte noch ein margin-bottom: 0
eingebaut werden?
- vgl. Annahmestelllen_Überischt_Ist und Annahmestelllen_Überischt_Soll
    - 

Das Carousel ist nun wie in der Angular Vorlage.
- Aber Fehlerhaft?
- das Bild ist halt zu klein
- Die Navigationspunkte sollten nach Vorlage unter dem Bild sein
    - aber d.h. das beide Divs nicht gleich groß sein können?
        - oder das die Punkte außerhalb vom Carousel-Div sein sollen???

"
Nach der Vorlage sollten die Navigationspunkte des Carousels noch unter dem Bild sein kann man das noch mit CSS verbessern?
"

Zuweisen an ???


    // DONE

## 389

- Registrierungs Ticket # 389
- entweder ähnlich lassen
    - dann muss noch berücksichtigt werden, dass bei deinem Refresh nichts gecheckt wird, was da schon steht
    - misc registrierung.html
        - Line.
    - ABER dann gibt es noch keinen Fehler wenn es über dem jetzigen Datum ist
    - kann man noch einbauen
- SONST WENN nur die andere FETT Große Rote Message kommen soll nach dem "Weiter"
    - dann noch mal nach in messages.properties gucken nach "
    - das kommt jetzt, wenn man bei dem Refresh ein falsches Datum hat und es nicht ändert
    -  FUnktion jetzt ist nur bei CHANGE

-> Files:
    - registrierung
    - 
    - 

-> Es gibt 2 Hinweismeldungen einmal der Standart HTML Error und einmal die eigene Custom Meldung
    -> soll ich hier lieber die standard HTML Meldung ändern oder einfach ganz weg machen, sodass es nur eine Fehlermeldung gibt?
        -> diese wird jedoch erst nach dem klick auf dem Submit Button angezeigt

//  DONE


## 325

- man sollte ausgeloggt werden
- th:action="@{/logout}
- 

FRAGEN:

- wenn man den Freischaltcode für die Identifizierung 3 mal falsch eingibt
    - dann wird der Account erstmal gesperrt

- ich würde vorschlagen den Nutzer direkt abzumelden bei der Sperrung
- wo genau soll das passieren?
    - OnlineCheckServicebean
    - assertMaxAttemptsNotExceeded
        - if maxAttempts are reached -> Logout and throw whatever else

- es verlinkt mich nach /identification/onlineidechck.html

- Seite: /fehlerseiten/online-id-check-zugang-gesperrt

LOG

- LTGOnlineIdCheckServiceBean online id check code activation failed for customer 44162
- LTGOnlineIdCheckServiceBean max online id check code validation attempts exceeded for customer 44162

Function:

    assertMaxAttemptsNotExceeded
        - in File OnlineIdCheckServicebean.java


-> create a new Object:
    OnlineIdMaxFailedCountExceededException


    - preLimitService.removePreLimit(customerEntity.getId(), actor);
    -> catch (LoginOnlineIdCheckAccessLockException e) {
            userSessionDataBean.resetCustomer();
            sessionService.invalidateSessionAndCopyAttributes(getRequest());
            LOGGER.error("Maximale Anzahl fehlerhaft eingegebener 1-Cent-Codes ueberschritten!", e);
            return TRANSITION_FAILURE_ACCOUNT_LOCKED;
        }

    ->  Object value = this.method.invoke(target, arguments);
    ->                     return executorToUse.execute(evaluationContext, value, arguments);
    ->             return MethodReference.this.getValueInternal(this.evaluationContext, this.value, this.targetType, this.arguments);

    ->     public TypedValue getValueInternal(ExpressionState state) throws EvaluationException {
        return this.getValueRef(state).getValue();
    }

    ->     public final TypedValue getTypedValue(ExpressionState expressionState) throws EvaluationException {
        return expressionState != null ? this.getValueInternal(expressionState) : this.getTypedValue(new ExpressionState(new StandardEvaluationContext()));
    }

        public <T> T getValue(EvaluationContext context, Class<T> expectedResultType) throws EvaluationException {
     !!   TypedValue typedResultValue = this.ast.getTypedValue(new ExpressionState(context, this.configuration));
        return ExpressionUtils.convertTypedValue(context, typedResultValue, expectedResultType);
    }

...

!!! hier in der nächsten Zeile kackt er zum ersten mal ab
->           catch (FlowExecutionException var21) {  this.handleException(var21, requestContext); }
-> File: FlowExecutionImpl.class

                    return exp.expression.getValue(thymeleafEvaluationContext, evaluationRoot);
        return expressionEvaluator.evaluate(context, expression, evalExpContext);
            return VariableExpression.executeVariableExpression(context, (VariableExpression)expression, expressionEvaluator, expContext);
            return SimpleExpression.executeSimple(context, (SimpleExpression)expression, expressionEvaluator, expContext);
        Object result = execute(context, this, variableExpressionEvaluator, expContext);
        Object value = expression.execute(context);
        boolean visible = this.isVisible(context, tag, attributeName, attributeValue);
                structureHandler.removeAttribute(attributeName);
    public final void process(ITemplateContext context, IProcessableElementTag tag, IElementTagStructureHandler structureHandler) {
                        tagStructureHandler.applyContextModifications(this.engineContext);
                        openElementTag = (OpenElementTag)tagStructureHandler.applyAttributes(this.attributeDefinitions, openElementTag);
    private void parseBuffer(char[] buffer, int offset, int len, IMarkupHandler handler, ParseStatus status) throws ParseException {


// DONE



# TODO / Offen

## 447

JEDEN MITTWOCH FALSCH
- ab 1001 width bis einschließlich 1199


- Abo Abgabe Tabelle zu klein
- nur in iPad Format
    - unter 1440 width - 768

    - von 1200 bis 1440
        - broken 
    - higher than 1440 = -10
    - 1200-1440 = -12
    992

<div th:replace="technisches/fragmente/subscription-information :: vorhandene-dauertipps (${gamingInfo.subscriptionsHolder})"></div>


<div th:replace="technisches/fragmente/spielinformationen :: product-banner (${mainTicket.gameType})"></div>

Arithnea sagen:
- ich brauche ein Bootstrap Column Grid für höher als 1440 Pixel
- e.g. col-xxl-10

Der Abstand wurde verbessert, es fehlt nur noch der Bereich bei einer Breite zwischen 1200 und 1440 Pixel.
Dazu wäre ein Column Grid für höher als 1440 Pixel notwendig was im CSS / Bootstrap verändert werden kann.


## 379

1. error.usermanagement.customer.city.NOT_FOUND
-> -tg-misc -> administration\messages.properties
2. CITY_NOT_MATCHING_ZIP  = "error.usermanagement.customer.city.NOT_MATCHING_ZIP"; // Stadt paßt nicht zur Postleitzahl
-> ltg-mvc -> CustomerErrorCodes.java, RegistrationErrors.java (Not used)
3. CityCheck.java / LTGCityCheck.java

Error für Straße passt nicht zum Ort



-> GlobalError (Der Ort passt nicht zur Postleitzahl4.)
    -> entweder einen Weg finden um genau nach diesem zu suchen
    -> ODER
    -> diesen Error umwandeln von global auf lokalen Registrierungs-Error

- Eingabe PLZ die nicht zum Ort passt
- Eingabe einer Straße die es in dem Ort nicht gibt
    - keine rote makierung. Fehlermeldung oberhalb des Registrierungsformulars

- ja es ist jetzt eine globale Fehlermeldung deswegen erscheint sie oben
- soll es nach unten gepackt werden?
    - oder für dieses Ticket einfach nur 


Der Ort passt nicht zur Postleitzahl.
- 


1. Straße passt nicht zum Ort
- error.usermanagement.customer.street.NOT_FOUND=<br>Die Straße wurde nicht gefunden1.
- die Adresse stimmt nicht ... klicke Weiter wenn du dies ignorieren willst
- 

2. Input wird nicht Rot angezeigt
    - setzte border-danger, wenn der Error da ist
3. Ort-Plz Error soll oben bleiben oder nach unten?
- Der Error Code sollte unten angezeigt werden
- mit Rand 
4. Kann ich irgendwie sagen. Nur wenn genau der Error da ist, dann gib ihn hier aus
- ??

in administration\messages.properties

error.user.registration.city.NOT_MATCHING_ZIP

error.usermanagement.customer.city.NOT_MATCHING_ZIP




message context



Old
 ??? = 'error.usermanagement.customer.city.NOT_MATCHING_ZIP

New
error.user.registration.city.NOT_MATCHING_ZIP   =Der Ort passt nicht zur Postleitzahl23.


    String CITY_NOT_MATCHING_ZIP = "error.user.registration.city.NOT_MATCHING_ZIP";


1. PostalCodeCheck.java
2. CityCheck.java

checkMatchingPostalCode(customerData, errorCodes)
- wird bereits aufgerufen in:
    - CustomerDataValidationBean.java


IN CustomerErrorCodes.java


- Change:

-     String CITY_NOT_MATCHING_ZIP = "error.usermanagement.customer.city.NOT_MATCHING_ZIP";
->    String CITY_NOT_MATCHING_ZIP = "error.user.registration.city.NOT_MATCHING_ZIP";



ProfileDateValidator.java
-> validateInputRegistrationData

ProfileDataValidator.java
- Funktion ValidateCity


USE CITY_NOT_MATCHING_ZIP from RegistrationErrors.java


mapErrorCodes("global", messageContext, errorCodes);


CustomerDataValidatorBean.java
-> checkMatchingPostalCode
    -> createAddressBO(city, postalCode)
    -> createIdentifiedWithSuggestion
RegistrationCustomerDataValidatorBean.java
-> 


checkMatchingPostalCode


AbstractFieldCheck
-> checkMatchingZipCod
-> HIER SOLL ES REIN


ProfileDataValidator.validateCity
-> CityCheck

LTGCityCheck - extends -> cityCheck - extends -> 

create new 


RegistrationCustomerDataValidatorBean
-> checkPlzAndCityComplete


error.usermanagement.customer.city.NOT_MATCHING_ZIP=Die Stadt passt nicht zur Postleitzahl1235421.

## 465

SQL Datenbank Abfrage für:

- Anzahl Kunden mit Favoritentipps
- Anzahl Favoritentipps gesamt
- Anzahl Favoritentipps pro Spielart
- Anzahl Favoritentipps je Kunde
- Zeitraum mit angeben
    - wenn kein Datum da ist, ein festes Datum z.B. den 01.02.2020 angeben


-> VON SAVEDGAMES nach FAVORITES

SAVEDGAMES -> Customer
SAVEDGAMES -> Games

FAVORITES -> CUSTOMERCARDS -> CUSTOMER -> SAVEDGAMES

- Tabelle SAVEDGAMES

    - SGM_CST_ID
    - SGM_GAM_ID
    - SGM_NAME
    - SGM_CREATION_DATE

    - FOREIGN: FK_SGM_CST, FK_SGM_GAM

    CUSTOMERS
    - CST_ID
    - GAMES

- Tabelle FAVORITES:
    - FAV_ID
    - FAV_CUC_ID
    - FAV_SLOW_NUM
    - FAV_TIP

    - FOREIGN: FK_FAV_CUC#

        - CUSTOMERCARDS
            - Fav_ID <-> CUC_ID



1. SELECT COUNT(DISTINCT FAV_CUC_ID) FROM FAVORITES;

2. SELECT COUNT(*) FROM SAVEDGAMES;

3. 
    SELECT COUNT(*) FROM SAVEDGAMES GROUP BY SGM_NAME;

4.  
    SELECT COUNT(*) FROM SAVEDGAMES GROUP BY SGM_CST_ID;

5. 
    SELECT COUNT(*),SGM_CREATION_DATE FROM SAVEDGAMES GROUP BY SGM_CST_ID, ISNULL;

    SELECT SGM_CREATION_DATE, ISNULL(SGM_CREATION_DATE, '01.02.2020') AS SGM_CREATION_DATE

SELECT
    COUNT(DISTINCT FAVORITES.FAV_CUC_ID),
        
    SGM_CREATION_DATE FROM SAVEDGAMES

FROM SAVEDGAMES, FAVORITES;

SELECT X, ISNULL(NAME)

INSERT INTO 

############ TEST

SELECT COUNT(*) FROM SAVEDGAMES WHERE 

SELECT FULL OUTER JOIN

// JOIN at first

-> SELECT COUNT(*) FROM SAVEDGAMES WHERE FAVORITE_NUMBER !=



SELECT
    COUNT(DISTINCT SAVEDGAMES.SGM_CST_ID),
    COUNT(SAVEDGAMES.SGM_CST_ID),                                                                           // SGM_CST_ID
    COUNT(SAVEDGAMES.SGM_CST_ID), GAMES.GAM_TYPE  GROUP BY GAMES.GAM_TYPE,                                 // GAMETYPE = 1, 2, 3, 7
    COUNT(SAVEDGAMES.SGM_CST_ID) GROUP BY SAVEDGAMES.SGM_CST_ID,                                           // AVG(COUNT())
    SGM_CREATION_DATE, ISNULL(SGM_CREATION_DATE, '01.02.2020') AS SGM_CREATION_DATE

    SELECT SAVEDGAMES.COUNT(*)

FROM SAVEDGAMES
FULL OUTER JOIN GAMES
ON SAVEDGAMES.SGM_GAM_ID = GAMES.GAM_ID

select
    A.*
from
    table_A A
where
    A.id in (
        select B.id from table_B B where B.tag = 'chair'
)

select
    A.*
from
    table_A A
inner join table_B B
    on A.id = B.id
where
    B.tag = 'chair'

    SELECT column_name(s)
    FROM table1
    RIGHT JOIN table2
    ON table1.column_name = table2.column_name;

    SELECT column_name(s)
    FROM table1
    FULL OUTER JOIN table2
    ON table1.column_name = table2.column_name
    WHERE condition;

- Anzahl Kunden mit Favoritentipps
- Anzahl Favoritentipps gesamt
- Anzahl Favoritentipps pro Spielart
- Anzahl Favoritentipps je Kunde
- Zeitraum mit angeben

    - wenn kein Datum da ist, ein festes Datum z.B. den 01.02.2020 angeben

## Adesso Test

# 73

- Abstand auf der Glücksspirale Seite stimmt noch nicht ganz
    - etwas weiter nach rechts verschieben
    - Screenshot für den Vergleich zwischen  / hab ich schon gemacht

Siehe Screenshot "

- es ist genauso wie bei KENO
    - ich habe das vllt. auf der LOTTO Seite etwas verschoben mit den col-12 Style

# 123

- Kommentar:
    Die Ausrichtung ist im Angular Projekt richtig, aber noch nicht auf dem Test Server
- Von welche Seite kommt die Nachricht?

- Kommentar geschrieben


## 351

KENO

    - auch für iPad

- Fehler bestehen immer noch
    - 

- unten bei "Laufzeiten wählen" ist es immer noch falsch
- großer weißer Bereich unter den Tippfeldern ist immer noch da
    z.B. auf iPhone XR
    - auch iPhone 6/7/8


- Der Fehler bei "Laufzeiten wählen" besteht auch unter Glücksspirale z.B. für iPhone6/7/8 oder Galaxy S S9


 Tablet Version sieht gut aus aber folgende Fehler bestehen für Smartphones z.B. Galaxy S9 oder iPhone 6/7/8: 
    - große weiße Fläche unterhalb der Tippfelder
    - es sind nur 6 Zahlen pro Reihe nicht 7 bei den Tippfeldern
    - unter Laufzeit wählen

// DONE

## 420

- Kommentar schreiben:
- Jackpotwerte sind da, aber die Lotto Ansicht ist oben etwas abgeschnitten. Siehe Screenshot:
    BILD
- Analog zum Ticket LTLR-352 ist hier noch das Lotto-Logo oben abgeschnitten

// RAUS


## 378

- Registrierungsseite Mobil
    - Erst ab einer Höhe von X Euro
        - da folgende Inputfeld ist zu groß bei:
            - zwischen 577 und 766 Pixel

FUNKTIONIERT NUR bei 767 px

- von 768 bis 1022
zwischen 577 und 1022 funktioniert es nur bei 767px


Das Input feld hinter "Ab einer Höhe von" ist immer noch kaputt. Zwischen 577 und 1022 funktioniert es nur bei 767px.
E-Mail und SMS sind unter 768px in 2 Reihen kann man die noch nebeneinander machen?

- 2 Zeilen

// € Zeichen ist ab 768px im Kasten nicht dahinter 

Breakpoints:
    - 1400px
    - 1024px
    - 768px
    - 375px


// RAUS -> zu Stephan


## 399

- Seite:
    - https://ltg-infocus-test03.test-server.ag/my_lotto/spielhistorie-details.html?game=10011422
    - über Profil Meine Spiel Historie
    - spielhistorie-details.html

- Abstände linker Rand
- Drop-Down-Feld (Gezogene Gewinnzahlen)
- Gewinne
    - von unterschiedlichen Ziehungen stehen zu nah aneinander


- Abstände stimmen noch nicht
    - Spielschein Übersucht etwas nach links
    - Lotto Kleeblatt etwas nach rechts
    - Spieltag, Spiel77, SUPER6 etwas nach rechts


- Gewinn
    Ziehung vom X
    Wie kann ich das denn testen?
    - am besten ohne auf den Gewinn zu warten
    - wie kann ich testen das einer meiner Spielscheine gewonnen hat?
        - wie kann ich testen das ich ein Spiel gewonnen habe? Ohne auf die Ziehung zu warten?
        - ich will nicht bis zur Ziehung warten
        - für die Spielhistorie Seite

http://wl-infocus-test01.test-server.ag:8081/prizegenerator-web/

Line 68:
    <div class="col-md-8" th:unless="${#lists.isEmpty(gameHistoryDetails.prizes)}">

Lokal:

Line 533 - Teilnahmedaten
Line 541 - Gewinn


flwo execution

, Tickets Spielschein-Übersicht, 


- Markup aktualisieren
    - andern als in FE
    - Angular Projekt

# 437 - Pagination Table

- gameHistory.gameTypes
- savedGame.gameType

- Backend Changes:
    - gaming-flow.xml Line 65-76 raus
    - GamingFlowService.java L.327
    - gamblingbansystem.properties  L 91 auskommentieren
    - GamingInfoDTO.java    - getRequestPage() function hinzugefügt

Frontend Changes:
- subscription-information

- Stash: dd76bd84
- Saved working directory and index state WIP on master: dd76bd84 JIRA: LTLR-449 test: Test-fix

- WELCHE SEITE
    - Normalspiel -> Abo Spielschein erstellen (IST)
        - ab 6 Spielen gibt es eine 2. Seite
    - Spielhistorie (SOLL)  
        - ab 11 Spielen gibt es eine 2. Seite
Testserver:
    sohrtacq37@ltg-infocus-test.adesso.de
    https://ltg-infocus-test03.test-server.ag/my_lotto/spielhistorie-details.html?game=10011422



- EMAIL

- Lokal:
    - OLD: nacmpnea56@ltg-infocus-test.adesso.de

    - NEW: sabygkxq05@ltg-infocus-test.adesso.de

- Testserver - infocus
sohrtacq37@ltg-infocus-test.adesso.de

- Pagination / View State Transition für die Tabelle auf der Abo Seite
- view state transition
    - 

th:href="@{${flowExecutionUrl}(_eventId='next-page')}"  // Funktioniert


<!--/*@thymesVar id="subscriptionsHolder" type="org.springframework.beans.support.PagedListHolder<de.ltg.portal.model.subscription.SubscriptionEntryDTO>"*/-->

gaming-flow.xml

Line 64:

- <transition on="next-page" to="show-subscription-payment-method">

# 337

- Schreibweise ändern
    - in "Meine Spiele" ist in der Tabelle für Abos und Favoritentipps "LOTTO" kleingeschrieben
    - auf der Seite Abschluss eines Abos ("Möchten Sie am Online-Abo teilnehmen") wird in der Tabelle LOTTO klein geschrieben
- 

# 214

- Seite: Kontaktformular
    - https://ltg-infocus-test03.test-server.ag/kontakt/kontakt.html
- Eingabefelder mobil zu Eng
- 
- das erste Input Kundennummer überlappt mit dem Fragezeichen
    - DONE
- Abstand zwischen Kundennummer und Anrede ist größer als bei den anderen
    - wahrscheinlich auch wegen dem Fragezeichen
    - ???

- Fragezeichen-Hilfe an Kundennummer ist zu weit oben
    - tooptip vs tooltip::after liegt nicht auf der selben Position

- bei der Fehlermeldung ist das "Neuer Code" viellleicht etwas komisch? Nicht unbedingt schlimm

# 219

- Seite: Spielschein
    - <app-root game="lotto-normal"></app-root>
    - ???

- Felder klickbar machen
    - obere hälfte ist gut so
        - - die ganze Zahl wird als +1 gewertet
        - sollte nicht theoretisch nur die Hälfte der Zahlenfläche als +1 gewertet werden? die untere Hälfte als -1?
    - untere hälfte noch nicht ganz
        - die Fläche zwischen der Zahl und dem Pfeil ist noch nicht klickbar






# 540

// DONE

# 557

- Registrierung
- Passwort Hinweismeldung

- Auf dem Testserver ist unterhalb des Passwort Feldes das required--info noch sichtbar ist
- eventuell wurde hier das "dispaly: none" überschrieben

// DONE

# 553
// DONE - by Stefan


# 540

// DONE

# 514

// DONE - by Stefan


# 445

// DONE

# 519

TODO
- nothing happened?
- macht merle

# 509

// DONE

# 505

// DONE

# 342

TODO

ihxhomau02@ltg-infocus-test.adesso.de

- Guthaben auf dem Firefox funktioniert ist in 2 Zeilen anstatt einer

# 327

TODO

# 337

TODO

# 549

- Spielbestätigung
    - bei der Mobile Version ist die Lastschrifteinzug noch etwas eingerückt
- Spielquittung
- Spiel und Abo Historie


// DONE

# 470

- Spielsperre ist gut
- neue Hinweismeldung ist gut
- alte Hinweismeldung passt nicht mehr (zu klein)
    - wieso ist der Text auch rot?


# 536

- Design Tipps Kugeln

# 512

- Design Menü


# 231

- Auswahlelemente in Listen nicht wie spezifiziert gestyled
- PROBLEM schon angesprochen von Nima
    - sagte vielleicht werden wir das Design dafür machen

# 476

- Sammelticket

Error hinzufügen:

- Lotto:
    - Bitte geben Sie eine Zahl zwischen 1 und 49 ein.
    - error.lottostatistiken.histogramm.nexthistogramm.INVALID_NUMBER
- Eurojackpot:
    - Bitte geben Sie eine Zahl zwischen 1 und 50 ein.
- Keno:
    - Bitte geben Sie eine Zahl zwischen 1 und 70 ein.
    - error.kenostatistiken.histogramm.nexthistogramm.INVALID_NUMBER

- Histogramm: Bitte geben Sie eine Zahl zwischen 1 und 49 ein.
- AppResources.properties:
    - error.lottostatistiken.histogramm.nexthistogramm.INVALID_NUMBER=Bitte geben Sie eine Zahl zwischen 1 und 49 ein.
- attributemapping.properties:
    - error.lottostatistiken.histogramm.nexthistogramm.INVALID_NUMBER=luckyNumber


- backward mouse button
    - tab?
    - shift + backward button?
    - shift + forward button?

- shift + q
    - alt + q
- shift + w
    - alt + w
- shift + s
    - shift + d

- control / shift + c
- control + v
- control + a
- control + f


OLD VERSION:

<div class="teaser1rowStart">
  <div class="content1row">		
		<span class="headline">Histogramm</span>
                <div class="contentblock">
                  	&Uuml;berpr&uuml;fen Sie hier Ihre pers&ouml;nliche Gl&uuml;ckszahl, wie oft diese in den letzten Jahren im KENO ausgespielt wurde.
                	<div class="lineLight"></div>
                	<div class="fLeft">
                    	<html:text property="luckyNumber" name="KenoStatisticsHistogrammForm" size="2" maxlength="2" style="width:20px;"/>
                	</div>
                	<div class="fRight">
                    	<input type="button" class="button1row" name="Text 1" value="Weiter" onClick="sendForm('KenoStatisticsHistogrammForm','nexthistogramm');" />
               		</div>
                	<html:errors header="errors.header.90" property="luckyNumber"/>
                </div>
                <div class="fClear"></div><span class="teaserLink"><a href="#" class="toTopLink">Zum Seitenanfang</a></span>
  </div>
</div>

Barometer
-  (/) Text geändert von 49 -> 50 + Besonders gekennzeichnet ...

- Histogramm
    - (/) Glückszahl hervorheben (Fett, oder als Kugel?)
    - Error anzeigen wenn eine Zahl nicht zwischen 1 und 50 ist

Wie oft Gezogen
- (/) zurück button funktioniert nicht
- Anchorpunkt setzen
- (/) bei KENO steht LOTTO

TEXTE ANPASSEN VON IHM SELBER

// DONE

- Die TAN ist nicht korrekt. Bitte versuchen Sie es erneut.
- validation.error.user.mobile.mtan.MALFORMED
- error.gameprocessing.mobiletan.wrongTan

style="width: calc(100% - 50px); left: 25px;"

9:20 - 17:00 + 15min break = 9.5h
M / 8.5
T / 

Fix Version:
4.3.27.13

SpiraTest TR:552634

- Spielhistorie-details mobile
- 


6,7

in 23

10km/h = 5k in 30min
10km/h = 1k in 6min
10km/h = 0.1k in 0.6min

10km/h = 6,7k in 1

10km/h = 6.7km in 40.2min
20km/h = 6.7km in 20.1min
16km/h = 6.7km in 25min

12km/h
------------------------




- Nachlieferung mit CTF?

- Auslieferung im Jenkins
    - starten dann macht er alle Tests 
    - core, ltg-core, ...
    - im CMS export Unit


Thüringen:

Andre
Merle
Martin
Ich
Felix
Stefan, Siekaup
Stephan, Ziemke


Visbug
