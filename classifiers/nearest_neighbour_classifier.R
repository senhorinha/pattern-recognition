nearestNeighbourClassifier = setRefClass("nearestNeighbourClassifier",
    contains = "classifier",
    methods = list(

      classify = function(point) {
        datasetDimensions = dim(dataset)
        clazzColumnIndex = datasetDimensions[2]
        clazz = dataset[1,clazzColumnIndex]
        shortDistance = 10e100

        rowSize = datasetDimensions[1]
        for(rowNumber in 1:rowSize) {
            row = dataset[rowNumber, 1:clazzColumnIndex-1]
            class(row)<- "numeric"
            distance = distanceCalculator$calculate(point, row)
            if(distance < shortDistance) {
                shortDistance = distance
                clazz = dataset[rowNumber, clazzColumnIndex]
            }
        }

        clazz
      }
    )
)
