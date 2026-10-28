# EXPERIMENT 20: Multiple regression
# Assumes a data frame named diabetes is already loaded and contains
# columns Age, BloodPressure, and Glucose.
if (!exists("diabetes")) {
  stop("Load your dataset into a data frame named 'diabetes' first.")
}

input <- diabetes[, c("Age", "BloodPressure", "Glucose")]
model <- lm(Age ~ BloodPressure + Glucose, data = input)
print(summary(model))

A <- unname(coef(model)[1])
xBloodPressure <- unname(coef(model)[2])
yGlucose <- unname(coef(model)[3])

cat("Intercept:", A, "\n")
cat("BloodPressure coefficient:", xBloodPressure, "\n")
cat("Glucose coefficient:", yGlucose, "\n")
cat("Regression equation: Age =", A, "+",
    xBloodPressure, "* BloodPressure +",
    yGlucose, "* Glucose\n")
