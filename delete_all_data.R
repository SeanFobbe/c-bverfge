files.delete <- list.files(pattern = "\\.zip|\\.jpe?g|\\.png|\\.gif|\\.pdf|\\.txt|\\.bib|\\.csv|\\.spin\\.|\\.log|\\.html?",
                           ignore.case = TRUE)

unlink(files.delete)

unlink("output", recursive = TRUE)
unlink("analyse", recursive = TRUE)
unlink("ANALYSE", recursive = TRUE)
unlink("temp", recursive = TRUE)



