## R Programming Assignment 2- Caching the inverse of a matrix
## This project contains 2 functions- makeCacheMatrix creates a matrix and 
## cacheSolve computes the inverse of the creates matrix using the solve() function 

## First function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
          x <<- y
          m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m

}


## Second function

cacheSolve <- function(x=matrix(), ...) {
    
    m <- x$getmatrix()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    matrix <- x$get()
    m <- solve(matrix, ...)
    x$setmatrix(m)
    m
        
}