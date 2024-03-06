#!/bin/Rscript

#'# Vorbereitung


datestamp <- Sys.Date()

library(rmarkdown)




#'# Aufräumen


files.delete <- list.files(pattern = "\\.zip|\\.jpe?g|\\.png|\\.gif|\\.pdf|\\.txt|\\.bib|\\.csv|\\.spin\\.|\\.log|\\.html?",
                           ignore.case = TRUE)

unlink(files.delete)

unlink("output", recursive = TRUE)
unlink("analyse", recursive = TRUE)
unlink("ANALYSE", recursive = TRUE)
unlink("temp", recursive = TRUE)







#+
#'# Datensatz 
#' 
#' Um den **vollständigen Datensatz** zu kompilieren und einen PDF-Bericht zu erstellen, kopieren Sie bitte alle im Source-Archiv bereitgestellten Dateien in einen leeren Ordner und führen mit R diesen Befehl aus:


begin.compreport <- Sys.time()

rmarkdown::render(input = "01_C-BVerfGE_CorpusCreation.R",
                  envir = new.env(),
                  output_file = paste0("C-BVerfGE_",
                                       datestamp,
                                       "_CompilationReport.pdf"),
                  output_dir = "output")


end.compreport <- Sys.time()

print(end.compreport-begin.compreport)







#'# Codebook
#' Um das **Codebook** zu kompilieren und einen PDF-Bericht zu erstellen, führen Sie bitte im Anschluss an die Kompilierung des Datensatzes (!) untenstehenden Befehl mit R aus.


rmarkdown::render(input = "02_C-BVerfGE_CodebookCreation.R",
                  envir = new.env(),
                  output_file = paste0("C-BVerfGE_",
                                       datestamp,
                                       "_Codebook.pdf"),
                  output_dir = "output")
