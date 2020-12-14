# Wechsel den View-State

1. In <a> mit th:ref

    <a th:href="@{${flowExecutionUrl}(_eventId='next-page')}"> </a>
    
    'next-page' ist hier der ON='next-page'

2. Mit <button>

    <button class="btn btn-link" name="_eventId_last-page" type="submit">Letzte</button>


# How Errors Work:

Implementation in HTML:

1. Unless Error / hasErrors

    <h6>E-Mail *</h6>
    <input type="email" placeholder="Hier E-Mail-Adresse eingeben" th:errorclass="border-danger" name="emailAddress" th:field="*{emailAddress}"
            maxlength="50" id="ltg-email-address" required>
    <div class="required required--info" style="display: none;" th:unless="${#fields.hasErrors('emailAddress')}">
        <p>Hier E-Mail-Adresse eingeben</p>
    </div>
    <div class="required required--error" th:if="${#fields.hasErrors('emailAddress')}">
        <p th:errors="*{emailAddress}">Error Message.</p>
    </div>

2. <html:text property>

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

1. im HTML wird es mit dem Namen ins Thymeleaf Backend geschickt. e.g. (Error mit dem Name: "emailAddressConfirmation")
2. dann wird im Kontext (th:object="${profileData}") nach dem Error gesucht
3. im Bakcend (Java, LTG_MVC) wird dann eine Java Funktion aufgerufen ( validateInputRegistrationData() )
4. Diese wird über den Flow aus der registrierung-flow.xml aufgerufen


# Lokal HTTP Error beim Spielschein

Http failure response for https://localhost:8443/api/lotto/normal/init: 500 Internal Server Error

-> 

# Simulator starten (Spielschein abgeben funktionieren nicht)

- WENN er beim abgeben vom Spielschein auf die Seite kommt:

	"Unser Spielsystem steht zurzeit leider nicht zur Verfü;gung

- DANN

In der Properties-Datei gatewayserveradapter.properties der entsprechenden Umgebung die folgende Property einkommentieren:
	
AccessImplementationClass = de.adesso.infocus.component.gameprocessing.gatewayserveradapter.access.simulator.gtech.GatewayServerSimulatorGTechV1
Die anderen Einträge der AccessImplementationClass müssen auskommentiert sein.
	
	Wenn keine Änderung des Gültigkeitsdatums vorgenommen werden muss, reicht es, die Properties über die entsprechende Methode der MiscellaneousManagement-MBean neuzuladen.


Klartext:
- über WinSCP in den Testserver einloggen
- dann /basedir/config/test/properties/gatewayserveradapter.properties		Datei ist es in der letzten Zeile

- kommentar in der letzten Zeile raus nehmen und überall anders wieder rein
- Dann:
	-> Die Properties über die entsprechende Methode der MiscellaneousManagement-Bean neuladen
	
	https://localhost:8443/jmx-console/HtmlAdaptor?action=inspectMBean&name=infocus.ltg%3Aservice%3DMiscellaneousManagement%2Cname%3DMiscellaneousManagement


# Gewinn hinzufügen

https://confluence.adesso.de/pages/viewpage.action?pageId=15239277
-> http://wl-infocus-test01.test-server.ag:8081/prizegenerator-web/prizedata.xhtml


1. importdatei erstellen
2. Datei ablegen auf:
	C:\Projekte\LTG\ltg-core-mvc\ltg-core\basedir\import\gewinndaten
	bzw. in Linux unter:
	/basedir/import/gewinndaten
3. Admin Account - Systemadministrator (system, system1)
	- Spieleverwaltung->Lotteriegewinne importieren
		-> Importieren für die richtige Datei (eventuell Oben auf Weiter)

# Account Sperre aufheben

Entsperren:

- DB -> GAME -> LOCKS
0. Suche den Eintrag wo LCK_USR_ID = 0 ist oder wo in LCK_REASON_LOCK steht: Sperre wegen zuvieler fehlerhafter Loginversuche
1. den LCK_STATUS auf 2 setzen
2. das Datum ändern, LCK_UNLOCK_TSP von NULL auf irgendeinen Wert setzen


----------------------


Verlinkung von Gewinnspiel.html -> nach teilnahme-erfassen.html
1. gewinnspiel-flow.xml
2. path.mapping.properties: hier steht der Link zu Teilnahme erfassen
	2.5 or path.mapping-fs.properties	: oder hier ist der (eigentlich richtige?) Link

- Im CMS muss ich nicht zur Succes-URL verlinken, sonder einfach zur /gewinnspiel.html. Diese verlinkt mich dann zum "richtigen" Pfad


