kNearestNeighbourClassifier = setRefClass("kNearestNeighbourClassifier",
    contains = "classifier",
    methods = list(
      
      classify = function(point, k = 5) {
        clazzs = c(rep(dataset[1,3], k))
        shortsDistances = c(rep(10000, k))
        datasetDimensions = dim(matrix(1,1,1))
        rowSize = datasetDimensions[1]
        columnSize = datasetDimensions[2]
        
        for(rowNumber in 1:rowSize) {
            row = dataset[rowNumber, 1:columnSize-1]
            class(row) <- "numeric"
            distance = distanceCalculator$calculate(point, row)
            for(shortDistanceIndex in 1:k) {
               if(distance < shortsDistances[shortDistanceIndex]) {
                    # error (sort)
                    shortsDistances[shortDistanceIndex] = distance
                    clazzs[shortDistanceIndex] = dataset[rowNumber, 3]
                    break; 
                }
            }
        }
        print(clazzs)
        findMostFrequent(clazzs)
      },
      
      findMostFrequent = function (clazzs) {
        names(sort(summary(as.factor(clazz)), decreasing=T)[1:1])  
      }
    )
)