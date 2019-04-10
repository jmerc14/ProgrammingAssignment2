#Matrix inversion Program

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
      x <<- y
      m <<- NULL
  }
   get <- function() x
   setinverse <- function(inverse) i <<- inverse
   getinverse <- function() i
   list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


#CacheSolve

cachesolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cache data")
    return(i)
  }
  data <- x$get()
    i <- solve(mat, ...)
    x$setInverse(i)
    i
  
  
  
}
