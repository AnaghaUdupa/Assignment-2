
## write a pair of
##functions that cache the inverse of a matrix using Lexical Scope concepts.
##The two functions created are: makeCacheMatrix and cacheSolve
##makeCacheMatrix function creates a special "matrix" object that can cache
##its inverse or store the matrix and its inverse.

## Creates a list that set/gets the matrix and the inverse of the matrix



makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Returns the inverse of the matrix
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  j <- solve(x)
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}


makeCacheMatrix()
cacheSolve(x)
