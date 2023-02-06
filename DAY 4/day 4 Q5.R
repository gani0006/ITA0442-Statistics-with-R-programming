# Load the airquality dataset
data(airquality)

# Get summary statistics
summary(airquality)


# Load the reshape2 library
library(reshape2)

# Melt the airquality dataset
airquality_melt <- melt(airquality)
head(airquality_melt)


# Melt the airquality dataset with month and day as ID variables
airquality_melt <- melt(airquality, id.vars = c("Month", "Day"))
head(airquality_melt)


# Cast the molten airquality dataset
airquality_cast <- dcast(airquality_melt, Month + Day ~ variable)
head(airquality_cast)


# Average of Ozone, Solar.R, Wind, and temperature per month
airquality_mean <- dcast(airquality_melt, Month ~ variable, mean)
head(airquality_mean)
