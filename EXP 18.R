# Redirect output to "output.txt"
sink("output.txt")

# Define two input vectors
vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vector2 <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)

# Combine into an array (3 rows, 3 columns, 2 tables)
array_3x3x2 <- array(c(vector1, vector2), dim = c(3, 3, 2))

# Print array
cat("Array with Two Tables:\n")
print(array_3x3x2)

# Stop redirecting output
sink(file = NULL)
# Redirect output to "output.txt"
sink("output.txt")

# Define two input vectors
vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vector2 <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)

# Combine into an array (3 rows, 3 columns, 2 tables)
array_3x3x2 <- array(c(vector1, vector2), dim = c(3, 3, 2))

# Print array
cat("Array with Two Tables:\n")
print(array_3x3x2)

# Stop redirecting output
sink(file = NULL)
