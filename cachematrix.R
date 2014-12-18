## The first function, makeVector creates a special "vector", which is really a list containing a function to
## 1) Set the value of the vector
## 2) Get the value of the vector
## 3) Set the value of the mean
## 4) Get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
        # initially nothing is cached so set it to NULL and it is used to hold cache
        cache <- NULL
        
        # store a matrix
        setMatrix <- function(newValue) {
        x <<- newValue
        # since the matrix is assigned a new value, flush the cache
        cache <<- NULL
        }

        # returns the stored matrix
        getMatrix <- function() {
        x
        }
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
