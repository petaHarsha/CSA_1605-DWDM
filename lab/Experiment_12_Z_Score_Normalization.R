# EXPERIMENT 12: Z-score normalization
# Install readxl once if needed: install.packages("readxl")
library(readxl)

# Change this path to the location of your NARA.xlsx file.
file_path <- "NARA.xlsx"
diabetest1 <- read_excel(file_path)

A <- as.numeric(diabetest1$Age)
Mean <- mean(A, na.rm = TRUE)
Std <- sd(A, na.rm = TRUE)
Zscore <- (A - Mean) / Std
print(Zscore)
