# Redirect output to "output.txt"
sink("output22.txt")

# Create three arrays
array1 <- matrix(1:9, nrow = 3)
array2 <- matrix(10:18, nrow = 3)
array3 <- matrix(19:27, nrow = 3)

# Combine the arrays row-wise
combined_array <- rbind(array1[1,], array2[1,], array3[1,])

# Print the combined array
cat("Combined Array:\n")
print(combined_array)

# Stop redirecting output
sink(file = NULL)
