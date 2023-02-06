mtcars
# i)dimension of data set
dim(mtcars)

summary(mtcars)# iii)categorical features in dataset
str(mtcars)
aggregate(wt ~ vs,data = mtcars,mean)# v)find largest & smallest weight with engine shape
library(dplyr)
mtcars %>% 
  group_by(vs) %>% 
  summarise(min_wt = min(wt), max_wt = max(wt))
