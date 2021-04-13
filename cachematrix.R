
## Explanatory Comment #1: 
## "The function below takes a vector input, calculates the mean, and stores it in a list." 

cacheMatrix <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}
matrix <- cacheMatrix(1:20)


## Explanatory Comment #2: 

## "This function creates another vector input. Thereafter, the function determines whether the vectors mean has been calculated by checking the list created from
## the function above. If there was no value created it returns a mean. If there was, no mean is calculated and the previously calculated mean is displayed."


cacheSolve <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}

cacheSolve(matrix)
## Solution = 10.5 

## Determining the inverse of the matrix:
inverse <- cacheSolve(matrix)
solve(inverse)

