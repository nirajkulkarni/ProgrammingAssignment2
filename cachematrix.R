
##The first function, makecachematrix creates a function to

##set the value of the matrix
##get the value of the matrix
##set the value of the inverse of matrix
##get the value of the inverse of matrix
        
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y) {
   x <<- y
   m <<- NULL
    }
get <- function() x
setinverse <- function(inverse) m <<- inverse
getinverse <- function() m
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



## Cachesolve returns inverse of matrix

cacheSolve <- function(x, ...) {
m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data.")
        return(m)
    }
data <- x$get()
m <- solve(data)
x$setinverse(m)
m
}
