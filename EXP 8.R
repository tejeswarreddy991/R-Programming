# Redirect output to "output8.txt"
sink("output8.txt")

# Extract first 10 lowercase letters
first_10_lower <- letters[1:10]

# Extract last 10 uppercase letters
last_10_upper <- LETTERS[17:26]  # Directly use LETTERS for uppercase

# Extract letters from 22nd to 24th in uppercase
letters_22_24_upper <- LETTERS[22:24]

# Print results with better formatting
cat("First 10 lowercase letters:\n", paste(first_10_lower, collapse = " "), "\n\n")
cat("Last 10 uppercase letters:\n", paste(last_10_upper, collapse = " "), "\n\n")
cat("Letters 22nd to 24th in uppercase:\n", paste(letters_22_24_upper, collapse = " "), "\n")

# Stop redirecting output
sink()
