# Changelog


## Version \version

- Vollständige Aktualisierung der Daten
- Einstellung Docker Zeitzone auf Berlin


## Version 2024-03-08

- Vollständige Aktualisierung der Daten (bis einschließlich Band 164)
- Über 40 neue historische Entscheidungen aus dem Zeitraum 1970 bis 1998 (u.a. Mauerschützen)
- Versionskontrolle aller verwendeten Software mit Docker
- Vereinfachung der Repository-Struktur
- Erstellung des Source-Archivs aus dem Git Manifest
- Entfernung des Submodules und Überführung der Funktionen in das Hautprojekt
- Entfernung des GPG Checks im Codebook um einen durchgängig automatisierten Prozess zu gewährleisten. Mit GPG signiert werden in Zukunft Compilation Report, Codebook und CSV-Datei der Signaturen.
- Funktionen werden nicht mehr vollständig im Compilation Report abgedruckt um die Fehlerrate bei der LaTeX-Kompilierung zu senken


## Version 2023-02-20

- Vollständige Aktualisierung der Daten (bis einschließlich Band 160)
- 50 neue historische Entscheidungen aus dem Zeitraum 1951 bis 1998 (u.a. Elfes, Schleyer-Entführung, Kurzarbeitergeld, Nachtarbeiterinnen)
- Aktenzeichen aus dem Eingangszeitraum 2000 bis 2009 nun korrekt mit führender Null formatiert (z.B. 1 BvR 44/02 statt 1 BvR 44/2)
- Überarbeitung der Namen der Entscheidungen, u.a. Einfügung von Bindestrichen um Lesbarkeit zu verbessern und weitere Standardisierung


## Version 2022-06-20

- Vollständige Aktualisierung der Daten (bis einschließlich Band 158)
- Überarbeitung der codierten Entscheidungsnamen
- Standardisierung der Befangenheitsanträge als "Selbstablehnung" und "Richterablehnung" in der Variable "name"
- Strenge Versionskontrolle von R packages mit **renv**
- Kompilierung jetzt detailliert konfigurierbar, insbesondere die Parallelisierung
- Parallelisierung nun vollständig mit *future* statt mit *foreach* und *doParallel*
- Codebook-Erstellung stark beschleunigt durch Verwendung vorberechneter Diagramme
- Fehlerhafte Kompilierungen werden vor der nächsten Kompilierung vollautomatisch aufgeräumt
- Alle Ergebnisse werden automatisch fertig verpackt in den Ordner 'output' sortiert
- README und CHANGELOG sind jetzt externe Markdown-Dateien, die bei der Kompilierung automatisiert eingebunden werden
- Source Code des Changelogs zu Markdown konvertiert
- REGEX-Tests im Detail kommentiert


## Version 2021-09-19

- Vollständige Aktualisierung der Daten
- Neue Variablen: Lizenz, Typ der Entscheidung, Zeichenzahl, Pressemitteilung, Zitiervorschlag, Aktenzeichen (alle), Verfahrensart, Kurzbeschreibung und Richter
- Neue Variante: Linguistischen Annotationen
- Neue Variante: Segmentiert
- Neue Variante: HTML
- Erweiterung der Codebook-Dokumentation
- Strenge Kontrolle und semantische Sortierung der Variablen-Namen
- Abgleich der selbst berechneten ECLI mit der in der HTML-Fassung dokumentierten ECLI
- Variable für Entscheidungstyp wird nun aus dem Zitiervorschlag berechnet um eine höhere Genaugikeit zu gewährleisten


 
## Version 2021-01-03 

- Vollständige Aktualisierung der Daten
- Veröffentlichung des vollständigen Source Codes
- Deutliche Erweiterung des inhaltlichen Umfangs des Codebooks
- Einführung der vollautomatischen Erstellung von Datensatz und Codebook
- Einführung von Compilation Reports um den Erstellungsprozess exakt zu dokumentieren
- Einführung von Variablen für Versionsnummer, Concept DOI, Version DOI, ECLI, Entscheidungsnamen, BVerfGE-Band, BVerfGE-Seite, Typ des Spruchkörpers, PräsidentIn, Vize-PräsidentIn und linguistische Kennzahlen (Tokens, Typen, Sätze)
- Automatisierung und Erweiterung der Qualitätskontrolle
- Einführung von Diagrammen zur Visualisierung von Prüfergebnissen
- Einführung kryptographischer Signaturen
- Alle Variablen sind nun in Kleinschreibung und Snake Case gehalten
- Variable 'Suffix' in 'kollision' umbenannt.
- Variable 'Ordinalzahl' in 'eingangsnummer' umbenannt.
- Umstellung auf Stichtags-Versionierung

 
## Version 1.1.0 


- Vollständige Aktualisierung der Daten
- Angleichung der Variablen-Namen an andere Datensätze der CE-Serie\footnote{Siehe: \url{https://zenodo.org/communities/sean-fobbe-data/}}
- Einführung der Variable 'Suffix' um weitere Entscheidungen korrekt erfassen zu können; aufgrund der fehlenden Berücksichtigung des Suffix wurden einige wenige Entscheidungen in Version 1.0.0 irrtümlich von der Sammlung ausgeschlossen.
- Stichtag: 2020-08-09

 
## Version 1.0.0

- Erstveröffentlichung
- Stichtag: 2020-05-16

 
