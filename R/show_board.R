#' Show Board
#'
#' This function visualizes the board of a chutes-and-ladders game with a user-defined board.
#' You can also:
#' Define the board with `define_board()` function.
#' Play a solo game with `play_solo()` function.
#' Perform simulation with `simualte_board()` function.
#'
#' @param theboard A list of four elements of board information:`height`,`width`,`ladder`and `chute`
#'
#' @return This function does not return a value but produces a plot representing the game board.
#' @export
#'
#' @examples
#' board <- define_board(height=10, width=10,
#' ladder=list(c(1, 23), c(9,36), c(50,75), c(68,98)),
#' chute=list(c(26,8), c(78,48), c(35,6), c(90,69)))
#'
#' show_board(board)
#'

show_board <- function(theboard) {
  ## Obtaining the board information
  height <- theboard[[1]]
  width <- theboard[[2]]
  ladder <- theboard[[3]]
  chute <- theboard[[4]]

  ## Board Plot
  #initialize the plot
  plot.new()
  plot.window(xlim = c(0, width), ylim = c(0, height), asp = 1)

  #prepare the grid
  for (i in 0:height) {
    segments(x0 = 0, y0 = i, x1 = width, y1 = i)
  }
  for (i in 0:width) {
    segments(x0 = i, y0 = 0, x1 = i, y1 = height)
  }

  #insert the numbers
  for (i in seq_len(height)) {
    if (i %% 2 != 0) { #if height is odd
      for (j in seq_len(width)) {
        text(j - 0.5, i - 0.5, labels = (i-1)*width + j)
      }
    }
    else { #if height is even
      for (j in seq_len(width)) {
        text(j - 0.5, i - 0.5, labels = (i*width + 1) - j)
      }
    }
  }

  n <- integer(0) #n is an individual number in the box
  k <- function(n) { (n-1)%/%width +1 } #k is the line number for n
  x.odd <- function(n,k) { n - (k-1)*width - 0.5 } #xcoo for odd lines
  x.even <- function(n,k) { k*width - n + 0.5 } #xcoo for even lines
  ycoo <- function(n) { (n-1)%/%width + 0.5 } #ycoo

  is.odd <- function(k) {
    if (k %% 2 != 0)
      return(TRUE)
    else
      return(FALSE)
  }

  #insert ladders
  for (i in seq(ladder)) {
    n1 <- ladder[[i]][1]
    n2 <- ladder[[i]][2]
    l1 <- k(n1)
    l2 <- k(n2)
    if (is.odd(k(n1)) && is.odd(k(n2))) {
      arrows(x.odd(n1,l1), ycoo(n1), x1=x.odd(n2,l2), y1=ycoo(n2), col = 3, lwd = 2)
    }
    else if (is.odd(k(n1)) && is.odd(k(n2)) == F) {
      arrows(x.odd(n1,l1), ycoo(n1), x1=x.even(n2,l2), y1=ycoo(n2), col = 3, lwd = 2)
    }
    else if (is.odd(k(n1)) == F && is.odd(k(n2))) {
      arrows(x.even(n1,l1), ycoo(n1), x1=x.odd(n2,l2), y1=ycoo(n2), col = 3, lwd = 2)
    }
    else {
      arrows(x.even(n1,l1), ycoo(n1), x1=x.even(n2,l2), y1=ycoo(n2), col = 3, lwd = 2)
    }
  }

  #insert chutes
  for (i in seq(chute)) {
    n1 <- chute[[i]][1]
    n2 <- chute[[i]][2]
    l1 <- k(n1)
    l2 <- k(n2)
    if (is.odd(k(n1)) && is.odd(k(n2))) {
      arrows(x.odd(n1,l1), ycoo(n1), x1=x.odd(n2,l2), y1=ycoo(n2), col = 2, lwd = 2)
    }
    else if (is.odd(k(n1)) && is.odd(k(n2)) == F) {
      arrows(x.odd(n1,l1), ycoo(n1), x1=x.even(n2,l2), y1=ycoo(n2), col = 2, lwd = 2)
    }
    else if (is.odd(k(n1)) == F && is.odd(k(n2))) {
      arrows(x.even(n1,l1), ycoo(n1), x1=x.odd(n2,l2), y1=ycoo(n2), col = 2, lwd = 2)
    }
    else {
      arrows(x.even(n1,l1), ycoo(n1), x1=x.even(n2,l2), y1=ycoo(n2), col = 2, lwd = 2)
    }
  }
}
