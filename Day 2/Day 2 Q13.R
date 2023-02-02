
data("iris")


dim(iris)
str(iris)
summary(iris)
sapply(iris[,1:4], sd)


group_by_species <- aggregate(iris[,1:4], by=list(specis=iris$Species), FUN=function(x) c(mean=mean(x), sd=sd(x)))
print(group_by_species)


quantile(iris$Sepal.Width)
quantile(iris$Sepal.Length)

irisl <- iris
irisl$Sepal.Length.Cate <- cut(irisl$Sepal.Length, quantile(irisl$Sepal.Length), lables = c("Q1", "Q2", "Q3", "Q4"))

aggregate (iris[,1:4], by=list(Species=irisl$Species, Sepal.Length.Cate=irisl$Sepal.Length.Cate), mean)

aggregate (iris[,1:4], by=list(Species=irisl$Species, Sepal.Length.Cate=irisl$Sepal.Length.Cate), mean, FUN=mean)

library(reshape2)
plvot_table <- dcast(irisl, Species - sepal.Length.Cate, value.var = c("Sepal.Length", "Sepal.Width", "Peal.Length", "Petal.Width"), mean)
print(pivot_table)
