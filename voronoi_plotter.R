voronoiPlotter = setRefClass("voronoiPlotter",
    methods = list(
      # Colors at http://www.statmethods.net/advgraphs/parameters.html
      plotGraph = function(x, y, path = "voronoi_plot.png", colors = rainbow(10)) {
        col.list <- colors
        palette(col.list)

        vtess <- deldir(x, y)

        png(path)

        plot(x, y, type="n", asp=1)
        plot(vtess, wlines="triang", wpoints="none", number=FALSE, add=TRUE, lty=1)
        points(x, y, pch=20, cex=0.5)

        dev.off()
      }
    )
)
