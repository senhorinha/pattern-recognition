# Load all dependencies
source('dependencies.R')

spiral  = spiral$new(700, 0.1, FALSE, 'spiral_one')
dataSet = spiral$points();
point = dataSet[1,][c(1,2)]

hammingSampleExecutor = sampleExecutor$new(hammingDistanceCalculator$new(), dataSet)
hammingSampleExecutor$execute(point)

euclideanSampleExecutor = sampleExecutor$new(euclideanDistanceCalculator$new(), dataSet)
euclideanSampleExecutor$execute(point)
