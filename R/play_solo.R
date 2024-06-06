#' Play Solo
#'
#' This function demonstrates a solo player chute-and-ladders game with a user defined board.
#' You can also:
#' Define the board with `define_board()` function.
#' Visualize the board with `show_board()` function.
#' Perform simulation with `simualte_board()` function.
#'
#'
#' @param theboard A list of four elements containing board information:`height`,`width`,`ladder`and `chute`
#' @param verbose A logical T/F indicating whether to show the function output for each turn
#'
#' @return  if verbose=F, return a list of play log: `turns`:the number of total turns, `ladder_tally`: the frequency of use of each ladder;
#'                        `chute_tally`:the frequency of use of each ladder; and `move_log`: record of all spaces that the user landed
#'          if verbose=T, return a list of the above play log and displays each move of this play:
#' The start of each turn begins with the turn number: `Turn x`
#'    It announces where the player is located at the start of the turn: `Start at x`
#'    It announces what the player spun: `Spinner: x`
#'          If the player lands on a special space, it says `Landed on: x`
#'          It will announce Chute! or Ladder! depending on what type of special space it is.
#'    It announces where the player ends the turn: `Turn ends at: x`
#'
#' @export
#'
#' @examples
#' \dontrun {
#'     height <- 10
#'     width <- 10
#'     ladder <- list(c(1, 38), c(4,14), c(9,31), c(21,42))
#'     chute <- list(c(98,78), c(95,75), c(73,53), c(87,24))
#'     theboard <- ChutesAndLadders::the_board(height, width, ladder, chute)
#'     play_solo(theboard)
#' }
#'
play_solo <- function(theboard, verbose = FALSE) {

  spin <- sample(6, 1)

  times <- 0
  n <- 0
  move <- 0

  ladd <- theboard[[3]]
  l1 <- rep(NA, length(ladd)) #start point of ladder
  l2 <- l1 #end point of a ladder
  for (i in seq_len(length(ladd))) {
    l1[i] <- ladd[[i]][1]
    l2[i] <- ladd[[i]][2]
  }

  chu <- theboard[[4]]
  c1 <- rep(NA, length(chu)) #start point of chute
  c2 <- c1 #end point of a chute
  for (i in seq_len(length(chu))) {
    c1[i] <- chu[[i]][1]
    c2[i] <- chu[[i]][2]
  }

  lt <- rep(0, length(l1))
  ct <- rep(0, length(c1))

  while (n != 100) {

    if (n < 100){
      rand <- spin()
      times <- times +1
      if (verbose == TRUE) cat("Turn ", times, "\nStart at ", n, "\nSpinner ", rand, "\n")
      n <- n + rand
      if (verbose == TRUE) cat("Landed on ", n, "\n")
      if (n %in% l1) {
        r <- match(n, l1) #position of n in the ladder
        n <- l2[r] #n goes to the end of the ladder at position r
        lt[r] <- lt[r] + 1
        if (verbose == TRUE) cat("Ladder!", "\nTurn ends at ", n, "\n")
      }
      else if (n %in% c1) {
        rr <- match(n, c1)
        n <- c2[rr]
        ct[rr] <- ct[rr] + 1
        if (verbose == TRUE) cat("Chute!", "\nTurn ends at ", n, "\n")
      }
      if (verbose == TRUE) cat("\n")
    }
    else {
      n <- 99
      times <- times + 1
    }
    move <- c(move, n)
  }

  res <- list(turns = times, ladder_tally = lt, chute_tally = ct, move_log = move)
  return(res)
}
