# Redirect output to "output.txt"
sink("output21.txt")

# Create two vectors
vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vector2 <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)

# Create two 3x3 matrices from the vectors
matrix1 <- matrix(vector1, nrow = 3, byrow = TRUE)
matrix2 <- matrix(vector2, nrow = 3, byrow = TRUE)

# Combine the two matrices into an array
array_data <- array(c(matrix1, matrix2), dim = c(3, 3, 2))

# Print second row of the second matrix and 3rd row, 3rd column of the first matrix
cat("Second row of the second matrix:\n")
print(array_data[2,,2])

cat("\nElement in the 3rd row and 3rd column of the first matrix:\n")
print(array_data[3,3,1])

# Stop redirecting output
sink(file = NULL)
