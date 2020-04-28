## Put comments here that give an overall description of what your
## functions do

## 
## makeCacheMatrix function creates a special "matrix" object  which 
##is really a list containing a function to
##set the value of the matrix
##get the value of the matrix
##set the value of the inverse
##get the value of the inverse to cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        ivr <- NULL
  set <- function(y){
    x<<-y
    ivr<<-NULL
    get <- function() x
    setivr <- function(inverse) ivr <<- inverse
    getivr <- function() ivr
    list(set = set, get = get,
         setivr = setivr,
         getivr = getivr)
  }

}


## The following function calculates the inverse of the special "matrix" created with the above function.

cacheSolve <- function(x, ...) {
        inr <- x$getinv()
  if(!is.null(inr)) {
    message("You are getting cached data")
    return(ivr)
  }
  data <- x$get()
  ivr <- solve(data, ...)
  x$setivr(ivr)
  ivr
  
}
