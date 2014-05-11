## Put comments here that give an overall description of what your
## Below are two functions that are used to create a special object 
## that stores a matrix and cache's its inversion.

## This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
	inverseMatrix <- NULL
	set <- function(y) {
		x <<- y
		inverseMatrix <<- NULL
	}

	get <- function() {
		return (x)
	}

	setInverse <- function(inputMatrix) {
		inverseMatrix <<- inputMatrix
	}

	getInverse <- function() {
		return (inputMatrix)
	}

	return (list(set = set, get = get, setInverse = setInverse, getInverse = getInverse))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	inverseMatrix <- x$getInverse()
	if (!is.null(m)) {
		message("getting cached data")
		return (inputMatrix)
	}
	data <- x$get()
	inverseMatrix <- solve(x)
	x$setInverse(inverseMatrix)
	return (inverseMatrix)
}
