cacheSolve <- function(mymatrix, ...) {
  i <- mymatrix$getSolve()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- mymatrix$get()
  i <- solve(data, ...)
  mymatrix$setSolve(i)
  i
}