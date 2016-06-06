#' Add data to the package 'outbreaks'
#'
#' This function take an outbreak data as input and outputs two files: i) this object, saved as a
#' compressed '.RData', and ii) a R file containing a template of roxygen2 documentation.
#'
#' @export
#'
#' @author Thibaut Jombart (\email{thibautjombart@@gmail.com}).
#'
#' @param x a dataset to be added
#'
#' @param dir the directory where the files should be saved
#'

## The purpose of this function is to perform a few checks on the data and generate the .RData and
## templace of the roxygen2 documentation. Accepted inputs are lists, data.frames, and matrices. In
## the latter, we can also test that there are more than one row. The function 'check.data', not
## exported, is included below.

add.data <- function(x, dir=getwd()){
    ## This mostly checks that the data is an acceptable type and not empty.
    check.data(x)

    ## We move to the right directory for outputs, come back to current one at the end.
    o.dir <- getwd()
    on.exit(setwd(o.dir))
    setwd(dir)
    x.name <- deparse(substitute(x))

    save(x.name, file=paste(x.name, "RData", sep="."), compress="xz")

    ## We generate a tempate of documentation. This must have been done somewhere else...
}





## This function checks that the input data is of the right type (list, data.frame, matrix, obkData) and
## not empty. 'x' is a new dataset; 'types' is a vector of data types allowed.

check.data <- function(x, types=c("list", "data.frame", "matrix", "obkData")){
    ## checks on types
    if (!inherits(x, types)){
        types.txt <- paste(types, collapse=", ")
        stop("new data must have one of the following types: ", types.txt)
    }

    ## checks that the object is not empty
    if (is.null(x)) {
        stop("x is NULL")
    }

    if(is.matrix(x) || is.data.frame(x)){
        if(nrow(x)<1) stop("The data table has no row!")
    }

}




