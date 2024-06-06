#' Define Board
#'
#' This function returns a list containing information of a user-defined board for the chute-and-ladders game.
#' You can also:
#' Visualize the board with `show_board()` function.
#' Play a solo game with `play_solo()` function.
#' Perform simulation with `simualte_board()` function.
#'
#'
#' @param height A positive integer representing the number of rows in the board
#' @param width A positive integer representing the number of columns in the board
#' @param ladder A list of vectors, each with two positive integers representing the start and end position of a ladder
#' @param chute A list of vectors, each with two positive integers representing the start and end position of a chute
#'
#' @return A list containing information of four user-defined inputs
#' @export
#'
#' @examples
#' board <- define_board(height=10, width=10,
#' ladder=list(c(1, 23), c(9,36), c(50,75), c(68,98)),
#' chute=list(c(26,8), c(78,48), c(35,6), c(90,69)))
#'
define_board <- function(height=10, width=10,
                      ladder=list(c(1, 23), c(9,36), c(50,75), c(68,98)),
                      chute=list(c(26,8), c(78,48), c(35,6), c(90,69))) {
  ## Condition Check
  #Check that width and height are positive integers
  if (width%%1!=0 || width <= 0 || height%%1!=0 || height <= 0) {
    stop("Argument 'width' and 'height' must be positive integers.")
  }
  #Check ladder and chute size validity
  max_position <- height*width
  if (max(unlist(ladder) > max_position) || min(unlist(ladder)) < 1) {
    stop("The position of a 'ladder' must be larger or equal to 1 and smaller than the game end point.")
  }
  if (max(unlist(chute) > max_position) || min(unlist(chute)) < 1) {
    stop("The position of a 'chute' must be larger or equal to 1 and smaller than the game end point.")
  }
  #Check ladder and chute start/end point constraint
  ladder_pt <- lapply(seq(ladder), function(i) (ladder[[i]][1] >= ladder[[i]][2]))
  if(any(unlist(ladder_pt))) {
    stop("The start should be smaller than the end for a ladder")
  }
  chute_pt <- lapply(seq(chute), function(i) (chute[[i]][1] <= chute[[i]][2]))
  if(any(unlist(chute_pt))) {
    stop("The start should be larger than the end for a chute")
  }

  ## Create The Board
  theboard <- list(height, width, ladder, chute)
  return(theboard)
}