VERÄNDERT: path-mapping.properties Line: 69 von
=/gewinnspiel/gewinnspiel-teilnahme-erfassen.html
auf
=/gewinnspiele/teilnahme-erfassen.html


ltg-core

- ltg-mvc
- useful files
    - DomainValueService.java
	- RaffleFlowComponent
	- teilnahme-erfassen.html
	- bilderrätsel relaunch 2020


- oben rechts (build)
	- infocus-parent
	- ltg-parent
	- ltg-deploy [clean, install...]
	- ltg-web-mvc
	- unnamed - for Debugging

Deployen:

- Java Control Panel
	- Windows -> Configure Java
	-> Sicherheit -> Sitelise Bearbeiten -> neuen Link hinzufügen

Reminder:

## Admin Seite

https://ltg-infocus-test03.test-server.ag/admin/admin/adminswitch.do
https://localhost:8443/admin/admin/noteshow.do#

Benutzername: system
Pw:	system1


# WinSCP - ftp
	- WinSCP

	- ltg-infocus-test01.test-server.ag
	- Port:22
	- benutzername: jboss/jboss

	- ltg-infocus-test03.test-server.ag
	- Port:22
	- benutzername: jboss/jboss

	- wl-infocus-test01.test-server.ag
	- Port:22
	- benutzername: jboss/jboss


	/home/jboss/ 
	TODO


# Projekte neu aufsetzen

1. ltg-core legacy Version 	-> Ant

- JBoss starten:
	- IntelliJ rechts "Ant" -> Meta-Distribution LTG
		-> runJBoss

ODER:
	- im Ordner

2. ltg-core-mvc 				-> Maven Compiler

vorher:
	C:\Projekte\LTG\ltg-misc\jboss-5.2.0-eap_ltg\bin
	- Line 3 anstelle von Line 4 wiederherstellen


-> Server Starten:
	Der JBoss-Server kann mit dem folgenden Skript gestartet werden:
		C:\Projekte\LTG\ltg-misc\jboss-5.2.0-eap_ltg\bin\_ltg.bat
	oder
		C:\Projekte\LTG\ltg-misc\jboss-5.2.0-eap_ltg\bin\_ltg_debug.bat

	->	https://localhost:8443/

# IT Support

- Windows -> SoftwareCenter

- Alle meine Tickets ansehen:
	- Intranet -> Unternehmen -> IT Betrieb
		https://services.adesso-group.com/

# Homeoffice / VPN

Email vom 16.03.2020

- einfach bei Verbindungen die Adesso (Primary) auswählen und mit meinen Accountdaten einloggen

- Benutzername: ***
- Kennwort: ***
- Anmeldedomäne: adesso


## Sourcetree

1. Datei Status, alle Daten auswählen und auf "Ausgewählte vormerken" gehen
2. unten den Kommentar schreiben und "Commit"
3. oben Push (auf Master Branch pushen)

- Commits
	- Jira: TicketName
	- Feature: NAME

	oder Bugfix: ...

- Commit Comment Examples
	- 

Wenn ich den Branch nicht wechseln kann, dann sind wahrscheinlich einige Changes nocht nicht commited oder Stashed

# Passwords

- First Spirit Testserver für Lotto Thüringen Projekt (Admin, Admin)	http://ltg-infocus-test02.test-server.ag:9000/index.jsp
- First Spirit Anmeldung ()

# DB-Tools / DBeaver

Identverfahren Code:
- in der Datenbank (DBeaver)
	- Lotto Thüringen -> test03 -> Schemas -> Game -> Tables -> ONLINE_ID_CHECK_CODE -> Columns -> OIC_Generated_Code

	Localhost:
	- Lotto Thüringen -> Localhost -> Schemas -> GAME -> Tables -> Game -> ONLINE_ID_CHECK_CODE -> Tables -> OIC_Generated_Code

- Suchen oben z.B. mit  OIC_GENERATED_CODE='someCode'

### SQL-Testing in DBeaver

- oben SQL-Editor
- oben aktiver Katalog einstellen (gibt quasi die richtige DB an bzw. nur die richtigen Daten)
- Test starten:
	- alles markieren und Strg + Enter

#####################

dBeaver
- ältere version
- C:\Users\konhardt\AppData\Roaming\DBeaverData\workspace6\General\.dbeaver
db visualizer

# CMS (Content Management System) / FirstSpirit

## Starten:

### Neue Version

