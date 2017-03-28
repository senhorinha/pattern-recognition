# File to plot the datasets
source('dependencies.R')

plotter = plotter$new()

spiral  = Spiral$new(700, 0.1, FALSE, 'spiral_one')
spiralPoints = spiral$points();
plotter$plotGraph(spiralPoints, 'plots/spiral.png')

doubleSpiral = doubleSpiral$new()
doubleSpiralPoints = doubleSpiral$points()
plotter$plotGraph(doubleSpiralPoints, 'plots/double-spiral.png')

bank = bankTwoDimensionsDataset$new('dataset/bank.xlsx')
bankPoints = bank$points();
plotter$plotGraph(bankPoints, 'plots/bank.png')


cars = carsDataset$new('dataset/cars.xlsx')
carsPoint = cars$points();
plotter$plotGraph(carsPoint, 'plots/cars.png')
