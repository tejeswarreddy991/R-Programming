sink("output2.txt")
# List all objects in memory
cat("Objects in memory:\n")
print(ls())  

# Show detailed information about objects
cat("\nDetails of objects in memory:\n")
print(ls.str())  

# Display memory usage
cat("\nMemory usage summary:\n")
print(gc())
sink(file=NULL)