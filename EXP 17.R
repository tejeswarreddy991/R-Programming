# Redirect output to "output.txt"
sink("output.txt")

# Create a vector of values
values <- 1:12

# Define dimensions (3x2x2)
dims <- c(3, 2, 2)

# Define dimension names
dim_names <- list(Row = c("A", "B", "C"), Column = c("X", "Y"), Table = c("First", "Second"))

# Create an array
array_data <- array(values, dim = dims, dimnames = dim_names)

# Print the array
cat("Created Array:\n")
print(array_data)

# Stop redirecting output
sink(file = NULL)
