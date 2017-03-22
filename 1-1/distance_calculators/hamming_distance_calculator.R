hammingDistanceCalculator <- setRefClass("hammingDistanceCalculator",
    contains = "distanceCalculator",
    methods = list(
        calculate = function(vectorOne, vectorTwo) {
            sum(abs(vectorOne - vectorTwo))
        }
    )
)