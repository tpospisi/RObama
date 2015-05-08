source("utility.R")
require(Hmisc) # for inc function

trainMarkov <- function(text, lookup) {
    N <- length(lookup)

    T <- matrix(0, N, N)
    
    for(i in 2:length(text)) {
        inc(T[text[i - 1], text[i]]) <- 1
    }
    
    return(T)
}

sampleMarkov <- function(T, len, start) {
    N <- nrow(T)

    out <- rep(NA, len)
    out[1] <- start
    for(i in 2:len) {
        out[i] <- sample(1:N, 1, FALSE, T[out[i-1], ])
    }

    return(out)
}
