library(rpart)
library(rpart.plot)

gender=sample( c('M','F') , size = 1000 , prob = c(0.6,0.4),replace=T)
age=ceiling(rnorm(1000,35.5))
buy=sample(c('yes','no'), size = 1000,prob = c(0.5,0.5),replace = T)
df=data.frame(buy,gender,age)
head(df)

dtree1=rpart(buy~gender+age,data = df,minsplit=10,cp=.005)
dtree1
dtree1$variable.importance
rpart.plot(dtree1)
?cp
