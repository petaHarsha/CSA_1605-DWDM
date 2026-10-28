# EXPERIMENT 17: Chi-square test (the document labels this correlation analysis)
# Install readxl once if needed: install.packages("readxl")
library(readxl)

# Change this path to the location of your NARA.xlsx file.
file_path <- "NARA.xlsx"
diabetest1 <- read_excel(file_path)

frequency_table <- table(diabetest1$Age, diabetest1$Insulin)
print(frequency_table)
print(chisq.test(frequency_table))
