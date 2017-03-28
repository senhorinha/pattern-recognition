# Load all dependencies
source('dependencies.R')

doubleSpiral = doubleSpiral$new()
doubleSpiralPoints = doubleSpiral$points();

distanceCalculator = hammingDistanceCalculator$new()
kNearestNeighbourClassifier = kNearestNeighbourClassifier$new(distanceCalculator, doubleSpiralPoints)

doubleSpiralPointsDimensions = dim(doubleSpiralPoints)
bankRowsSize = doubleSpiralPointsDimensions[1]
classifiedPoints = matrix(0, bankRowsSize, doubleSpiralPointsDimensions[2])

xPoints = seq(-100, 100)
yPoints = seq(-100, 100)

pointsToClassify = matrix(0, length(xPoints) * length(yPoints), 2)
count = 1
for(xPointIndex in 1:length(xPoints)) {
    for(yPointIndex in 1:length(yPoints)) {
      pointsToClassify[count, ] = c(xPoints[xPointIndex], yPoints[yPointIndex])
      count = count + 1
      print(count)
    }
}

pointsToClassifySize = dim(pointsToClassify)[1]
classifiedPoints = matrix(0, pointsToClassifySize, 3)

for (pointsToClassifyIndex in 1:pointsToClassifySize) {
  point = pointsToClassify[pointsToClassifyIndex, ]
  clazz = kNearestNeighbourClassifier$classify(point)
  classifiedPoints[pointsToClassifyIndex, ] = c(point[1], point[2], clazz)
}

plotter = plotter$new()
allPoints = rbind(doubleSpiralPoints, classifiedPoints)
plotter$plotGraph(allPoints, 'plots/double_spiral_analysis.png')
