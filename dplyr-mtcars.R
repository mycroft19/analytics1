#analysis of data set mtcars using dplyr

library(dplyr)
?mtcars
summarise(mtcars)
mtcars
 #structure of data set
str(mtcars)  #structure
dim(mtcars)  #dimension
names(mtcars)  #col names
rownames(mtcars)   #row names
colnames(mtcars)
summary(mtcars)
table(mtcars$am)
t1 = table(mtcars$am)
pie(t1)
pie(t1 , labels =  c('auto','manual'))
table(mtcars$gear)
t2 = table(mtcars$gear)
pie(t2)
pie (t2 , labels = c('THREE','FOUR','FIVE') )
barplot(t2)
barplot(t2,col=1:3) 
barplot( t2 , col=c('green','blue','yellow') , xlab ='GEAR', ylab= 'no of cars', ylim=c(0,20))
title(main='distribution of gears of cars', sub = 'no of gears')
t3 = table(mtcars$carb)

plot(mtcars$gear,mtcars$cyl)

#using dplyr %>% is chaining function
mtcars %>% select(mpg) %>% slice(1:5)

mtcars %>% select(mpg,gear) %>% slice(1:5)

mtcars %>% select(mpg,gear) %>% slice(c(1:5,10))  

#  select for coloumn,slice for rows
mtcars %>% arrange(mpg)
mtcars %>% arrange(am,desc(carb)) %>% select(carb,am)

#practice

mtcars %>% group_by(mpg,gear) %>% select(carb,qsec)

#

mtcars %>% mutate(rn=rownames(mtcars)) %>% select(am,mpg)

#display rownames with mpg
mtcars %>% slice(c(1,5,7))
mtcars %>% sample_n(3)
mtcars  %>% sample_frac(.2)  
mtcars %>% select(sample(x=c(1:11),size = 2))  %>% head
mtcars  %>% mutate(newmpg = mpg * 1.1)
mutate(mtcars , newmpg = mpg * 1.2)


#summarise
summarise(mtcars,avg=mean(mpg))
summarise(mtcars,min(mpg))
summarise_at(mtcars,min,cars)
mtcars  %>% group_by(am)  %>% summarise(mean(mpg))
mtcars  %>% group_by(carb) %>% summarise(Meanmpg = mean(mpg), MAXHP =max(hp), Minwt=min(wt))
mtcars  %>% group_by(gear,cyl)  %>%summarise(MEANmpg = mean(mpg))
mtcars  %>% group_by(hp,carb)  %>% summarise(Meanqsec = mean(qsec))
mtcars  %>% group_by_(t2=table(qsec))
