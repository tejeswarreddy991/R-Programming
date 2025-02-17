### *9. Finding Factors of a Number*
sink("output.txt")
# Function to find factors
find_factors <- function(n) {
  factors <- which(n %% 1:n == 0)
  return(factors)
}

# Example: Find factors of 36
num <- 36
cat("Factors of", num, ":\n")
print(find_factors(num))
sink(file = NULL)
