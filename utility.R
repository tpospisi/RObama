Words2Numbers <- function(text, lookup) {
    ## Convert words into a set of indices

    ## Explicitly construct the reversed dictionary
    rev <- list()
    for(i in seq_along(lookup)) {
        rev[lookup[i]] <- i
    }
    
    return(as.numeric(rev[text]))
}

Numbers2Words <- function(sequence, lookup) {
    ## Convert sequence of indices into corresponding words
    return(paste0(lookup[sequence], collapse = " "))
}

LoadData <- function(fileNames) {
    ## Read in the data from the given fileNames, convert to indices,
    ## and return both indices and dictionary

    text <- c()
    
    for(file in fileNames) {
        ## Scan can separate words for us
        text <- c(text, scan(file, "string"))
    }

    lookup <- unique(text)
    text <- Words2Numbers(text, lookup)
    
    return(list(text = text, lookup = lookup))
}
