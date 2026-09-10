data <- read.csv(readline("Enter csv race data filename: "))
# data <- read.csv("miami.csv")

numPits <- nrow(data)
shortestPit <- min(data$time)
longestPit <- max(data$time)
totalPitTime <- sum(data$time)

print(paste0("Number of pit stops: ", numPits))
print(paste0("Shortest pit stop: ", shortestPit))
print(paste0("Longest pit stop: ", longestPit))
print(paste0("Total pit stop time: ", totalPitTime))