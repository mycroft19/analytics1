#data structure in slides

#vectors
x=1:10 #create seq of nos from 1 to 10
x
x1
(x1=1:30)
(x2=c(1,2,13,4,5))
class(x2)

(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b=c('a',"shikhar","4"))
class(x3b)
(x4=c(T,FALSE,TRUE,T,F))
class(x4)

x5=c(3L,5L)
class(x5)
x5a=c(3,5)
class(x5a)
(x5b=c(1,'a',T,4L))
class(x5b)

#access elements
(x6 = seq(0,100,by=3))
ls()
x6
x6(seq(1, lenght(x6),2))

x6(c(2,4))
x6[-1]
x6[-c(2)]

#modify

#sort,order
(x6=sample(1:20))
sort(x6)
sort(x6[-c(1,2)])
sort(x6,decreasing = T)
rev(x6)
?rev

(x=-3:2)
x[2] <- 10; x 
#[1] -3  0 -1  0  1  2
x
x < 0
x[x<= 1 & x >= -1] = 100; x
x

(x=1:10)
x<5  
x[x<4 | x>6]=100;
x


x = x[1:4]; x      # truncate x to first 4 elements
#[1] 5 0 5 0


#delete vector
(x = seq(1,5, length.out = 15))
#[1] 1.000 1.444 1.889 2.333 2.778 3.222 3.667 4.111 4.556 5.000
x = NULL
x
#NULL
x[4]
#NULL

#matrix
100:111
(m1= matrix(100:111,nrow = 4))
(m2=matrix(100:111,ncol = 3))

X = 101:124

length(X)

m3=matrix(X,ncol = 6)

attributes(m3)

dim(m3)

m1[,1]
m1[1,]

m1

paste("C","D",sep = "-")
paste("c",1:100,sep = "-")

(colnames(m1) = paste('C',1:3, sep=''))
m1
(rownames(m1) = paste('R',1:4, sep=''))
m1
attributes(m1)

#row and col wise summary
m1
colSums(m1); 
rowSums(m1);
colMeans(m1); 
rowMeans(m1);

t(m1) # transpose
m1
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN="+" )
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN="*" )
m1
?addmargins
addmargins(m1,margin=1,sum) 
addmargins(m1,1,sd) 

addmargins(m1,2,mean) 
addmargins(m1,c(1,2),mean)
rbind(m1,colSums(m1))
round()

