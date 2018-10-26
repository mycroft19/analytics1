(rollno = 1:30)
(sname = paste('student',1:30,sep = ' '))
(gender = sample( c('M','F'), size = 30 , replace = T,prob = c(.7,.3)))
( marks = floor(rnorm(30,mean = 50, sd =10)))
(marks2 = ceiling(rnorm(30,40,5)))  
(course = sample(c('bba','mba'), size = 30, replace = T , prob = c(.5,.5)))  
rollno; sname; gender; marks; marks2; course;

#create df
df1=data.frame(rollno , sname , gender , marks ,marks2 ,course , stringsAsFactors = F)
head(df1)
str(df1)
head(df1, n=3)
tail(df1)
class(df1)
summary(df1)
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)
summary(df1)



aggregate(df1$marks, by = list(df1$gender), FUN = max)
aggregate(marks ~ gender , data = df1, )

(x=rnorm(100, mean=60,sd=10))
summary(x)
quantile(x)
quantile(x, seq(0,1,.1))
fivenum(x)
boxplot(x)
abline(x)
stem(x)
hist(x)
