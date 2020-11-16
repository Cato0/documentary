WESTLOTTO

Links:

// Weboberfläche
https://localhost:8443/
wl-infocus-test01.test-server.ag:8080/

// JMX Console
http://wl-infocus-test01.test-server.ag:8080/jmx-console/


// External Services Management Bean - funkt NICHT
https://localhost:8443/jmx-console/HtmlAdaptor?action=inspectMBean&name=jboss.j2ee%3Aear%3Dinfocus.ear%2Cjar%3Dwestlotto_components.jar%2Cname%3DExternalServicesManagementMBean%2Cservice%3DEJB3%2Ctype%3DManagementInterface

// ?? Funkt NIcHT
https://localhost:8443/jmx-console/HtmlAdaptor?action=inspectMBean&name=jboss.j2ee%3Aear%3Dinfocus.ear%2Cjar%3Dwestlotto_components.jar%2Cname%3DExternalServicesManagementMBean%2Cservice%3DEJB3%2Ctype%3DManagementInterface


Handbuch:
- https://confluence.adesso.de/pages/viewpage.action?pageId=7438677

Git pull, tägliches herunterladen:

- D:\Projekte\Westlotto\infocus
- D:\Projekte\cms-mvc-git
- D:\Projekte\infocus-core


Commit Regeln:

- https://confluence.adesso.de/display/LOT/in%7CFOCUS-Core+4.4+-+SVN-Commit-Regeln

JBoss starten:

- D:\JBoss\jboss-eap-6.3\bin
  -> standalone_dev.bat öffnen


- Java: 1.8
- Maven: 3.3.1    , (JETZT habe ich 3.6.2 in der Umgebungsvariablen)
- Laufwerk D


- jBoss:
  - C:\JBoss\jboss-eap-6.3


-jRebel:
  - C:\Dev\jrebel-6.5.2


# JMX Console

## Neuen Customer Registrieren

- ganz unten westlotto.startup
  service=CustomerManagement

-> registerEPostidentCustomer
ODER
-> registerNewGiropayCustomer

e.g.

gen202053010114@wl-infocus-dev.adesso.de
gen20206149314@wl-infocus-dev.adesso.de

# Git Daten Herunterladen

1. infocus-parent

Build:

- NACH dem RUN von westlotto-deploy kam folgendes:
  - Creating D:\Projekte\Westlotto\infocus\sourcen-deploy\target\deploy\wlportal-mvc.war.dodeploy
  - D:\Projekte\Westlotto\infocus\sourcen-deploy\pom.xml to C:\Users\konhardt\.m2\repository\de\adesso\infocus\westlotto-deploy\1.0.0\westlotto-deploy-1.0.0.pom
  - BUILD SUCCESS


- lokale Spielscheine kommen woher?
  - westlotto
     beim bauene ein CMS projekt eingezogen aus POM.xml
     - uaf CMS
    - aus den deploys
    - test03 autoomatisch anstoßen
    - westlotto verschiedene testsysteme 
      - dev 


# intelliJ Projekt bauen

Am Beispiel von Westlotto:

Handbuch:

https://confluence.adesso.de/pages/viewpage.action?pageId=173467948#Handbuchf%C3%BCrEntwickerv2-JRebel

- 1. File -> Project from existing Sources
    - pom.xml auswählen
- 2. Bauen / von Modulen?
    - RUN -> Edit Configurations -> WEITER IN DER ANLEITUNG
- 3. jBoss (Webserver) starten

    - D:\JBoss\jboss-eap-6.3\bin\standalone_dev.bat
        -> darüber wird das Projekt dann gestartet

- 4. Deploy Projekt
    - die 3 "Module"? oben rechts einmal starten (RUN, Pfeil)
      - infocus-parent
          - lädt dependencies herunter z.B. commons-configurations, ObjectFactory.java etc.
            -> "AN unknown compilation problem occured"
            -> with Java Compiler (Java 1.8.0_251)

      
      - westlotto-parent
      
        -> download westlotto dependencies and files for example SISSDownloadFtpClient.java
      
      - westlotto-deploy
        - BUILD SUCCESS

      - ist die Reihenfolge wichtig?

# Datenbank mit DBeaver verbinden:

- manuelle Verbindung war bei mir für Westlotto nötig


