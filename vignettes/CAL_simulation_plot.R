#ChutesAndLadders Monte Carlo simulation visualization

rm(list=ls())
load("~/chuesandladders_simulation.RData")

newturns <- sim[[1]]
newladder <- sim[[2]]
newchute <- sim[[3]]

#Set Up the layout with one plot on the top and two on the bottom
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))

#The distribution of number of total turns
p1 <- hist(newturns, breaks = 50, main = paste("Histogram of the turns" ))
#Frequency of ladders
p2 <- barplot(colSums(newladder)/sum(newladder),
        main = "Relative Frequency of Ladders",
        xlab = "Ladder Number",
        ylab = "relative frequency")
#Frequency of chutes
p3 <- barplot(colSums(newchute)/sum(newchute),
        main = "Relative Frequency of Chutes",
        names.arg = seq(length(board[[4]]),1,-1),
        xlab = "Chute Number",
        ylab = "relative frequency")
png("~/ChutesAndLadders_simulation_plots.png", width = 800, height = 600)
dev.off()

