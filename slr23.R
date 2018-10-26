women
names(women)
fit1 = lm(weight~height,data=women)
summary(fit1)
#predict for ht=69.5 and 70.5
(new=data.frame(height=c(69.5,70.5)))

(p1 = predict(fit1 , newdata = new))
cbind(new,p1)

names(mtcars)
fit2=lm(mpg~wt,data=mtcars)
range(mtcars$wt)
#predict mpg for wt=2 & 3

(new2 = data.frame(wt=c(2,4)))

(p2= predict(fit2,newdata = new2))

cbind(p2,new2)





  
 


    
    