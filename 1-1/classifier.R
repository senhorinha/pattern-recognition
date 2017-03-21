spiral <- function(n) {
    radius <- floor(sqrt(n - 1) - 1 / 2) + 1
    totalPoints <- (8 * radius * (radius - 1)) / 2
    pointsByFace = radius * 2
    a <- (1 + n - totalPoints) % (radius * 8)
    
    position <- c(0, 0, radius)
}

simpleSpiral <- function(index, speed) {
    x = speed * index * cos(t)
    y = speed * index * sin(t)
    c(x, y)
}

buildSpiral <- function(numberOfPoints, speedOfExpasion) {
    spiralPoints <- c()
    for (index in 1:numberOfPoints) {
        append(spiralPoints, buildSpiral(index, speedOfExpasion))
    }
    plot(spiralPoints)
}