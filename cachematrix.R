## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        sol <- NULL
        set <- function(y) {
                x <<- y
                sol <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) sol <<- solve
        getsolve <- function() sol
        list(set = set, get = get,
             setsolve = setsolve,
             get = getsolve)
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting inversed matrix of ")
                return(m)
        }
        data <- x$get()
        sol <- solve(data, ...)
        x$setsolve(sol)
        sol
}


