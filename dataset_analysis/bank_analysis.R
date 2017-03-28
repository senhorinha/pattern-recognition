# Load all dependencies
source('dependencies.R')

bank = bankTwoDimensionsDataset$new('dataset/bank.xlsx')
bankPoints = bank$points();

distanceCalculator = hammingDistanceCalculator$new()
kNearestNeighbourClassifier = kNearestNeighbourClassifier$new(distanceCalculator, bankPoints)

bankPointsDimensions = dim(bankPoints)
bankRowsSize = bankPointsDimensions[1]
classifiedPoints = matrix(0, bankRowsSize, bankPointsDimensions[2])

pointsToClassifySize = 2000
randomDurationOfCreditMonth = as.integer(runif(n = pointsToClassifySize, min = 6, max = 60))
randomCreditAmount = as.integer(runif(n = pointsToClassifySize, min = 300, max = 12000))
pointsToClassify = matrix(c(randomDurationOfCreditMonth, randomCreditAmount), nrow=pointsToClassifySize)
classifiedPoints = matrix(0, pointsToClassifySize, 3)

for (pointsToClassifyIndex in 1:pointsToClassifySize) {
  point = pointsToClassify[pointsToClassifyIndex, ]
  clazz = kNearestNeighbourClassifier$classify(point)
  classifiedPoints[pointsToClassifyIndex, ] = c(point[1], point[2], clazz)
}

plotter = plotter$new()
allPoints = rbind(bankPoints, classifiedPoints)
plotter$plotGraph(allPoints, 'plots/bank_analysis.png')
