# EXPERIMENT 18: Scatter plot
set.seed(9)
x <- rnorm(1000)
y <- rnorm(1000)

smoothScatter(y - x, main = "Smooth Scatter Plot of y - x")
smoothScatter(x, y, main = "Smooth Scatter Plot of x and y",
              xlab = "x", ylab = "y")
