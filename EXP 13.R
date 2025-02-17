# Redirect output to "output.txt"
sink("output.txt")

# Generate random numbers from normal distribution
set.seed(123)  # Set seed for reproducibility
random_numbers <- round(rnorm(100, mean = 50, sd = 10))  # 100 values

# Count occurrences of each unique value
number_counts <- table(random_numbers)

# Print occurrences
cat("Occurrences of each random number:\n")
print(number_counts)

# Stop redirecting output
sink(file = NULL)
