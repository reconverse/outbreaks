#' Add data to the package 'outbreaks'
#'
#' This function take an outbreak data as input and outputs two files: i) this object, saved as a
#' compressed '.RData', and ii) a R file containing a template of roxygen2 documentation.
#'
#' @export
#'
#' @author Thibaut Jombart (\email{thibautjombart@@gmail.com}).
#'
#'
#' @examples
#'

## The purpose of this function is to perform a few checks on the data and generate the .RData and
## templace of the roxygen2 documentation. Accepted inputs are lists, data.frames, and matrices. In
## the latter, we can also test that there are more than one row. The function 'check.data', not
## exported, is included below.

add.data <- function(x){
    check.data(x)
}



## This function checks that the input data is of the right type (list, data.frame, or matrix) and
## not empty.

check.data <- function(x){
    if (is.null(x)) {
        stop("x is NULL")
    }

    if (!inherits(x, c("list", "data.frame", "matrix"))){
        stop("new data must be of a list, data.frame, or matrix")
    }

}




