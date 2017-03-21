Spiral = setRefClass("Spiral",
    fields = list(length = 'numeric', growthSpeed = 'numeric'),
    
    methods = list(
       initialize = function(length, growthSpeed) {
        .self$length = length
        .self$growthSpeed = growthSpeed
       },
      
      buildPoints = function() {
        spiralPoints = matrix(0, length, 2)
        
        for (index in 1:length) {
            angle = growthSpeed * index;
            x = (1+angle) * cos(angle);
            y = (1+angle) * sin(angle);
            spiralPoints[index, ] = c(x, y)
        }

        spiralPoints
      },
      
      plotGraph = function(path = "spiral_plot.png") {
        png(path)
        plot(.self$buildPoints())
        dev.off()
      }
    )
)