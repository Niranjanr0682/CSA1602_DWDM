# Original data
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

# Number of bins
num_bins <- 3

# Equal-Frequency (Equi-Depth) Partitioning
bins_eq_frequency <- cut(marks, breaks = num_bins, labels = FALSE)

# Plot Histogram
hist(marks, breaks = num_bins, col = "lightblue", 
     xlab = "Marks", main = "Equal-Frequency (Equi-Depth) Partitioning")

# Smoothing by Bin Mean
bin_mean <- tapply(marks, cut(marks, num_bins), mean)
smoothed_data_by_mean <- unname(bin_mean[as.character(cut(marks, num_bins))])

# Smoothing by Bin Median
bin_median <- tapply(marks, cut(marks, num_bins), median)
smoothed_data_by_median <- unname(bin_median[as.character(cut(marks, num_bins))])

# Smoothing by Bin Boundaries
bin_boundaries <- tapply(marks, cut(marks, num_bins), function(x) c(min(x), max(x)))
smoothed_data_by_boundaries <- unlist(bin_boundaries[as.character(cut(marks, num_bins))])

# Print Results
print("Original data:")
print(marks)
print("Smoothed data by bin mean:")
print(smoothed_data_by_mean)
print("Smoothed data by bin median:")
print(smoothed_data_by_median)
print("Smoothed data by bin boundaries:")
print(smoothed_data_by_boundaries)
