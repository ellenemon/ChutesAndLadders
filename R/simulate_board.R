#' Boards Simulation
#'
#' This function simulates a solo player Chutes-and-Ladders game.
#' For more information, you can:
#'    Define the board with `define_board()` function.
#'    Visualize the board with `show_board()` function.
#'    Play a solo game with `play_solo()` function.
#'    Perform simulation with `simualte_board()` function.
#'
#' @param n A positive large integer representing number of simulations
#' @param board A list created by define_board() containing game board information
#'
#' @return A list of matrices containing simulation results of `AllTurns`, `AllLadders` and `AllChutes`
#' @export
#'
simulate_board <- function(board, n=10000) {
  total <- replicate(n, play_solo(board, verbose = FALSE))
  newturns <- as.numeric(total[1,])
  newladder <- matrix(unlist(total[2,]), nrow = n, byrow = TRUE)
  colnames(newladder) <- 1:length(ladder)
  newchute <- matrix(unlist(total[3,]), nrow = n, byrow = TRUE)
  colnames(newchute) <- order(c(1:length(chute)), decreasing = TRUE)
  newlag <- list("AllTurns"=newturns,
                 "AllLadders"=newladder,
                 "AllChutes"=newchute)
  return(newlag)
}



