#' Boards Simulation
#'
#' This function simulates a solo player Chutes-and-Ladders game.
#' For more information, you can:
#'    Define the board with `define_board()` function.
#'    Visualize the board with `show_board()` function.
#'    Play a solo game with `play_solo()` function.
#'    Perform simulation with `simualte_board()` function.
#'
#' @param n number of simulations
#'
#' @return A list of a `board` containing board information and matrices containing simulation results of `AllTurns`, `AllLadders` and `AllChutes`
#' @export
#'
simulate_boards <- function(n=10000) {
  ###Board representation
  #Create a single `board` where you store the features of the game board.
  h <- 10
  w <- 10
  ladder <- list(c(1, 38), c(4,14), c(9,31), c(21,42), c(28,84), c(36,44), c(51,67),c(71,91), c(80,100))
  chute <- list(c(98,78), c(95,75), c(93,73), c(87,24), c(64,60), c(62,19), c(56,53), c(49,11), c(47,26), c(16,6))
  board <- the_board(h, w, ladder, chute)


  ###Monte Carlo Simulation
  total <- replicate(n, play_solo(board, verbose = FALSE))
  newturns <- as.numeric(total[1,])
  newladder <- matrix(unlist(total[2,]), nrow = n, byrow = TRUE)
  colnames(newladder) <- 1:length(ladder)
  newchute <- matrix(unlist(total[3,]), nrow = n, byrow = TRUE)
  colnames(newchute) <- order(c(1:length(chute)), decreasing = TRUE)
  newlag <- list("board"=board,
                 "AllTurns"=newturns,
                 "AllLadders"=newladder,
                 "AllChutes"=newchute)
  return(newlag)
}



