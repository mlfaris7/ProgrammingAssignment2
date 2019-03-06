## Programming Assignment2
## The makeCacheMatrix and cacheSolve functions below cache the inverse of a matrix


## The function creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
             m <<- NULL
	     set <- function(y){
                   x <<- y
                   m <<- NULL
	     }
            get <- function() x
            setInverse <- function(inverse) m <<- inverse
            getInverse <- function()m
            list(set = set, get = get,
	    	setInverse = setInverse,
		getInverse = getInverse)
}


## This function computes the inverse of a matrix returned by makeCacheMartix function. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$get()
        if (!is.null(m) {
               message("getting cached data")
	       return(m)
	}
	data <- x$getInverse()
	m <- solve(data, ...)
        x$setInverse(m)
	m
}
