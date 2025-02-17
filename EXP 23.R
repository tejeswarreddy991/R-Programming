# Redirect output to "output.txt"
sink("output23.txt")

# Define four columns and dimensions
columns <- c(1:4, 5:8, 9:12, 13:16)  # Four vectors for the columns
dims <- c(3, 4, 2)  # Three rows, four columns, two tables

# Create the array
array_data <- array(columns, dim = dims)

# Print the array
cat("Created Array:\n")
print(array_data)

# Stop redirecting output
sink(file = NULL)
