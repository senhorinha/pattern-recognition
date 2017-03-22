classifier = setRefClass("classifier",
    fields = list(distanceCalculator = 'distanceCalculator', dataset = 'matrix'),
    
    methods = list(
       initialize = function(distanceCalculator, dataset) {
        .self$distanceCalculator = distanceCalculator
        .self$dataset = dataset
       },
      
      classify = function(point) {
        print('Must implement!')
      }
    )
)