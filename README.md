# Corpus der amtlichen Entscheidungssamlung des Bundesverfassungsgerichts (C-BVerfGE)


## Überblick

Dieser Code lädt alle auf [www.bundesverfassungsgericht.de](https://www.bundesverfassungsgericht.de) veröffentlichten Entscheidungen der amtlichen Entscheidungssammlung des Bundesverfassungsgerichts (BVerfG) herunter und kompiliert sie in einen reichhaltigen menschen- und maschinenlesbaren Korpus. Es ist die Grundlage für den **Corpus der amtlichen Entscheidungssamlung des Bundesverfassungsgerichts (C-BVerfGE)**.

Alle mit diesem Skript erstellten Datensätze werden dauerhaft kostenlos und urheberrechtsfrei auf Zenodo, dem wissenschaftlichen Archiv des CERN, veröffentlicht. Alle Versionen sind mit einem persistenten Digital Object Identifier (DOI) versehen. Die neueste Version des Datensatzes ist immer über den Link der Concept DOI erreichbar: <https://doi.org/10.5281/zenodo.3831111>


##  Funktionsweise

Primäre Endprodukte des Skripts sind folgende ZIP-Archive (im Ordner 'output'):

-  Der volle Datensatz im CSV-Format
-  Die reinen Metadaten im CSV-Format (wie unter 1, nur ohne Entscheidungstexte)
-  (Optional) Tokenisierte Form aller Texte mit linguistischen Annotationen im CSV-Format
-  Der volle Datensatz im TXT-Format (reduzierter Umfang an Metadaten)
-  Der volle Datensatz im PDF-Format (reduzierter Umfang an Metadaten)
-  Alle Analyse-Ergebnisse (Tabellen als CSV, Grafiken als PDF und PNG)
-  Der Source Code und alle weiteren Quelldaten


Zusätzlich werden für alle ZIP-Archive kryptographische Signaturen (SHA2-256 und SHA3-512) berechnet und in einer CSV-Datei hinterlegt. Weiterhin kann optional ein PDF-Bericht erstellt werden (siehe unter "Kompilierung").



## Kompilierung

Alle Kommentare sind im roxygen2-Stil gehalten. Die beiden Skripte können daher auch **ohne render()** regulär als R-Skripte ausgeführt werden. Es wird in diesem Fall kein PDF-Bericht erstellt und Diagramme werden nicht abgespeichert.
 
Um den **vollständigen Datensatz** zu kompilieren, sowie Compilation Report und Codebook zu erstellen, kopieren Sie bitte alle im Source-Archiv bereitgestellten Dateien in einen leeren Ordner (!) und führen mit R diesen Befehl aus:


```
source("00_CE-BVerfG_FullCompile.R")
```

Bei der Prüfung der GPG-Signatur im Codebook wird ein Fehler auftreten und im Codebook dokumentiert, weil die Daten nicht mit meiner Original-Signatur versehen sind. Dieser Fehler hat jedoch keine Auswirkungen auf die Funktionalität und hindert die Kompilierung nicht.


## Systemanforderungen

### Betriebssystem

Das Skript in seiner veröffentlichten Form kann nur unter **Linux** ausgeführt werden, da es Linux-spezifische Optimierungen (z.B. Fork Cluster) und Shell-Kommandos (z.B. OpenSSL) nutzt. Das Skript wurde unter Fedora Linux entwickelt und getestet. Die zur Kompilierung benutzte Version entnehmen Sie bitte dem **sessionInfo()**-Ausdruck am Ende des jeweiligen Compilation Reports.

### Software

Sie müssen die [Programmiersprache R](https://www.r-project.org/) installiert haben. Starten Sie danach eine Session im Ordner des Projekts, Sie sollten automatisch zur Installation aller packages in der empfohlenen Version aufgefordert werden. Andernfalls führen Sie bitte folgenden Befehl aus:

```
renv::restore()
```

Um die PDF Reports zu kompilieren benötigen Sie eine LaTeX-Installation. Sie können diese auf Fedora wie folgt installieren:

```
sudo dnf install texlive-scheme-full
```

Alternativ können sie das R package **tinytex** installieren.



### Parallelisierung

In der Standard-Einstellung wird das Skript vollautomatisch die maximale Anzahl an Rechenkernen/Threads auf dem System zu nutzen. Die Anzahl der verwendeten Kerne kann in der Konfigurationsatei angepasst werden. Wenn die Anzahl Threads auf 1 gesetzt wird, ist die Parallelisierung deaktiviert.

### Speicherplatz

Auf der Festplatte sollten 8 GB Speicherplatz vorhanden sein.


 

## Weitere Open Access Veröffentlichungen (Fobbe)

Website — https://www.seanfobbe.de

Open Data  —  https://zenodo.org/communities/sean-fobbe-data/

Source Code  —  https://zenodo.org/communities/sean-fobbe-code/

Volltexte regulärer Publikationen  —  https://zenodo.org/communities/sean-fobbe-publications/



## Kontakt

Fehler gefunden? Anregungen? Kommentieren Sie gerne im Issue Tracker auf GitHub oder schreiben Sie mir eine E-Mail an [fobbe-data@posteo.de](fobbe-data@posteo.de)
