sampleExecutor = setRefClass("sampleExecutor",
    fields = list(distanceCalculator = 'distanceCalculator', dataset = 'matrix'),
    methods = list(
       initialize = function(distanceCalculator, dataset, point) {
        .self$distanceCalculator = distanceCalculator
        .self$dataset = dataset
       },

      execute = function(point) {
        nearestNeighbourClassifier = nearestNeighbourClassifier$new(distanceCalculator, dataset) # Prepare nearestNeighbour
        kNearestNeighbourClassifier = kNearestNeighbourClassifier$new(distanceCalculator, dataset) # Prepare kNearestNeighbour

        print(paste('Nearest Neighbour: ', nearestNeighbourClassifier$classify(point))) # Print result of nearestNeighbour classification
        print(paste('k-Nearest Neighbours classification: ', kNearestNeighbourClassifier$classify(point))) # Print result of kNearestNeighbour classification
      }
    )
)
