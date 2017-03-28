carsDataset = setRefClass("carsDataset",
    contains = "Dataset",
    fields = list(carsXlsxPath = 'character'),
    methods = list(
      initialize = function(carsXlsxPath) {
       .self$carsXlsxPath = carsXlsxPath
      },

      points = function(classColumnNumber) {
        matrix = as.matrix(read_excel(carsXlsxPath))
        rowsSize = dim(matrix)[1]
        columnsSize = dim(matrix)[2]
        dataPoints = matrix(0, rowsSize, columnsSize)

        for(matrixIndex in 1:rowsSize) {
          row = matrix[matrixIndex, ]
          clazz = trim(row[1])
          rowValues = as.numeric(row[seq(2, columnsSize)])
          dataPoints[matrixIndex, ] = c(rowValues, clazz)
        }
        dataPoints
      },

      trim = function (x) gsub("^\\s+|\\s+$", "", x)
    )
)
