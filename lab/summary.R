names<-c("a","b","c")
age<-c(10,23, 34)
marks<-c(88,93,97)
df<-data.frame(names,age,marks)
summary(df$ age)


write.csv(df,"datafr.csv")