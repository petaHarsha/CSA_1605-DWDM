# EXPERIMENT 9: Interquartile range (IQR)
names <- c("siri", "mahi", "chiru")
age <- c(23, 24, 25)
marks <- c(88, 78, 25)

df <- data.frame(names, age, marks)
print(IQR(df$age))
write.csv(df, "datafr.csv", row.names = FALSE)
