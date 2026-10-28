# EXPERIMENT 15: Box plot
names <- c("siri", "chru", "loki")
age <- c(23, 24, 25)
marks <- c(88, 78, 25)

df <- data.frame(names, age, marks)
hist(df$age, main = "Age Histogram", xlab = "Age")
boxplot(df$age, main = "Age Box Plot", ylab = "Age")