http://ltg-infocus-test02.test-server.ag:8000/?login.ticket=1cb7w6a4d34qf#
- konhardt
- konhardt

Projektentwicklung (Rechts)
- runterladen und starten

- Freigeben => Rechts klick => Extras => Freigeben
- im roten freigeben bedeuted einfach nur raus aus dem editier Modus

### Alte Version FirstSpirit

Beim ersten start Suche nach "Configure Java"
- unten Aufnahmeliste bearbeiten und denk Link hinzufügen
	- e.g. http://ltg-infocus-test02.test-server.ag:8000/


- First Spirit oder e-Spirit
- Starten:
	- http://ltg-infocus-test02.test-server.ag:9000/index.jsp 	- SiteArchitect herunterladen
	- starte FirstSpirit.jnlp
		- Admin
	- 


#### Debug

- im Browser anzeigen lassen
- Error klick links Logs anzeigen?
- dann Filtern auf WARNINGS und nochmal suchen

#### Datei herunterladen:
	- Starte WinSCP
		- Anmeldung ist gespeichert unter der Sitzung LTG-FirstSpirit oder:
		- ltg-infocus-test01.test-server.ag
		- Port:22
		- benutzername: jboss/jboss
		-> ein paar Ordner hoch und nach der Datei suchen
	


HTML / Jsp File unter:
- /basedir/jboss/server/infocus/deploy/lotto.war/de/portal/global/gewinnspiel

Log File unter
- /opt/jboss/5.2.0-eap/server/infocus1a/log/infocus-logfile.log


# Spring Boot

- thymeleaf Docs
	- https://www.thymeleaf.org/doc/tutorials/3.0/usingthymeleaf.html

## Befehle

- Control+e => Bearbeitungs-Modus
- Auge -> Vorschau (Geht nur in Grün oder Blau)
	-> Gewinnspiel_2019 -> Auge / Strg+P
	-> Rechtsklick + Extras + Freigabe + Standard

- Links Grün (Inhalt)
	- 
- Links Blau (Struktur)
- Links Rot (Vorlage)
- Links Gelb (Medient)
	- JS datei hochladen

- Bild hochladen
- Bild referenzieren
	- '$CMS_REF(st_front_image, abs:fr_absSetting)$';	- für Bilder
	- $CMS_IF(!st_success_url.isEmpty)$			$CMS_END_IF$
	- 
	- $CMS_TRIM(level:4)$	-> ???

- Create $CMS_VALUE
	- In der Vorlage (Rot) -> Formular muss ein neues Element angelegt werden
		- dann speichern, Bearbeiten beenden
	- Dann im Inhalt (Grün) einen Wert vergeben
	- Dann kann man es z.B. in Vorlage -> html 	benutzen z.B. mit $CMS_VALUE(st_option_1)$

- alle Daten Freigeben (hauptsächlich Grün und Rot)
- dann über Projekt - Auftrag ausführen
- https://ltg-infocus-test01.test-server.ag/lottoth/de/portal/global/gewinnspiel/gewinnspiel_2019.jsp



- nach jedem speichern vom Inhalt. Immer noch die Freigabe erstellen
	- Rechtsklick - Extras - Freigabe

## Neue Version FirstSpirit starten

- http://ltg-infocus-test02.test-server.ag:8000/
	- konhardt / konhardt
-> Site Architect
-> config.fslnch starten	/ liegt im Download Ordner


# Jira

- Prioritäten / Prios:
	- ??? (1)
	- Critical (2)
	- Major (3)
	- Normal (4)
	- Minor (5)
	- ??

# intellij

- Account:
	- Andre.Konhardt@adesso.de
	- adessoSport1
	- Andre1189
	- Licencing id: BBTPJ26TCQ

- Ant vs maven

## Shortkeys

Suche File -> Shift+Shift
Project Structure Setting -> Strg + Shift + alt + s
Go To Decleration -> Ctrl + Click


# Maven

- pom.xml
- src ->  main/test -> java/resources -> de -> 
- target

# Ant

- build

- die Reihenfolge ist wichtig, wenn man dependencies hinzufügen will
- nicht vergessen: - "libs-ext-Itg-admin" wurde in "ltg-web" gelöscht (File->Project Structure)

- full build und jBoss neu starten
	- für komplette neu Kompilierung

# java:
	C:\Windows\System32\java.exe
	- Version 1.7.0_80 (Java 7)


# Spring Boot

- some frontend stuff done with bootstrap 

# Bootstrap

- wir benutzen Version 4.3.1

# wlan
- adesso.local


