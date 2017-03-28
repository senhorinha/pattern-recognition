hammingDistanceCalculator <- setRefClass("hammingDistanceCalculator",
    contains = "distanceCalculator",
    methods = list(
        calculate = function(vectorOne, vectorTwo) {
            sum(abs(as.numeric(vectorOne) - as.numeric(vectorTwo)))
        }
    )
)
