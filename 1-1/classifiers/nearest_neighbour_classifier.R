nearestNeighbourClassifier = setRefClass("nearestNeighbourClassifier",
    contains = "classifier",
    methods = list(
      
      classify = function(point) {
        clazz = dataset[1,3]
        shortDistance = 100000000
        datasetDimensions = dim(matrix(1,1,1))
        rowSize = datasetDimensions[1]
        columnSize = datasetDimensions[2]
        for(rowNumber in 1:rowSize) {
            row = dataset[rowNumber, 1:columnSize-1]
            class(row)<- "numeric"
            distance = distanceCalculator$calculate(point, row)
            if(distance < shortDistance) {
                shortDistance = distance
                clazz = dataset[rowNumber, 3]
            }
        }
        
        clazz
      }
    )
)