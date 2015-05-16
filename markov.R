source("utility.R")
require(Hmisc) # for inc function

TrainMarkov <- function(text, lookup) {
    ## Creates the transition probability matrix, T[i,j] is the number
    ## of times word j follows word i. No need to standardize since
    ## all functions that use T will implicity standardize

    N <- length(lookup)
    T <- matrix(0, N, N)
    
    for(i in 2:length(text)) {
        inc(T[text[i - 1], text[i]]) <- 1
    }
    
    return(T)
}

SampleMarkov <- function(T, len, start) {
    ## Samples a sequence of length len from the Markov Chain
    ## described by transition matrix T, starting with start.

    N <- nrow(T)

    out <- rep(NA, len)
    out[1] <- start

    for(i in 2:len) {
        out[i] <- sample(1:N, 1, replace = FALSE, prob = T[out[i-1], ])
    }

    return(out)
}
