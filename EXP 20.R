# Redirect output to "output.txt"
sink("output.txt")

# Create an empty plot with default axes
plot(1, type = "n", main = "Empty Plot", xlab = "X-axis", ylab = "Y-axis")

# Create an empty plot with custom axis limits
plot(1, type = "n", xlim = c(0, 100), ylim = c(0, 50), main = "Empty Plot with Limits", xlab = "X-axis", ylab = "Y-axis")

# Stop redirecting output
sink(file = NULL)
