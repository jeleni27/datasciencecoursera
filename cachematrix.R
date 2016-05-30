## Functions written as part of the Coursera R programming Course.
## Week 3 Programming assignment

## This function creates a special matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <-NULL ##will hold the value of matrix inverse
  set <- function (y){ x <<- y
  inv <<- NULL }
get <- function()x ##the get  function returns value of the matrix argument
setinverse <- functiton(inverse) inv <<- inverse ##assigns value of inv parent environment
getinverse <- function()inv ##get value of inv where called
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) 
 }


## This function computes the inverse of the matrix returned by the function above 

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
