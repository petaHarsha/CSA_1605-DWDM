# EXPERIMENT 13: Mean, minimum, maximum, and min-max normalization
# Install readxl once if needed: install.packages("readxl")
library(readxl)

# Change this path to the location of your NARA.xlsx file.
file_path <- "NARA.xlsx"
diabetest1 <- read_excel(file_path)
A <- as.numeric(diabetest1$Age)

Mean <- mean(A, na.rm = TRUE)
Minimum <- min(A, na.rm = TRUE)
Maximum <- max(A, na.rm = TRUE)
MinMax <- (A - Minimum) / (Maximum - Minimum)

cat("Mean:", Mean, "\n")
cat("Minimum:", Minimum, "\n")
cat("Maximum:", Maximum, "\n")
cat("Min-max normalized values:\n")
print(MinMax)