-> Rechtsklickauf Westlotto (im Datenbanknavigator) -> Anlegen -> Verbindung
-> IBM DB2 auswählen
  -> dann die Daten aus dem Handbuch eingeben z.B.
    -> Host : wl-infocus-stag02.test-server.ag Port:50010
    -> Schema bzw. Datenbank:  GAME_CAT
    -> Benutzer und PW: db2ugame
-> und fertigstellen


Probleme:
S: 9
-> 16:00
10/10
6,66:/7


- woran liegt es?

  - DB Fehler?  "Failed to obtain DB connection"
  - brauche ich diese Lottery APIs die in der Anleitung sind?
  - 

ich habe gemacht:

- install new maven, java, jrebel, jBoss
- jBoss configuration
- alles auf Datenträger D gebaut, neuen Datenträger + CD Laufwerk Probleme
  - Bereinigungsprobleme für ein Volumen aus Laufwerk C
- DBn
- intelliJ Maven Configurations


# jRebel

- download
- start /bin/jrebel-activation.jar
- "i already have a licence"
- "Connect to Licence Server
  - https://license.adesso.local:8443/f92c9286-9fb2-467b-8eea-5bb93c52fc98
  - meine Email



# Datenbank

---------  west lotto Core versucht immer noch auf localhost:5000 zuzugreifen   ------------------


- entweder Lokale Datenbank erzeugen
  - dieses WIEDERHERSTELLEN?? aus der Anleitung
  - sonst nimm die    wl-infocus-stag02.test-server.ag    50010   DatenbankName: GAME_LIV

  - Diese infos müssen eingetragen werden auf der Datei:
      D:\JBoss\jboss-eap-6.3\standalone\configuration\standalone-dev.xml
        - datasource ändern an 2 stellen

          Vorher:
                  <connection-url>jdbc:log4jdbc:db2://localhost:50000/GAME:currentSchema=GAME;</connection-url>

          Nachher:
                  <datasource jta="false" jndi-name="java:jboss/QUARTZDS" pool-name="QUARTZDS" enabled="true" use-ccm="false">
                    <connection-url>jdbc:log4jdbc:db2://wl-infocus-stag02.test-server.ag:50010/GAME_LIV:currentSchema=GAME;</connection-url>
                    <security>
                        <user-name>db2ugame</user-name>
                        <password>db2ugame</password>
                    </security>


-> für intelliJ
  - DB auch in der flyway.properties ändern


### Konfiguration für dev

flyway.properties
  - D:\Projekte\infocus-git\basedir\config\common\properties\flyway.properties
- habe ich aus der pom.xml auskommentiert
  - D:\Projekte\infocus-git\sourcen-core\pom.xml (GLAUE DIESE POM?!)

- ist nur für lokale Datenbank (localhost)

Vorher:

flyway.url                   =jdbc:db2://localhost:50000/GAME
flyway.user                  =db2agame
flyway.password              = Adesso1234
flyway.schemas               =GAME
flyway.table                 =schema_version
flyway.encoding              =ISO-8859-1


Nachher:
flyway.url                   =jdbc:db2://wl-infocus-stag02.test-server.ag:50010/GAME_LIV
flyway.user                  =db2agame
flyway.password              = db2agame
flyway.schemas               =GAME
flyway.table                 =schema_version
flyway.encoding              =ISO-8859-1

Blender vs. openGL



- intelliJ
  - infocus-parent
    - "An unknown compilation problem occured"
    - irgendwas mit der Java Version???
      - nachdem ich neustart? und Maven Version geändert habe ging es dann
        - Maven wurde geändert in: intelliJ -> File ->  Settings (Strg + Alt + s) -> Build, Execution, Deployment -> Build Tools -> Maven -> Maven home directory: von "Bundeled (Maven 3) auf den genauen Pfad von Maven 3.3.1 gesetzt
      - jetzt ist 1.8.0_251
      - im Handbuch steht Version 1.8.0_40

  - Westlotto-Parent
    - Klasse ist doppelt z.B. "SISSDownloadFtpClient.java"
      - einmal in         D:/Projekte/Westlotto/sourcen-core/java
        - und einmal in   D:/infocus-core/sourcen-core/java/de/adesso
        - 

      - D:\Projekte\Westlotto\infocus\sourcen-core\java\de\adesso\infocus\component\usermanagement\wlsisslock\ftp
      - D:\Projekte\infocus-core\sourcen-core\java\de\adesso\infocus\component\usermanagement\sisslock\ftp
      
      - org.codehaus.classworlds.Launcher.main

