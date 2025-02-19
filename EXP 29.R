
sink("output29.txt")
# Load necessary libraries
if (!require(dplyr)) install.packages("dplyr", dependencies = TRUE)
if (!require(tidyr)) install.packages("tidyr", dependencies = TRUE)

library(dplyr)
library(tidyr)

# Load iris dataset
data(iris)

# (i) Find dimension, structure, summary statistics, standard deviation
print(dim(iris))  # Dimensions of the dataset
print(str(iris))  # Structure of the dataset
print(summary(iris))  # Summary statistics
print(sapply(iris[, 1:4], sd))  # Standard deviation of numerical columns

# (ii) Find mean and standard deviation grouped by Species
iris_grouped <- iris %>% 
  group_by(Species) %>% 
  summarise(across(where(is.numeric), list(mean = mean, sd = sd)))

print(iris_grouped)

# (iii) Find quantile values of Sepal.Width and Sepal.Length
print(quantile(iris$Sepal.Width))
print(quantile(iris$Sepal.Length))

# (iv) Create new dataframe with Sepal.Length categorized by quantile
iris$Sepal.Length.Cate <- cut(iris$Sepal.Length, 
                              breaks = quantile(iris$Sepal.Length, probs = seq(0, 1, 0.25), include.lowest = TRUE), 
                              labels = c("Q1", "Q2", "Q3", "Q4"))

iris1 <- iris  # Creating a copy of iris dataset with the new column
print(head(iris1))

# (v) Average value of numerical variables by Species and Sepal.Length.Cate
iris_avg <- iris1 %>% 
  group_by(Species, Sepal.Length.Cate) %>% 
  summarise(across(where(is.numeric), mean, na.rm = TRUE))

print(iris_avg)

# (vi) Average mean value of numerical variables by Species and Sepal.Length.Cate (same as previous step)
iris_mean <- iris1 %>% 
  group_by(Species, Sepal.Length.Cate) %>% 
  summarise(across(where(is.numeric), mean, na.rm = TRUE))

print(iris_mean)

# (vii) Create Pivot Table based on Species and Sepal.Length.Cate
iris_pivot <- iris1 %>% 
  group_by(Species, Sepal.Length.Cate) %>% 
  summarise(Count = n()) %>% 
  pivot_wider(names_from = Sepal.Length.Cate, values_from = Count, values_fill = list(Count = 0))

print(iris_pivot)
sink(file = NULL)
