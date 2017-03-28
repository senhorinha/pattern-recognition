library('hashmap')

kNearestNeighbourClassifier = setRefClass("kNearestNeighbourClassifier",
    contains = "classifier",
    methods = list(

      classify = function(point, k = 5) {
        datasetDimensions = dim(dataset)
        rowSize = datasetDimensions[1]
        clazzColumnIndex = datasetDimensions[2]

        shortsDistances = hashmap(1e100, dataset[1, clazzColumnIndex])

        for(rowNumber in 1:rowSize) {
            clazz = dataset[rowNumber, clazzColumnIndex]
            row = as.numeric(dataset[rowNumber, 1:clazzColumnIndex-1])

            calculatedDistance = distanceCalculator$calculate(point, row)
            distances = sortDecreasing(shortsDistances$keys())
            if(length(distances) < k) {
              shortsDistances$insert(calculatedDistance, clazz)
            } else {
              for(distanceIndex in 1:length(distances)) {
                shortDistance = distances[distanceIndex]
                if(calculatedDistance < shortDistance) {
                    shortsDistances$insert(calculatedDistance, clazz)
                    shortsDistances$erase(shortDistance)
                    break;
                 }
              }
            }
        }

        findMostFrequent(shortsDistances$values())
      },

      findMostFrequent = function (values) {
        names(sort(summary(as.factor(values)), decreasing = T)[1:1])
      },

      sortDecreasing = function (values) {
        values[order(unlist(values), decreasing = TRUE)]
      }
    )
)
