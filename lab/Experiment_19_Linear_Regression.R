# EXPERIMENT 19: Linear regression
# Assumes a data frame named diabetes is already loaded and contains
# columns Age and BloodPressure.
if (!exists("diabetes")) {
  stop("Load your dataset into a data frame named 'diabetes' first.")
}

Relation <- lm(BloodPressure ~ Age, data = diabetes)
print(summary(Relation))

plot(diabetes$Age, diabetes$BloodPressure,
     col = "green",
     main = "Linear Regression Analysis",
     xlab = "Age",
     ylab = "Blood Pressure")
abline(Relation, col = "red", lwd = 2)
