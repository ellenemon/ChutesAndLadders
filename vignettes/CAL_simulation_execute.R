#ChutesAndLadders_simulation_execute
rm(list=ls())
set.seed(5)
library(ChutesAndLadders)

###Monte Carlo Simulation Visualization
sim <- simulate_boards(n=10000)
board <- sim[[1]]
newturns <- sim[[2]]
newladder <- sim[[3]]
newchute <- sim[[4]]
#The distribution of number of total turns
hist(newturns, breaks = 50, main = paste("Histogram of the turns" ))
#Frequency of ladders
barplot(colSums(newladder)/sum(newladder),
        main = "Relative Frequency of Ladders",
        xlab = "Ladder Number",
        ylab = "relative frequency")
#Frequency of chutes
barplot(colSums(newchute)/sum(newchute),
        main = "Relative Frequency of Chutes",
        names.arg = seq(length(board[[3]]),1,-1),
        xlab = "Chute Number",
        ylab = "relative frequency")



