require(microbenchmark)
source("markov.R")

## Load 
fileNames <- dir("Documents", full.names = TRUE)
data <- LoadData(fileNames)

T <- TrainMarkov(data$text, data$lookup)

Speech <- function(n) {
    nums <- SampleMarkov(T, n, 1)
    words <- Numbers2Words(nums, data$lookup)
    return(words)
}

Speech(100)
