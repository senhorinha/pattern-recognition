calculateHammingDistance <- function(vectorOne, vectorTwo) {
    sum(abs(vectorOne - vectorTwo))
}

calculateEuclideanDistance <- function(dimensionsOne, dimensionsTwo) {
  sqrt(sum((dimensionsOne - dimensionsTwo) ^ 2))
}