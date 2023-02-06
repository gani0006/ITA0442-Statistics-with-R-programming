# Creating the data frame
month <- c(1:12)
spends <- c(1000, 4000, 5000, 4500, 3000, 4000, 9000, 11000, 15000, 12000, 7000, 3000)
sales <- c(9914, 40487, 54324, 50044, 34719, 42551, 94871, 118914, 158484, 131348, 78504, 36284)
df <- data.frame(month, spends, sales)

# Fitting a regression model
model <- lm(sales ~ spends, data = df)

# Predicting Sales
pred_sales <- predict(model, data.frame(spends = df$spends))


# Plotting the scatter plot with regression line
plot(df$spends, df$sales, xlab = "Spends", ylab = "Sales")
abline(model, col = "red")
