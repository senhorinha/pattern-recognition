# File to plot the datasets
source('dependencies.R')

voronoiPlotter = voronoiPlotter$new()

spiral  = Spiral$new(700, 0.1, FALSE, 'spiral_one')
spiralPoints = spiral$points();
x = as.numeric(spiralPoints[,1])
y = as.numeric(spiralPoints[,2])
voronoiPlotter$plotGraph(x, y, 'plots/voronoi/spiral.png')

doubleSpiral = doubleSpiral$new()
doubleSpiralPoints = doubleSpiral$points()
x = as.numeric(doubleSpiralPoints[,1])
y = as.numeric(doubleSpiralPoints[,2])
voronoiPlotter$plotGraph(x, y, 'plots/voronoi/double_spiral.png')

bank = bankTwoDimensionsDataset$new('dataset/bank.xlsx')
bankPoints = bank$points();
x = as.numeric(bankPoints[,1])
y = as.numeric(bankPoints[,2]) / 1200
voronoiPlotter$plotGraph(x, y, 'plots/voronoi/bank.png')

cars = carsDataset$new('dataset/cars.xlsx')
carsPoint = cars$points();
x = as.numeric(carsPoint[,1])
y = as.numeric(carsPoint[,2])
voronoiPlotter$plotGraph(x, y, 'plots/voronoi/cars.png')
