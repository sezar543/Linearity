#' Checks if three vectors are linearly independent and returns true if they are.
#'
#' @param x Numeric vector
#' @param y Numeric vector
#' @param z Numeric vector
#' @param verbose if true, it prints the progress in computing the 3x3 minors of the matrix [x y z]
#' @param na.rm
#'
#' @return True if the three vectors are linearly independent.
#' @export
#'
#' @examples
#' lin_indep_threevectors(c(2,1,1),c(3,2,1),c(5,5,6))
#'
lin_indep_threevectors <- function(x, y, z, verbose=FALSE, na.rm = FALSE) {
  if(!is.numeric(x)||!is.numeric(y)||!is.numeric(z)) {
    stop('The entries of vectors are not numeric.\n',
         'You have provided an object of class: ',class(c(x,y,z))[1])
  }

  if( length (x) - length (y) !=0 || ( length(x) - length (z) ) !=0){
    stop('The length of these vectors are not equal and so, it does not make sense to check if they are linearly independent!')
  }

  n <- length (x)
  A <- matrix(
    c(x,y,z), # the data elements
    nrow=n,              # number of rows
    ncol=3,              # number of columns
    byrow = FALSE)        # fill matrix by rows

  for(i in 1:(n-2)){
    for(j in (i+1):(n-1)){
      for(k in (j+1):n){
        B <- A[c(i,j,k),c(1,2,3)]
        if (verbose==TRUE){
          cat("Computing the determinant of the 3-by-3 submatrix of rows ",i,j,k,"\n")
          #cat("j=",j,"\n")
          #cat("k=",k,"\n")
        }

        if( abs(det ( B )) > 1e-15 ) {
          cat("These three vectors are linearly independent\n");
          return (TRUE)
        }
      }
    }
  }
  cat("These three vectors are linearly dependent.\n")
  return (FALSE)
}
