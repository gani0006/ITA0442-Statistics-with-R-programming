# Load the ggplot2 library
library(ggplot2)

# Create a box plot for weight grouped by Diet
ggplot(ChickWeight, aes(x = Diet, y = Weight)) + 
  geom_boxplot() + 
  ggtitle("Box Plot of Weight by Diet")

# Create a histogram for weight in Diet-1 category
ggplot(ChickWeight[ChickWeight$Diet == 1, ], aes(x = Weight)) + 
  geom_histogram() + 
  ggtitle("Histogram of Weight in Diet-1")

# Create a scatter plot for weight vs time grouped by Diet
ggplot(ChickWeight, aes(x = Time, y = Weight, color = factor(Diet))) + 
  geom_point() + 
  ggtitle("Scatter Plot of Weight vs Time Grouped by Diet")
