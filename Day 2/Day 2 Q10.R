data("airquality")
if (is.data.frame(airquality)){
  print("airquality is a data frame.")
}else {
  print("airquality is not a data frame.")
}
airquality <- airquality[order(airquality$Ozone, airquality$Month),]
airquality <- airquality[ , !(names(airquality) %in% c("Solar.R", "Wind"))]
print(airquality)