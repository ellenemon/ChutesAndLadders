#ChutesAndLadders Monte Carlo simulation
rm(list=ls())
set.seed(5)
library(ChutesAndLadders)

###Part 1: Board representation
#Create a single `board` where you store the features of the game board.
h <- 10
w <- 10
ladder <- list(c(1, 38), c(4,14), c(9,31), c(21,42), c(28,84), c(36,44), c(51,67),c(71,91), c(80,100))
chute <- list(c(98,78), c(95,75), c(93,73), c(87,24), c(64,60), c(62,19), c(56,53), c(49,11), c(47,26), c(16,6))
board <- the_board(h, w, ladder, chute)

###Part 2: Plot of Game board
# par() should help the plot be more visible.
par(mar = c(0, 0, 0, 0))
# show_board(board)
show_board(board)

###Part 3: Verbose output of one single player game
set.seed(5)
play_solo(board, verbose = TRUE)

###Part 4: Simulation and Visualization
sim <- simulate_board(board, n=10000)

# Save the date and R session info
date_of_run <- Sys.time()
session_info <- devtools::session_info()

save(sim, # save results
     n, # save number of simulations
     date_of_run, session_info,
     file = "~/chuesandladders_simulation.RData")



