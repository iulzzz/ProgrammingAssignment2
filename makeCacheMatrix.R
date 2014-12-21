makeCacheMatrix <- function(mymatrix) {
  i <- NULL
  set <- function(y) {
    mymatrix <<- y
    i <<- NULL
  }
  get <- function() mymatrix
  setSolve <- function(inverse) i <<- inverse
  getSolve <- function() i
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)
}
