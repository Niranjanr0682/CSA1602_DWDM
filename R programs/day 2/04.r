#192210682 Niranjan R
data <- c(200, 300, 400, 600, 1000)
min_max_custom <- function(x, min_val, max_val) {
  return (x - min_val) / (max_val - min_val)
}
min_max_normalized_custom <- min_max_custom(data, 200, 1000)
min_max_normalized_default <- scale(data, center = min(data), scale = diff(range(data)))
z_score_normalized <- scale(data)
cat("Original Data: ", data, "\n\n")
cat("(a) Min-Max normalization with custom min and max values:\n")
cat("Normalized Data: ", min_max_normalized_custom, "\n\n")
cat("(b) Min-Max normalization with min = 0 and max = 1:\n")
cat("Normalized Data: ", min_max_normalized_default, "\n\n")
cat("(c) Z-score normalization:\n")
cat("Normalized Data: ", z_score_normalized, "\n")
