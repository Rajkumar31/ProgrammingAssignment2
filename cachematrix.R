## The first function, makeVector creates a special "vector", which is really a list containing a function to
## 1) Set the value of the vector
## 2) Get the value of the vector
## 3) Set the value of the mean
## 4) Get the value of the mean

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        # initially cache is set to NULL
        # cache is used to hold the matrix
        cache <- NULL
        
        # store a matrix
        setMatrix <- function(newValue) {
                x <<- newValue
                # since the matrix is assigned a new value, flush the cache
                cache <<- NULL
        }

        # output the matrix
        getMatrix <- function() {
                x
        }
        
        # cache the passed value
        cacheInverse <- function(solve) {
                cache <<- solve
        }

        # Access the cached value
        getInverse <- function() {
                cache
        }
        
        # return a list consisting of functions
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}

## CacheSolve matrix is used to compute the inverse of the matrix after getting the matrix from cache

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has
## already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        # get the cached value
        inverse <- y$getInverse()
        # If a cached value is not null then it is returned
        if(!is.null(inverse)) {
                message("getting cached data")
                return inverse
        }
        
        # If cache value is null, caclulate the inverse and store it in the cache
        data <- y$getMatrix()
        inverse <- solve(data)
        y$cacheInverse(inverse)
        
        # Finally return the inverse
        return inverse
}