# Git
- Feature Branch
- developer


- commits:
	- git commit -m "Jira: LTLR-9 Feature: KenoHistogramm ergänzt"
	
Examples:

	"Jira: LTLR-9 Feature: KenoHistogramm ergänzt"
	"JIRA: SUPLOTTOTH-1671 bugfix: Anzeige Sonderauslosung"
	"Versionsnummer auf 4.3.26.5 erhöht"
	"Anpassung OASIS Einstellungen für stunnel"
	"infocus location für ci angepasst"

# good to know:

- what is jsp file?

- jBoss => WildFly Application Server
- FirstSpirit
	- starten
		-> FirstSpirit.jnlp öffnen

	-> Kommentar => Leerzeichen 
	-> 

- LTG

Einarbeitung, einrichten der Umgebung, Architektur

LOTTO Thueringen lokal ausführen

- debugging
	- Putty
		- ltg-infocus-test01.test-server.ag	: 22
		- username: jboss/jboss

BZW Schreibweise:

	jboss@ltg-infocus-test01.test-server.ag
	pw: jboss

# JBoss

...

# Db2

Installation Path
	- C:\Users\konhardt\AppData\Local\Temp\EXPC		- setup.exe
	- C:\Program Files (x86)\IBM\SQLLIB\			- SQL Lib
	- C:\Program Files (x86)\IBM\IBM SSH Server\ 	- SSH Server
	- C:\Users\konhardt\Documents\PROD_EXPC.rsp   	- Antwort Datei

JRebel:
	- C:\

Meine Lokale DB

- localhost:50000
- GAME_LTG
- Adesso1234
- Adesso1234

PWs:
Adesso123
Adesso1234
Admin - Admin -> Lotto
0000 -> Lotto Pin für irgendwas


adessoSport1 - db?ß oder wofür?


# Telko - Swyx

https://intranet.adesso.de/it-betrieb/anleitungen/Seiten/swyxit-in-geschaeftsstelle-einrichten.aspx

Server:

	​dtm-tk01.adesso.local

Benutzername:

	Konhardt, Andre		ODER André ??
	PW:
	"Dein Initialkennwort kannst du bei uns vom IT-Support erfragen und dir dein eigenes Kennwort setzen lassen. Nutze hierzu die Hotline 0231/7000-9242 oder schaue bei uns am Tresen vorbei."


# Zeiterfassung - ERP - UBW

1. ArbAuftr - Einarbeitung Andre Konhardt
2. Projekt
3. Aktivität NKV -> nicht kunden berechenbar
4. Text ...
5. ACE (leer)
6. Arbeitsort - adesso - Dortmund	(DTM)
7. Zeiteinheit - Std
8. 8,30 = 8 ein halb Stunden

adesso/SC L LA 1 (Java) (Ab 01.17)


Status: Entwurf NICHT anfassen
vor dem Speichern Haken setzen
Dann auf Bereit und nochmal speichern

# $

4 Weeks:
    69*13 = 
    690+207= 897

5 Weeks:
 86*13 =
 860
+240
+ 18
= 1128

# Emails vom JBoss Server kreiert

http://testmx.adesso.de/roundcube/

LTG:
Benutzer: ltg-infocus-test
Passwort: geheim

Westlotto1:
Benutzer: wl-infocus-test
Passwort: geheim

Westlotto2 - infocus:
Benutzer: wl-infocus-inttest
Passwort: geheim

Westlotto3 - localhost
Benutzer: wl-infocus-dev
Passwort: geheim

# Identifizierung abschließen

- DBeaver anmelden
- dann auf die DB gehen
- dann den Status ändern

# Iban Generator

https://confluence.adesso.de/display/LOT/Iban+Generator
http://wl-infocus-test01.adesso.de:8081/iBanGenerator-web/iban.xhtml

# Jenkins

https://ci02.adesso.de/jenkins/job/lotto-thueringen.de/job/ltg-deploy-manual/

## Anmeldedaten
konhardt
konhardt / MEIN PW

NEUE DATEN VOM MARTIN nur für Westlotto?
konhardt
konhardt$1

# N

David ...
- sitzt bei mir? Mittwoch und Freitag
- wer war dann das Mädchen auf der Weihnachtsfeier?

Jens Kossek (30.11.????)
- 
Torsten Schlüter ()
- 
Felix Reß
- seit 2011 hier bei adesso
Viktor Mucha (11.11.????)
- seit 2012 hier bei adesso

NEUER = Stefan ...
- wohnt in Köln, vorher bei Bitmark hilft uns etwas aus
- 

