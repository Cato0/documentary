Cypress:

# Good to know / von Michael

- eine Funktion die testet ob alles gerendert wird
- damit gibt es manchmal Probleme

- am besten einen kleinen Div auf jede Seite nach ganz unten machen
- einfach mit der Klasse CypressDiv oder sowas
- dann muss man nur gucken ob der da ist und nicht ob jedes einzelne Objekt da ist



- captcha
- Seite im
- PO / PM?
- am besten erstmla die Hauptfunktionen testen lassen
    - anstatt jede Seite erstmal 100% zu machen
    - 

- Für das login
    - einen Request? als Command einbauen, damit man mehrere Nutzer haben kann und auch die Nutzerdaten da drin hat?


# 

- andere Test option ist z.B. Selenium, was wir vorher auf der Arbeit benutzt hattten (kein JavaScript?)

- E2E Unit Testing (End to End = Frontend)
    - at the end see if everything works as it should

- Cypress runs the Electron browser by default (can it be changed somehow?)
    - run on specific browser with the --browser flag
    - or in the GUI select specific browser on the top right
        - how to add more browwser compatabilities?

# Fragen

- Registrierung testen
    - immer der selbe User?
    - oder irgendwie den Namen randomisieren
        - es muss auch eine richtige Email sein, d.h. dann immer eine neue erstellen oder wie soll das gemacht werden? / automatiseirt werden?
        - https://stackoverflow.com/questions/12750864/temporary-e-mail-accounts-for-integration-tests
            - für das Problem kann eine Gmail Email genommen werden mit +Something am Ende angehangen


- Captha überprüfen?
- Link der einen neuen Tab öffnet überprüfen


- einfach mal das Projekt von den sehen
- ich habe ja gerade erst mal mit Tests generell angefangen da ist mir eine kleine Übersicht mit Beispielen ganz gelegen



# Dokumentation

- meine Dokumentation:
    - 

- nach Vorlage ähnlich wie folgendes:
    https://confluence.adesso.de/display/LOT/Testautomatisierung
    https://confluence.adesso.de/display/LOT/Cypress+Test+Adminportal

# TODO

- gucke z.B. auf eurojackpot
    - gute Beispiele für Unit Tests

- ist ein Feld klickbar
- ist eine bestimmte Zahl drin
- hat etwas eine bestimmte Farbe??


- intelliJ Projekt:

    - lokale Datenbank erstellen
    - nicht die, die F. geändert hat
    - aus dem Westlotto Repo die lotto-apis herasubekommen?
        - nur so klappen manche Tests


# Unit Tests

- should verify a Single-Use Case
- Unit Tests should be isolated
- should be automated
- mixture of unit and integration tests
- every bug that is fixed should have a test to verify that it will be fixed in the future as well
- maintaining tests

- different types of tests
    1. End-to-end tests
    2. integration tests
    3. unit tests


# Standart Format of Unit Test

    // Describe

    import Globals from "../code/elements/globals";

    describe('Navigation und Footer', () => {
        const main = new Globals();

        it('Navigation und Footer testen?', () => {

            cy.visit('/');
            main.getNavigation().contains('Lotto');
            main.getNavigation().contains('Eurojackpot');
            main.getNavigation().contains('GlücksSpirale');
            main.getNavigation().contains('Rubbel-Lose');
            main.getNavigation().contains('TOTO');

            main.getFooter().should('be.visible');

        });
    });

# Starting Cypress

- for my Westlotto project:

    - go to the directory and use following command to start the local Cypress Server:
      -> D:\Projekte\homepage-test-cypress
      -> npm run e2e:dev
    

      -> cypress run
      -> cypress run --spec

# Debugging


    debugger
    -> put this inside the Code and it will stop there

Alternatively:
- cy.pause()
- include a pause in your code and then you can go through the different steps of the test

- run only a single Test???

# Selections

    cy.contains('div', 'Phone Number')                 // Find a Div, where the text is containing the String "Phone Number"
    cy.contains('div', new RegExp('Phone Number', 'g'))    // find where the text is EXACTLY 'Phone Number'    
    cy.find()

    Get the first Element of an Array
    - .eq(0)
    - .first()

    - .eq(5)
    - .last()


Find the first li descendent within a ul

    cy.get('ul li:first').should('have.class', 'active')

# Contains

- Containing an exact String:
    - to avoid ambiguities
    cy.contains(new RegExp(yourString, "g"))

    https://stackoverflow.com/questions/56443963/click-an-exact-match-text-in-cypress


## .within

    cy.get('form').within(() => {
        cy.get('input').type('Pamela') // Only yield inputs within form
        cy.get('textarea').type('is a developer') // Only yield textareas within form
    })


# Assertions / Should

    .should('be.visible')
    .should('not.be.visible')
    .should('eq', 'myValue')            // Should equal 'myValue'
    .should('have.text', 'Dortmund');

# trigger

    .trigger('mouseover')   // Fake hover event. Works only for JS not for CSS hovers???


# Wrap

    cy.wrap(subject)

    cy.wrap({ name: 'Jane Lane'})


# Get

    cy.get('input[name=username]').type('asde');
    cy.get('input[type=submit]').click();

# Buttons / Selects

- normal button
    .check()
    .uncheck()

    e.g.
        cy.get('[type="checkbox"]').uncheck()   // Unchecks checkbox element

- Radio Button
    .check()

- Select Button
    .select('Firefox')

- input field
    .type('qwe')


# Custom Commands

Custom Commands werden in das command.js file geschrieben
../cypress/support/command.hs

1. Parent Commands
- something can be appended after this function

e.g.
    parentCommand.CyCommand

## Example for Logging in:

    Cypress.Commands.add('login', (email, password) => {

        cy.visit('/login.html');

        login.getEmailField().type('gen202053010114@wl-infocus-dev.adesso.de');               // gen202053010114@wl-infocus-dev.adesso.de     // New   wl-infocus-dev.adesso.de
        login.getPasswordField().type('gen202053010114@wl-infocus-dev.adesso.de');            // gen2019149234@wl-infocus-inttest.adesso.de   // Old
        login.getLoginSubmit().click();

    })



2. Child Command
- can be appended from another cypress command

e.g.
    CyCommand.ChildCommand

3. Dual Command
- both parent and child command at the same time

e.g.
    DualCommand.CyCommand.DualCommand



# Wait / Pause / Stop

- cy.wait(3000) // in ms

cy.visit() sollte darauf warten das die Seite geladen ist bevor die nachfolgenden Funktionen gestartet werden
Z.B. bei verlinkung auf eine andere Seite mit einem click() kann die Wartezeit abhelfen.



# Child-Elements

- elementA.children().contains('Something')
- is very useful when you need something specific and the element exists multiple times

# Page Object Pattern

- alles in einer seperaten JS Klasse auslagern, damit man z.B. leichter an gewisse HTML Elemente ran kommt 


# Other Information about my task

- n zu n test

Prozesse

kimia
Taelium

Lotto WEST

- auffreschen
- thelium trackt alles vom Kunden

- prod seite nicht geladen, weil skript nicht erreichbar war wegen tracking tool

- Kundenprofil Spielschein

- welche Testfälle gibt es und wie kann ich die abdecken
    - ich soll mehr Tests bauen um mehr abzudecken
    - weil sonst mehr Fehler auftauchen können

    z.B. ...???

Testabdeckung soll verbessert werden
    - wo genau?


