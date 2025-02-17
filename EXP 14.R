# Redirect output to "output.txt"
sink("output.txt")

# Sample dataset (this would normally be read from a CSV file)
data <- data.frame(
  ID = 1:5,
  Name = c("Alice", "Bob", "Charlie", "David", "Eva"),
  Age = c(25, 30, 35, 40, 45),
  Gender = c("F", "M", "M", "M", "F")
)

# Display content
cat("CSV File Content:\n")
print(data)

# Stop redirecting output
sink(file = NULL)
