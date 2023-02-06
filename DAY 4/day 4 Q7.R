# Load the ChickWeight dataset
data(ChickWeight)

# Order the data frame by weight and group by diet
ordered_data <- ChickWeight[order(ChickWeight$Weight), ]
grouped_data <- group_by(ordered_data, Diet)

# Extract the last 6 records
tail(grouped_data, 6)


# Load the reshape2 library
library(reshape2)

# Melt the data based on Chick, Time, and Diet
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))

# Cast to display mean of weight grouped by Diet
mean_cast_data <- dcast(melted_data, Diet ~ variable, mean)

# Cast to display mode of weight grouped by Diet
mode_cast_data <- dcast(melted_data, Diet ~ variable, function(x) names(sort(-table(x)))[1])
