# Load all dependencies
source('dependencies.R')

cars = carsDataset$new('dataset/cars.xlsx')
dataSet = cars$points();
point = dataSet[1,][c(1,2,3,4,5)]

hammingSampleExecutor = sampleExecutor$new(hammingDistanceCalculator$new(), dataSet)
hammingSampleExecutor$execute(point)

euclideanSampleExecutor = sampleExecutor$new(euclideanDistanceCalculator$new(), dataSet)
euclideanSampleExecutor$execute(point)
