euclideanDistanceCalculator <- setRefClass("euclideanDistanceCalculator",
    contains = "distanceCalculator",
    methods = list(
        calculate = function(dimensionsOne, dimensionsTwo) {
            sqrt(sum((dimensionsOne - dimensionsTwo) ^ 2))
        }
    )
)