## creates list of functions [set, get, setInverse and getInverse]
## create an object x
  
  makeCacheMatrix <- function(x = matrix()) {  
       InverseNo  <- NULL    
       set <- function (y)  {
           x <<- y
           InverseNo  <<- NULL
       }
       get    <- function()       # get the matrix
       setinv <- function(inv)    # get inverse
       getinv <- function() xinv  # get inverse matrix
       list (set = set, get = get, setinv = setinv, getinv = getinv)
  }
  
## return the solved matrix values
 
  cacheSolve <- function(x, ...) {
    resultval <- x$getinv()
        if (!is.null(resultval)) {
                message(" .......cached data........")
                return resultval
        }
        data       <- x$get ()
        resultval  <- solve(data)
        x$setinv(resultval)
        return(resultval)     ## Return the inverse matrix of 'x'.
  }
