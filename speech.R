source("markov.R")

data <- loadData()
T <- trainMarkov(data$text, data$lookup)

speech <- sampleMarkov(T, 100, 1)
words <- numbers2speech(speech, data$lookup)

speech <- function(n) {
    nums <- sampleMarkov(T, n, 1)
    words <- numbers2speech(nums, data$lookup)
    return(words)
}

speech(20)
