words2numbers <- function(text, lookup) {
    return(sapply(text, function(x) which(lookup == x),USE.NAMES =FALSE))
}

numbers2speech <- function(sequence, lookup) {
    return(paste0(lookup[sequence], collapse = " "))
}

loadData <- function() {
    text <- c()
    
    for(i in 1:8) {
        ## Scan with pull seperate words for us
        text <- c(text, scan(paste0("Documents/", i, ".txt"), "string"))
    }

    lookup <- unique(text)
    text <- words2numbers(text, lookup)
    
    return(list(text = text, lookup = lookup))
}
    
    
