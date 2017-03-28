doubleSpiral = setRefClass("doubleSpiral",
    methods = list(
      points = function() {
        spiral_one = spiral$new(700, 0.1, FALSE, 'spiral_one')
        spiral_two = spiral$new(700, 0.1, TRUE, 'spiral_two')
        one_points = spiral_one$points()
        two_points = spiral_two$points()
        rbind(one_points, two_points)
      },

      plotGraph = function(path = "spiral.png") {
        col.list <- c("red","green")
        palette(col.list)
        spiralSeparation <- as.factor(points[,3])

        png(path)
        plot(.self$points(), pch=19, col=spiralSeparation)
        dev.off()
      }
    )
)