...

Adnane Elkemiri
Gutzeit Merle
Theresa Ledermann

Martin Höser
Sebastianos Mouratoglou
Dominik Mohr
André Firchow
- 03.01
Chris / 17.02
Stefan Ziemke / 28.11

Bianca Batsch
Niklas ...

Sven
- Abteilungsleiter		


Nima ->Arithnea


# Sonstiges

bezahlt wird nur wenn alles transferiert ist

- rad
- alle 2 Jahre
- SE

AU einreichen am ersten Tag - abwesenheiten@adesso.de
1/5 
- 20Tage urlaub bei 5 Tage Woche, wir nur 8 Tage im Jahr bei 17 Stunden

- eigene Verantwortung für Kranken oder Pflege versichernung
intranet.adesso.de/human-ressources/Seiten/Informationen-f%C3%BCr-Studierende-und-Praktikanten.aspx

Urlaub einreichen:
5. Urlaub
Als studentische Mitarbeiterin, studentischer Mitarbeiter oder Praktikantin, Praktikant hast du ein Anrecht auf bezahlten Erholungsurlaub. Bei einer 5-Tage-Woche beträgt dieser Anspruch 20 Tage Urlaub im Jahr (bei einer 17 Std.-Woche an 2 Arbeitstagen entsprechend 8 Tage/Jahr).

 

Bitte beachte: Der Urlaub ist nicht über UBW zu beantragen.

Wie du den Urlaub beantragen kannst, findest du unter den Punkten „Urlaubsvergütung für Vergütungsverträge mit Stundengehältern" bzw. „Urlaubsvergütung für Vergütungsverträge mit Monatsgehältern".

Krankmeldung:

	https://krankmeldung.adesso.de/login

	Bei Krankheit musst du so früh wie möglich (spätestens bis 10 Uhr) am betreffenden Tag telefonisch in der Dortmunder Zentrale Bescheid sagen, dass du nicht zur Arbeit erscheinst. Bitte gib auch die Namen der adesso-Mitarbeiter an, die über deinen Arbeitsausfall informiert werden sollen. Projektmitarbeiter sollen darüber hinaus die im Projekt zuständige Person über den Ausfall informieren.

	Melde dich bitte nicht per E-Mail oder in den Sekretariaten der Geschäftsstellen (BER, FFM, CGN oder MUC) krank, sondern fernmündlich unter 0231 7000 7000 in Dortmund.

	Spätestens am dritten Krankheitstag ist eine Bescheinigung vom Arzt

	(Arbeitsunfähigkeitsbescheinigung) bei der HR-Abteilung einzureichen. 

- Krankheiten Studierende:

	4. Krankheiten
	Bei Krankheit musst du deine Führungskraft so früh wie möglich (zwischen 08 Uhr und 10 Uhr) am betreffenden Tag telefonisch in Kenntnis setzen, dass du nicht zur Arbeit erscheinst. Bitte gib auch die Namen der adesso-Mitarbeitenden an, die über deinen Arbeitsausfall informiert werden sollen. Als Projektmitarbeiterin oder Projektmitarbeiter informierst du darüber hinaus die im Projekt zuständige Person über deine Abwesenheit. Deine Arbeitsunfähigkeitsbescheinigung sendest du bitte per Scan an abwesenheiten@adesso.de mit dem Hinweis, dass du studentische Mitarbeiterin oder studentischer Mitarbeiter bist. Eine AU wird für die Berechnung der Lohnfortzahlung ab dem ersten Tag benötigt. Du hast einen gesetzlichen Anspruch auf Lohnfortzahlung bei Vorlage der AU. Die Lohnfortzahlung entspricht 1/5 des vereinbarten Wochenentgelts pro Tag, ausgehend von der Wochenarbeitszeit in deinem Anstellungsvertrag.


pw:

tutorialspoint / codingground : Java sandbox
an.kon menschTechnik7


## Welcome Day für Studierende

https://intranet.adesso.de/human-resources/_layouts/15/WopiFrame.aspx?sourcedoc=/human-resources/Lists/OeffentlicheDokumente/Welcome%20Day%20Mappe%20f%C3%BCr%20Studenten.pdf&action=default&DefaultItemOpen=1



GENERAL INFOS:

- SLG - Sächsische Lotterie GmbH
- TSL - Thüringer Staatslotterie
- LTG - Lotto Thüringen
- WL  - Westlotto


https://www.sachsenlotto.de/portal/user/initportal.do
https://www.lotto-thueringen.de