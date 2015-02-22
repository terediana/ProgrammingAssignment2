## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function makeCacheMatrix receives the matrix,
## the default value is an empty matrix.
## Function creates a list of 4 functions for operating on a matrix:
## 1. a function to set the values of the elements of the matrix
## 2. a function to get the matrix
## 3. a function to set the inverse of the matrix
## 4. a function to get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  
  inversa <<- NULL 
  
  set <- function(y) { 
    x <<- y 
    inversa <<- NULL 
    
  }
  
  get <- function() x
  
  setinv <- function(inV) inversa <<- inV
  
  getinv <- function() inversa
  
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}


## Write a short comment describing this function
## The function receives a list of function for
## operating on a matrix created by makeCacheMatrix 
## Function calculates the inverse of the matrix only
## if there is not computed before. If the inverse exists
## function does not compute the inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  inversa <- x$getinv()
  
  
  if( !is.null(inversa ) ) { 
    message("getting cached inverse matrix")
    return(inversa)
    
  }
  
  
  inversa <- solve(data)
  
  x$setinv(inversa)
  
  inversa
  
}
