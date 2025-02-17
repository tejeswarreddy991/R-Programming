# Redirect output to "output.txt"
sink("output.txt")

# Unique elements of a given string
string_input <- "hello world"
unique_chars <- unique(strsplit(string_input, NULL)[[1]])
cat("Unique characters in the string:\n", unique_chars, "\n\n")

# Unique numbers of a vector
num_vector <- c(1, 2, 3, 2, 4, 5, 1, 3, 6)
unique_numbers <- unique(num_vector)
cat("Unique numbers in the vector:\n", unique_numbers, "\n")

# Stop redirecting output
sink(file = NULL)
