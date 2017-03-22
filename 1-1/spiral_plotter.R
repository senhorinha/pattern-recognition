col.list <- c("red","green")
palette(col.list)

spiral_one = Spiral$new('spiral_one', 700, 0.1, FALSE)
spiral_two = Spiral$new('spiral_two', 700, 0.1, TRUE)
one_points = spiral_one$buildPoints()
two_points = spiral_two$buildPoints()
fusion = rbind(one_points, two_points)
spiralSeparation <- as.factor(fusion[,3])

png('fusion.png')
plot(fusion, pch=19, col=spiralSeparation)
dev.off()