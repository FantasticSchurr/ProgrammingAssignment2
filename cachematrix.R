## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function will create a special matrix object that is able to cache its inverse. 

makeCacheMatrix <- function(m = matrix()) {
  
    ## This is where the inverse will be stored / Initialized.
    I <- NULL           
   
    ## Set the matrix.
    set     <- function(y) { 
                m <<- y
                I <<- NULL
  }
  
    ## Now we want to get the matrix.
    get <- function() {
      m
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
}
