## Put comments here that give an overall description of what your
## functions do


## This function set and get the value of metrix and inverse metrix and
## return list
makeCacheMatrix <- function(x = matrix()) {
  
  #initialize the varaible that holds metrix to null
  inverseMatrix <- NULL
  #Set and Get method to assign value to inverseMatrix variable
  setinverseMatrix <- function(value) inverseMatrix <<- value
  getinverseMatrix <- function() inverseMatrix
  
  set <- function(y) {
    x <<- y
    inverseMatrix <<- NULL
  }
  
  get <- function() x
  
  list( setinverseMatrix = setinverseMatrix, getinverseMatrix = getinverseMatrix, set = set, get = get)
}


## This function returns the invers of a given x
cacheSolve <- function(x, ...) {
  inverse <- x$getinv()
  data <- x$get()
  inverse <- solve(data, ...)
  x$setinverse(inverse)
  
  inverse
}
