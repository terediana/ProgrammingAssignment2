## Put comments here that give an overall description of what your
## functions do


## The function makeCacheMatrix receives the matrix,
## the default value is an empty matrix.
## Function creates a list of 4 functions for operating on the matrix:
## 1. a function to set the values of the elements of the matrix 
## 2. a function to get the matrix
## 3. a function to set the inverse of the matrix
## 4. a function to get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  
  inversa <<- NULL 
  
  set <- function(y) { ## function to set the value of matrix and
    x <<- y            ## to initialize the inverse with NULL.  
    inversa <<- NULL 
    
  }
  
  get <- function() x ## función to get the  matrix.
  
  setinv <- function(inV) inversa <- inV  ## function to set the the inverse matrix.
  
  getinv <- function() inversa ## function to get the the inverse matrix.
  
  ## the object is created. It is a list of 4 functions.
  list(set = set, get = get, 
       setinv = setinv,
       getinv = getinv)
  
}



## The function receives a list of functions for
## operating on a matrix created by makeCacheMatrix 
## Function calculates the inverse of the matrix only
## if it is not computed before. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  inversa <- x$getinv() ## get the inverse
  
  ## if the inverse was calculated
  if( !is.null(inversa ) ) { 
    message("getting cached inverse matrix") ## take it  
    return(inversa) ## take it. 
    
  }
  
  
  inversa <- solve(x$get()) ## if the inverse was not calculated, it is need no find
                         ## using solve function.
  x$setinv(inversa) ## set the value using the object function setinv
  
  inversa ## take it.
  
}
