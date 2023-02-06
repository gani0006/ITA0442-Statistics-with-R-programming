data(airquality)

sum(is.na(airquality))

if (sum(is.na(airquality)) / nrow(airquality) < 0.1) {
  airquality <- airquality[complete.cases(airquality), ]
} else {
  airquality[is.na(airquality)] <- colMeans(airquality, na.rm = TRUE)
}


model <- lm(Ozone ~ Solar.R, data = airquality)
summary(model)


library(ggplot2)

ggplot(airquality, aes(x = Solar.R, y = Ozone)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(x = "Solar.R", y = "Ozone")
