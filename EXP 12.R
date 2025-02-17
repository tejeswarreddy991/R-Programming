# Redirect output to "output.txt"
sink("output.txt")

# Create three vectors
a <- c(1, 2, 3)
b <- c(4, 5, 6)
c <- c(7, 8, 9)

# Combine vectors into a 3x3 matrix (columns represent vectors)
matrix_3x3 <- cbind(a, b, c)

# Print matrix
cat("The 3x3 Matrix:\n")
print(matrix_3x3)

# Stop redirecting output
sink(file = NULL)
