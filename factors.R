

#factors

gender=sample(c('M','F'),size = 20,replace = T)
summary(gender)
gender
genderf = factor(gender)
summary(genderf)
genderf

(likscale=sample(c('ex','good','poor','sat'),size = 20,replace = T))
summary(likscale)
class(likscale)
likscalef =factor(likscale)
summary(likscalef)
class(likscalef)
likscaledf=factor(likscale,ordered = T,levels = c('poor','sat','good','ex'))
summary(likscaledf)
likscaledf
barplot(table(likscalef),col = 2:30)
barplot(table(likscaledf),col = 1:90)
