## Write a short comment describing this function:
## This function will create a special matrix object that is able to cache its inverse. 

makeCacheMatrix <- function(x = matrix()) {
  
    ## This is where the inverse will be stored / Initialized.
    Inv <- NULL           
   
    ## Set the matrix.
    set     <- function(y) { 
                x <<- y
                Inv <<- NULL
  }
  
    ## Now we want to get the matrix.
    get <- function() {
      x
    }
    
    ## Set up inverse function of the matrix.
    setmatr <- function(inverse) {
      Inv <<- inverse
    }
    
    ## Get the inverse and return it.
    getmatr <<- function() {
      Inv
    }
    
    ## This returns a list of methods
    list(set = set, get = get,
         setmatr = setmatr,
         getmatr = getmatr)
}


## Write a short comment describing this function:
## This following function calculates the inverse of the matrix created with my above function. 
## First, it checks to see if the inverse has already been calculated. 
## If it has already been calculated, hen it should retrieve the inverse form the cache.

cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  Inv <- x$getmatr()
  
  ## Return the inverse if already set
  if( !is.null(Inv) ) {
    message("getting cached data")
    return(Inv)
  }
  
  ## Get the matrix from object
  data <- x$get()
  
  ## Calculation of the inverse using matrix multiplication
  Inv <- solve(data, ...)
  
  ## Set the inverse to object
  x$setmatr(Inv)
  
  ## Returns the matrix
  Inv
}


### Testing my functions ###

test_matrix <- makeCacheMatrix(matrix(rnorm(1:4), 2, 2))

cacheSolve(test_matrix)

## Seems okay!