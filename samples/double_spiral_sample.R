# Load all dependencies
source('dependencies.R')

doubleSpiral = doubleSpiral$new()
dataSet = doubleSpiral$points();
point = dataSet[1,][c(1,2)]

hammingSampleExecutor = sampleExecutor$new(hammingDistanceCalculator$new(), dataSet)
hammingSampleExecutor$execute(point)

euclideanSampleExecutor = sampleExecutor$new(euclideanDistanceCalculator$new(), dataSet)
euclideanSampleExecutor$execute(point)
