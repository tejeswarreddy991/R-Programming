# Redirect output to "output24.txt"
sink("output24.txt")

# Create a 5x3 array of even integers greater than 50 (15 even integers)
even_integers <- seq(52, 80, by = 2)  # Sequence of 15 even numbers greater than 50
array_even <- matrix(even_integers, nrow = 5, ncol = 3)

# Print the array
cat("5x3 Array of Even Integers Greater Than 50:\n")
print(array_even)

# Stop redirecting output
sink(file = NULL)
