## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function will create a special matrix object that is able to cache its inverse. 

makeCacheMatrix <- function(x = matrix()) {
  
    ## This is where the inverse will be stored / Initialized.
    I <- NULL           
   
    ## Set the matrix.
    set     <- function(y) { 
                x <<- y
                I <<- NULL
  }
  
    ## Now we want to get the matrix.
    get <- function() {
      x
    }
    
    ## Set up inverse function of the matrix.
    setmatr <- function(inverse) {
      I <<- inverse
    }
    
    ## Get the inverse and return it.
    getmatr <<- function() {
      I
    }
    
    ## This returns a list of methods
    list(set = set, get = get,
         setmatr = setmatr,
         getmatr = getmatr)
}


## Write a short comment describing this function

## This following function calculates the inverse of the special matrix created with the above function. 
## First, it checks to see if the inverse has already been calculated. 

cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  I <- x$getmatr()
  
  ## Return the inverse if already set
  if( !is.null(I) ) {
    message("getting cached data")
    return(I)
  }
  
  ## Get the matrix from our object
  data <- x$get()
  
  ## Calculation of the inverse using matrix multiplication
  I <- solve(data, ...)
  
  ## Set the inverse to object
  x$setmatr(I)
  
  ## Returns the matrix
  I
}