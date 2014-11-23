## Put comments here that give an overall description of what your
## functions do

## My function gets as an input invertible matrix and return the inverse matrix as an Output.
# Its warp the matrix with the solve function and other get function.
# at the first execution it calculates its inverse matrix,
# in the next iteration that the inverse value will be needed, we will get it from the cache

# you can execute this example
# cacheSolve(makeCacheMatrix(matrix(1:4,2,2)))


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
          x <<- y
          m <<- NULL
        }
        get <- function() x
        setInverse <- function(Inverse) m <<- Inverse
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
  
}


## Write a short comment describing this function
# This function gets a list which contains a matrix with or without it inverse matrix.
# if it has already the inverse matrix it extract it from the cache, if it is not exists it calculate it.

cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting the Inverse Matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
  ## Return a matrix that is the inverse of 'x'
  ## source("cash.R")
}
