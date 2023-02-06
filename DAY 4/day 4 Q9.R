library(lm)
model <- lm(weight ~ Time + Diet, data=ChickWeight)
summary(model)


new_data <- data.frame(Time=10, Diet=1)
predict(model, new_data)


predictions <- predict(model)
errors <- ChickWeight$weight - predictions
mean(errors^2)
