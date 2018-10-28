library(wordcloud2)

wordcloud2(demoFreq,size=1.6)
?wordcloud
word=c('ARCHITECTS','BMTH','SUCIDE SILENCE','SLIPKNOT','ASKING ALEXANDRIA')
freq=c(30,20,15,36,10)
df1=data.frame(word,freq)
rownames(df1)=word
head(df1)
#df1
wordcloud2(df1,size = .2)

#gives a proposed palette
wordcloud2(demoFreq,size = 1.6 , color='random-dark')
