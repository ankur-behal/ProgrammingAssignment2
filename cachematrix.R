## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	invmtrx <- NULL
	set <- function(y) {
		x <<- y ## << is used to assign a variable in an environment which is not in current environment
		invmtrx <<- NULL
		
	}
	get <- function () x
	setinverse <- function(inverse) invmtrx <- inverse
	getinverse <- function ()  invmtrx
	list (set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        invmtrx <- x$getinverse()
	if(!is.null(invmtrx)) {
		message ("Getting Inverse From Cache")
		return (invmtrx)
	}
	inv <- x$get()
	invmtrx <- solve(inv)
	x$setinverse(invmtrx)
	invmtrx

}
