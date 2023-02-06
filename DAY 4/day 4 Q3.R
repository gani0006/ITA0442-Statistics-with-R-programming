data(airquality)

str(airquality)

summary(airquality)

library(ggplot2)
ggplot(airquality, aes(x = Ozone, y = Solar.R)) +
  geom_point() +
  ggtitle("Relationship between Ozone and Solar Radiation")
