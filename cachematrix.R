## A pair of functions that inverse of a matrix.


## Creates a special matrix object that can cache its inverse. 

makeCacheMatrix <- function(x = matrix()) {

## Initialize the inverse property
	i <- NULL
## Method to set the matrix
	set <- function(matrix){
		m <<- matrix
		i <<- NULL
	}

## Method to get the matrix
	get <- function() {
		## Return the matrix
		m
	}

## Method to set the inverse of the matrix
	setInverse <- function(inverse) {
		i <- inverse
	}

## Method to get the inverse of the matrix
	getInverse <- function() {
		## Return the inverse property
		i
	}

## return a list of the methods
	list(set = set, get = get,
		setInverse = setInverse, getInverse = getInverse)
}


## Compute the inverse of the special matrix returned by "makeCacheMatrix".

##If the inverse has been calculated (and the matrix has not changed),

## then the "cachesolve" should retrive the inverse from the cache.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()

    ## return the inverse if its already set
        if(!is.nill(m)){
        	message("hetting cached data")
        	return(m)
        }
    ## get the matrix from our object
    	data <- x$get()

    ## Calculated the inverse using matrix maultiplication
    	m <- solve(data) %*% data

    ## Set the inverse to the object
    	x$setInverse(m)
    ## Return the matrix
    	m
}
