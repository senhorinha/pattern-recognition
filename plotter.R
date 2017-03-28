plotter = setRefClass("plotter",
    methods = list(
      # Colors at http://www.statmethods.net/advgraphs/parameters.html
      plotGraph = function(points, path = "plot.png", colors = rainbow(10)) {
        clazzColumnIndex = dim(points)[2]

        col.list <- colors
        palette(col.list)
        classSeparation <- as.factor(points[,clazzColumnIndex])

        png(path)
        plot(points, pch=19, col=classSeparation)
        dev.off()
      }
    )
)
