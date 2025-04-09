# ACHTUNG: Weiterentwicklung ab sofort auf Codeberg

Die Weiterentwicklung dieses Projekts findet ab sofort auf Codeberg statt: https://codeberg.org/seanfobbe/c-bverfge

Das GitHub repository ist nur noch als Archivfassung verfügbar.


# Corpus der amtlichen Entscheidungssamlung des Bundesverfassungsgerichts (C-BVerfGE)


## Überblick

Dieser Code lädt alle auf [www.bundesverfassungsgericht.de](https://www.bundesverfassungsgericht.de) veröffentlichten Entscheidungen der amtlichen Entscheidungssammlung des Bundesverfassungsgerichts (BVerfG) herunter und kompiliert sie in einen reichhaltigen menschen- und maschinenlesbaren Korpus. Es ist die Grundlage für den **Corpus der amtlichen Entscheidungssamlung des Bundesverfassungsgerichts (C-BVerfGE)**.

Alle mit diesem Skript erstellten Datensätze werden dauerhaft kostenlos und urheberrechtsfrei auf Zenodo, dem wissenschaftlichen Archiv des CERN, veröffentlicht. Alle Versionen sind mit einem separaten und langzeit-stabilen (persistenten) Digital Object Identifier (DOI) versehen.

Aktuellster, funktionaler und zitierfähiger Release des Datensatzes: <https://doi.org/10.5281/zenodo.3831111>


##  Funktionsweise

Primäre Endprodukte des Skripts sind folgende ZIP-Archive (im Ordner 'output'):

-  Der volle Datensatz im CSV-Format
-  Die reinen Metadaten im CSV-Format (wie unter 1, nur ohne Entscheidungstexte)
-  (Optional) Tokenisierte Form aller Texte mit linguistischen Annotationen im CSV-Format
-  Der volle Datensatz im TXT-Format (reduzierter Umfang an Metadaten)
-  Der volle Datensatz im PDF-Format (reduzierter Umfang an Metadaten)
-  Alle Analyse-Ergebnisse (Tabellen als CSV, Grafiken als PDF und PNG)
-  Der Source Code und alle weiteren Quelldaten


Alle Ergebnisse werden im Ordner `output` abgelegt. Zusätzlich werden für alle ZIP-Archive kryptographische Signaturen (SHA2-256 und SHA3-512) berechnet und in einer CSV-Datei hinterlegt.



## Systemanforderungen

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- 500 MB Speicherplatz auf Festplatte
- Multi-core CPU empfohlen (8 cores/16 threads für die Referenzdatensätze). 


In der Standard-Einstellung wird das Skript vollautomatisch die maximale Anzahl an Rechenkernen/Threads auf dem System zu nutzen. Die Anzahl der verwendeten Kerne kann in der Konfigurationsatei angepasst werden. Wenn die Anzahl Threads auf 1 gesetzt wird, ist die Parallelisierung deaktiviert.



## Anleitung


### Schritt 1: Ordner vorbereiten

Kopieren Sie bitte den gesamten Source Code in einen leeren Ordner (!), beispielsweise mit:

```
$ git clone https://github.com/seanfobbe/c-bverfge
```

Verwenden Sie immer einen separaten und *leeren* Ordner für die Kompilierung. Die Skripte löschen innerhalb des Ordners alle Dateien die den Datensatz verunreinigen könnten --- aber auch nur dort.


### Schritt 2: Docker Image erstellen

Ein Docker Image stellt ein komplettes Betriebssystem mit der gesamten verwendeten Software automatisch zusammen. Nutzen Sie zur Erstellung des Images einfach:

```
$ bash docker-build-image.sh
```

### Schritt 3: Datensatz kompilieren

Falls Sie zuvor den Datensatz schon einmal kompiliert haben (ob erfolgreich oder erfolglos), können Sie mit folgendem Befehl alle Arbeitsdaten im Ordner löschen:

```
$ Rscript delete_all_data.R
```

Den vollständigen Datensatz kompilieren Sie mit folgendem Skript:

```
$ bash docker-run-project.sh
```


### Ergebnis

Der Datensatz und alle weiteren Ergebnisse sind nun im Ordner `output/` abgelegt.



## Projektstruktur

Die folgende Struktur erläutert die wichtigsten Bestandteile des Projekts. Während der Kompilierung werden weitere Ordner erstellt. Die Endergebnisse werden alle in `output/` abgelegt.

 
``` 
.
├── 01_C-BVerfGE_CorpusCreation.R   # Erstellt den Datensatz
├── 02_C-BVerfGE_CodebookCreation.R # Erstellt das Codebook
├── buttons                    # Buttons (nur optische Bedeutung)
├── CHANGELOG.md               # Alle Änderungen
├── etc                        # Spezielle Konfigurations-Dateien
├── docker-compose.yaml        # Konfiguration für Docker
├── config.toml                # Zentrale Konfigurations-Datei
├── data                       # Datensätze, auf denen die Pipeline aufbaut
├── delete_all_data.R          # Löscht den Datensatz und Zwischenschritte
├── docker-build-image.sh      # Docker Image erstellen
├── Dockerfile                 # Definition des Docker Images
├── docker-run-project.sh      # Docker Image und Datensatz kompilieren
├── functions                  # Wichtige Schritte der Pipeline
├── gpg                        # Persönlicher Public GPG-Key für Seán Fobbe
├── README.md                  # Bedienungsanleitung
├── run_project.R              # Kompiliert den gesamten Datensatz
└── tex                        # LaTeX-Templates


``` 


 

## Weitere Open Access Veröffentlichungen (Fobbe)

Website — https://www.seanfobbe.de

Open Data  —  https://zenodo.org/communities/sean-fobbe-data/

Source Code  —  https://zenodo.org/communities/sean-fobbe-code/

Volltexte regulärer Publikationen  —  https://zenodo.org/communities/sean-fobbe-publications/



## Kontakt

Fehler gefunden? Anregungen? Kommentieren Sie gerne im Issue Tracker auf GitHub oder schreiben Sie mir eine E-Mail an [fobbe-data@posteo.de](fobbe-data@posteo.de)
