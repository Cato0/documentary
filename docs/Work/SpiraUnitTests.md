---
id: SpiraUnitTests
title: SpiraUnitTests
sidebar_label: SpiraUnitTests
---


- Offene Tickets:

https://jira.adesso.de/browse/LTLR-278?jql=project%20%3D%20LTLR%20AND%20issuetype%20%3D%20Bug%20AND%20status%20%3D%20%22test%20adesso%22

filtern für alle Tickets aus "test adesso"


1. es gibt Tickets mit Spira Link
2. Tickets ohne Spira Link soll ich da ein neues auf machen?
3. 

1. Wenn das Ticket ok und abgeschlossen ist:
- Kommentar schreiben mit "Test erfolgreich (/)"

2. Wenn das Ticket noch nicht ok ist:
- Kommentar schreiben mit dem was noch fehlt



# Unit Tests

- Arithnea Seite zur Überprüfung der richtigen Seite
    - e.g.  https://arithnea.invisionapp.com/share/P6REHYVVQ52#/screens/362832768

        - über https://confluence.arithnea.de/pages/viewpage.action?pageId=163945590

        - wie komme ich auf die richtige Arithnea Seite???


-> ich teste nur : test adesso

    -> diese sollten bereits gefixt worden sein


-> Eventuell Test auf Gelb stellen (falls etwas nicht ganz gelöst wurde, aber es so bleiben kann)


# Beschreibungen:

Bsp.

Beschreibung

    Akteur betätigt die Schaltfläche "Schein abgeben" 

    Erwartetes Ergebnis

    Die Spielschein-Übersicht erscheint mit der Kachel Lastschrifteinzug für die Erstlastschrift inkl. Checkbox zur Mandatserteilung angezeigt.

    Die Checkbox ist ein Pflichtfeld.
    Das Design entspricht der Vorlage.

    Innerhalb der Kachel wird die IBAN des Kunden (verschlüsselt) sowie die Mandatsreferenznummer und die Gläubiger-ID dargestellt.

    Im Eingabefeld "Betrag" wird automatisch der noch fehlende Betrag zum begleichen des Spielscheins angezeigt.

    Tatsächliches Ergebnis

    Bitte die Seite an das spzifizierte Screendesign anpassen.

    Siehe Screenshot DesignFehler-Screenshot1.png

    Testlaufschritte

    Akteur betätigt die Schaltfläche "Schein abgeben"  = Fehlgeschlagen

    Akteur verändert den Betrag nicht, stimmt der Widerrufsbelehrung zu, die Checkbox zur Mandatserteilung wird nicht aktiviert. Des Weiteren wird die TAN in die entsprechende Eingabemaske hinterlegt und die Schaltfläche "Kauf bestätigen" betätigt. = Not Run

    Akteur gibt in das Feld Betrag eine  Wert > 1.000,00 Euro ein, stimmt der Widerrufsbelehrung zu. Des Weiteren wird die TAN in die entsprechende Eingabemaske hinterlegt und die Schaltfläche "Kauf bestätigen" betätigt. = Not Run



# Abschließen

-> Wenn der Test erfolgreich ist und der Bug gefixt wurde

    testen Kunde /  testing customer
    bereit zur Auslieferung / ready 4 delivery

    Hier ins Textfeld schreiben:
        Test erfolgreich (/)


-> Wenn nicht, dann einen Kommentar schreiben

-> Den neuen Test dann ins Ticket verlinken?
