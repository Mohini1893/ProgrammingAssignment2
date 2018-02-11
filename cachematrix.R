## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special matrix called "matrix". The matrix is a list containing the functions to 
##1) set the value of the matrix
##2) get the value of the matrix
##3) set the value of the inverse
##4) get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
        x <<- y
          i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set,
                  get = get,
                  setinverse = setinverse,
                  getinverse = getinverse)
         }


## Write a short comment describing this function
##This function returns the inverse of the marix returned by the above function "makeCacheMatrix" and cache its inverse. 
##If the inverse has already been calculated, the function returns the inverse from the cache.

cacheSolve <- function(x, ...) {
         i <- x$getinverse()
         if (!is.null(i)) {
                 message("getting cached data")
         return(i)
  }
         data <- x$get()
        i <- solve(data, ...)
         x$setinverse(i)
        i
}
