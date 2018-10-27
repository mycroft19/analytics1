#create vector of student name nd divide them into 2 parts

x=101:200

(index=sample(length(x),size=.6*length(x)))

  length(index)
train1= x[index]
test1= x[-index]
train1  
test1
#create a large df
sname = paste('s',1:1000,sep = '-')
gender = sample(x=c('male','female'),size = 1000,prob=c(.6,.4),replace = T)
marks=ceiling(rnorm(1000,60,10))
df = data.frame(sname,gender,marks)
df
dim(df)
head(df)

table(df$gender)
length(df) ; nrow(df)
col(df,10)

#split df into 2 parts 70% 30%

index2=sample(x=nrow(df),size=.7*nrow(df))
index2
table(index2) 
x1=df [index2,]
x2=df[-index2,]
x1
x2
#by using caret
library(caret)

table(df$gender); prop.table(table(df$gender))

(index3 = createDataPartition(y=df$gender,p=0.7,list = F))
length(index3)

(train3=df[index3,])
(test3=df[-index3,])

(t3a=table(train3$gender)) ; prop.table(t3a)
(t3b=table(test3$gender)) ; prop.table(t3b)  



