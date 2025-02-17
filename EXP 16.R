# Redirect output to "output.txt"
sink("output.txt")

# 5x4 matrix
matrix_5x4 <- matrix(1:20, nrow = 5, ncol = 4)
cat("5x4 Matrix:\n")
print(matrix_5x4)

# 3x3 matrix filled by rows with labels
matrix_3x3 <- matrix(1:9, nrow = 3, byrow = TRUE, dimnames = list(c("Row1", "Row2", "Row3"), c("Col1", "Col2", "Col3")))
cat("3x3 Matrix filled by rows:\n")
print(matrix_3x3)

# 2x2 matrix filled by columns with labels
matrix_2x2 <- matrix(1:4, nrow = 2, byrow = FALSE, dimnames = list(c("R1", "R2"), c("C1", "C2")))
cat("2x2 Matrix filled by columns:\n")
print(matrix_2x2)

# Stop redirecting output
sink(file = NULL)
