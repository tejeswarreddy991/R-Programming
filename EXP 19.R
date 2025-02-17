# Redirect output to "output.txt"
sink("output.txt")

# Create a numeric vector
num_vec <- c(10, 20, 30)

# Create a matrix
matrix_2x2 <- matrix(1:4, nrow = 2)

# Define a function
sample_function <- function(x) x^2

# Create a list with all elements
my_list <- list(Numbers = num_vec, Matrix = matrix_2x2, Function = sample_function)

# Print list contents
cat("List Content:\n")
print(my_list)

# Stop redirecting output
sink(file = NULL)
