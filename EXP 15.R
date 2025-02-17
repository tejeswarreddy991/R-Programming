# Redirect output to "output.txt"
sink("output.txt")

# Numeric vector
numeric_vector <- c(1.2, 2.3, 3.4)

# Character vector
char_vector <- c("A", "B", "C")

# Logical vector
logical_vector <- c(TRUE, FALSE, TRUE)

# Print vectors and their types
cat("Numeric vector:\n", numeric_vector, "\nType:", typeof(numeric_vector), "\n\n")
cat("Character vector:\n", char_vector, "\nType:", typeof(char_vector), "\n\n")
cat("Logical vector:\n", logical_vector, "\nType:", typeof(logical_vector), "\n")

# Stop redirecting output
sink(file = NULL)
