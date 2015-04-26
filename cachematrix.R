## creates list of functions: set, get, setInverse and getInverse

## create an object x 
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
       
       InverseNo  <- NULL
       
       set <- function (y)  {
       
           x <<- y
           InverseNo  <<- NULL
           
       }
       get    <- function ()         # get the matrix
       setinv <- function(inv)    # set inverse
       getinv <- function() xinv  # return inverse matrix
       
       list (set = set, get = get, setinv = setinv, getinv = getinv)
}


## return the solved matrix values.This function computes 
## the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already 
## been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        resultval <- x$getinv()
        if (!is.null(resultval)) {
                message("getting cached data")
                return resultval
        }
        data       <- x$get ()
        resultval  <- solve(data)
        x$setinv(resultval)
        return(resultval)     ## Return a matrix that is the inverse of 'x'
}

