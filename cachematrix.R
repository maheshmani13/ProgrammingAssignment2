## Put comments here that give an overall description of what your
## functions do
##These are the functions to makecache matrix of given matrix that has setters and getters.
##Taken reference from the example giving in coursera and changed variables m to solved and mean to solve


## Write a short comment describing this function
##This gives a list having setters and getters for solved value as well as matrix

makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  solved <- NULL
  set <- function(y) {
    x <<- y
    solved <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) solved <<- solve
  getsolve <- function() solved
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
##This function checks if the solved value has already been solved , if not then solves it

cacheSolve <- function(x, ...) {
  solved <- x$getsolve()
  if(!is.null(solved)) {
    message("Getting Inversed Matrix")
    return(solved)
  }
  data <- x$get()
  solved <- solve(data, ...)
  x$setsolve(solved)
  solved
}
