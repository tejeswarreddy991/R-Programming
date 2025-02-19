sink("output26.txt")
# Load the built-in dataset airquality
data(airquality)

# Check if it is a data frame
is.data.frame(airquality)

# Order the entire data frame by the first and second column
airquality <- airquality[order(airquality[,1], airquality[,2]), ]

# Remove the variables 'Solar.R' and 'Wind'
airquality <- subset(airquality, select = -c(Solar.R, Wind))

# Display the modified data frame
print(head(airquality))
sink(file = NULL)

