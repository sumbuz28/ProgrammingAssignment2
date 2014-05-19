## set the value of the matrix
## get the value the matrix
## set the value of the inverse 
## get the value of the inverse  

makeCacheMatrix <- function(x = matrix()) {
n <- NULL
set <- function(z){
 x <<- z
 n <<- NULL
}

get <-function() x
setinverse <- function(solve) n <<-solve
getinverse <- function() n
list(set=set, get=get,
     setinverse=setinverse,
     getinverse=getinverse)

}


## function below calculates the inverse of the matrix created with the above 
##function
##first the function checks to see if the inverse has already been calculated
##if so it gets the inverse from the cache and skips the computation.
##otherwise it calculates the inverse of the data and set the value of inverse 
## the cache via setinverse funtion

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 n <- x$getinverse()
 if(!is.null(n)) {
   message("using cached data")
   return(n)
 }
 data <- x$get()
 n <-solve(data, ...)
 x$setinverse(n)
 n
}
