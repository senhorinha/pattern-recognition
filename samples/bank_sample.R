# Load all dependencies
source('dependencies.R')

bank = bankTwoDimensionsDataset$new('dataset/bank.xlsx') # Load two dimensions dataset
dataSet = bank$points(); # Get dataset points
point = dataSet[1,][c(1,2)] # Get first point to test classification

hammingSampleExecutor = sampleExecutor$new(hammingDistanceCalculator$new(), dataSet)
hammingSampleExecutor$execute(point)

euclideanSampleExecutor = sampleExecutor$new(euclideanDistanceCalculator$new(), dataSet)
euclideanSampleExecutor$execute(point)
