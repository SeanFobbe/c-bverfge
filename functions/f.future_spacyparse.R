#'# f.dopar.spacyparse
#' Iterated parallel computation of linguistic annotations via spacy.


#' @param x A data table. Must have variables "doc_id" and "text".



f.future_spacyparse <- function(x,
                                chunksperworker = 1,
                                chunksize = NULL,
                                model = "en_core_web_sm",
                                pos = TRUE,
                                tag = FALSE,
                                lemma = FALSE,
                                entity = FALSE,
                                dependency = FALSE,
                                nounphrase = FALSE){

    begin <- Sys.time()

    spacy_initialize(model = model)

    
    print(paste0("Begin at ",
                 begin,
                 ". Processing ",
                 x[,.N],
                 " documents"))


    
    raw.list <- split(x, seq(nrow(x)))
    
    result.list <- future_lapply(raw.list,
                                 spacy_parse,
                                 future.seed = TRUE,
                                 future.scheduling = chunksperworker,
                                 future.chunk.size = chunksize,
                                 pos = pos,
                                 tag = tag,
                                 lemma = lemma,
                                 entity = entity,
                                 dependency = dependency,
                                 nounphrase = nounphrase,
                                 multithread = FALSE)
    
    result.dt <- rbindlist(result.list)
    
     
    

    end <- Sys.time()
    duration <- end - begin

    print(paste0("Runtime was ",
                 round(duration,
                       digits = 2),
                 " ",
                 attributes(duration)$units,
                 ". Ended at ",
                 end, "."))

    spacy_finalize()
    
    return(result.dt)


}
