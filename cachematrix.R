## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function below takes a vector input, calculates the mean, and stores it in a list. 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
+         set <- function(y) {
+                 x <<- y
+                 m <<- NULL
+         }
+         get <- function() x
+         setmean <- function(mean) m <<- mean
+         getmean <- function() m
+         list(set = set, get = get,
+              setmean = setmean,
+              getmean = getmean)

}


## Write a short comment describing this function
## This function creates another vector inpu. Thereafter, the function determines whether the vectors mean has been calculated by checking the list created from
## the function above. If there was no value created it returns a mean. If there was, no mean is calculated and the previously calculated mean is displayed. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
            m <- x$getmean()
+         if(!is.null(m)) {
+                 message("getting cached data")
+                 return(m)
+         }
+         data <- x$get()
+         m <- mean(data, ...)
+         x$setmean(m)
+         m
}