Maven einbauen
- aktiv vorher: Bundeled (Maven 3)
- nicht aktiv vorher: C:/Program Files/JetBrains/IntelliJ IDEA 2019.2.3/plugins/maven/lib/maven3
- jetzt: C:\Users\konhardt\Downloads\apache-maven-3.3.1-bin\apache-maven-3.3.1


# Fehler jBoss startet nicht

- in der folgenden Datei muss noch ein Pfad geändert werden

  D:\JBoss\jboss-eap-6.3\bin\standalone_konhardt.conf.bat

- hier aus der ersten Zeile in dem Pfad das "Trunk" löschen

    REM set INFOCUS_BASEDIR=D:\Projekte\Westlotto\infocus\trunk\basedir
    set INFOCUS_BASEDIR=D:\Projekte\Westlotto\infocus\basedir


# FEHLER:

- jrebel Lizenz


# FEHLER - Datenbank

- could not retrieve datasource via JNDI url 'java:jboss/QUARTZDS'
- Failed to obtain DB connection from data source 'QUARTZDS'


Es wurde versucht, auf die Datenbank GAME zuzugreifen, die entweder nicht gefunden wurde oder keine Transaktionen unterstützt. ERRORCODE=-4499, SQLSTATE=08004
Es wurde versucht, auf die Datenbank GAME zuzugreifen, die entweder nicht gefunden oder keine Transaktion unterstützt. Errorcode=4499, SQLSTATE=08004

-> ???


1. ohne "trunk"

'D:/Projekte/lottery-apis/external-interfaces/trunk/target/classes' does not exist

2. mit "trunk"

'D:/Projekte/infocus-core/sourcen-admin/src/main/webapp' does not exist
'D:/Projekte/lottery-apis/external-interfaces/trunk/target/classes' does not exist




# intelliJ Configuration / Kompilieren

infocus-parent [clean,install] - mvn clean install auf dem Projekt infocus-parent
-> Kompiliert das Projekt infocus-core mit Maven (muss zuerst ausgeführt werden)

westlotto-parent [clean,install] - mvn clean install auf dem Projekt westlotto-parent
->     Kompiliert das Projekt ltg-core mit Maven (muss als zweites ausgeführt werden)

westlotto-deploy [clean,install] - mvn clean install auf dem Projekt westlotto-deploy
->     Kopiert Artefakte in den JBoss (muss als letztes ausgeführt werden)



-> Was genau ist infocus??



# Cypress Unit tests

- Kimia Karajibani hat einige der Tests geschrieben vor über einem Jahr
- hauptsächlich die Gewinnspiele sonst ist eigentlich noch alles zu tun

- Commit example:
  - Feature: new Class
  - Feature: ... TODO


Tealium ???

aus dem NG Team beschäftigen die sich bereits mit Cypress




ich bin gerade dabei Cypress Tests für unser Westlotto Projekt zuschreiben und habe gehört ihr habt schon etwas mit Cypress gearbeitet?

- generell wissen was für Tests alles nötig sind
- wie man das in die Jenkins Pipeline baut?




Hallo Jürgen,

ich habe jetzt mit meinem Professor gesprochen und wir können das Thema der Masterarbeit auf jeden Fall angehen. Ich werde noch einen zusätzlichen Ansprechpartner in der Uni haben mit dem ich jetzt auch schon sprach. Er kennt sich z.B. mit Tensorflow aus und mit ihm werde ich mich dann immer zu meinem derzeitigen Fortschritt absprechen. Eventuell Arbeite ich dann teils in der Uni und teils auf der Arbeit daran.

Wichtig ist vor allem zuerst eine genauere Themenspezifizierung, wo und wie genau ich das BERT Modell dann eventuell einsetzen kann.
Chatbot ist auf jeden Fall schon einmal ein gutes Thema, dazu mach ich dann wohl noch eine Studie dazu, welche die Funktionalität, Benutzerfreundlichkeit und Usability von Chatbots untersucht.

Du sagtest ja ihr hattet schon einmal ein Chatbot Projekt wo die Wikipedia Seiten als Trainingsdaten gedient hatten. Weißt du wie das dann genau implementiert wurde? Dann werde ich mal sehen wie ich erst mal so richtig mit den praktischen Sachen des Themas anfangen kann.

Viele Grüße

André


gibt es dazu dann für die Arbeit

auch etwas in der Uni bin ich dann öfter 



18*4 = 40+32 = 72