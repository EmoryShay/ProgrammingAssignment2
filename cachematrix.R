## Creates cached matrix and adds the inverse of the inputed matrix

## Creates a matrix to be cached

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
  set <- function(y){
      x <<- y
      i <<- NULL
  }
  get <- function()x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Returns a matrix the inverse of x and "getting cached data" if the data has to be cached

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
