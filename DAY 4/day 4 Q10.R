data(iris)

set.seed(123) 
indices <- sample(1:nrow(iris), round(0.8 * nrow(iris)))
train_data <- iris[indices, c("Petal.Width", "Petal.Length", "Species")]
test_data <- iris[-indices, c("Petal.Width", "Petal.Length", "Species")]

model <- glm(Species ~ Petal.Width + Petal.Length, data = train_data, family = "binomial")

test_data$probability <- predict(model, newdata = test_data, type = "response")

predictions <- ifelse(test_data$probability > 0.5, "versicolor", "virginica")
table(predictions, test_data$Species)
