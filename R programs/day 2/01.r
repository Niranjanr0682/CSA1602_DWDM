#192210682 Niranjan R
data <- data.frame(
  Age = rep(c("5-6 years", "7-8 years", "9-10 years"), each = 3),
  A = c(18, 2, 20, 22, 28, 10, 20, 40, 40),
  B = c(22, 28, 10, 20, 40, 40, 30, 45, 50),
  C = c(20, 40, 40, 30, 45, 50, 15, 35, 25)
)
covariance_BC <- cov(data$B, data$C)
cat("Covariance between B and C:", covariance_BC, "\n")
covariance_matrix <- cov(data[, c("A", "B", "C")])
cat("Covariance matrix:\n", covariance_matrix, "\n")
correlation_BC <- cor(data$B, data$C)
cat("Correlation between B and C:", correlation_BC, "\n")
correlation_matrix <- cor(data[, c("A", "B", "C")])
cat("Correlation matrix:\n", correlation_matrix, "\n")
