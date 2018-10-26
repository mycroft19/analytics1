#check for files and folders

dir('./data2')
list.files('./data2')
file.exists("./data/mtcars.csv")

#READING ffrom the file into a vector

data=scan("./data2/HHE",what="character")
head(data)

#csv read from csv
head(iris)
?iris
write.csv(iris,"./data/iris.csv",row.names = F)
#.csv file is created

read1=read.csv(file="./data/iris.csv", header = TRUE , sep = ",")
str(read1) ; class(read1)
head(read1,2)

read_web1 = read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)
 #how to read data from google sheets

library(gsheet)
url_gsheets="http://docs.google.com/spreadsheets/d/1QogGSuEab5szyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865532"

library(xlsx)
library(rJava)
df_exce