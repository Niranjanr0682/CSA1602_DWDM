#192210682 Niranjan R
data("AirPassengers")
start_value <- 100
bin_width <- 150
bin_breaks <- seq(start_value, 700, by = bin_width)
hist(AirPassengers, breaks = bin_breaks, xlim = c(start_value, max(bin_breaks) + bin_width),
     main = "Histogram for AirPassengers Dataset",
     xlab = "Passenger Count", ylab = "Frequency", col = "skyblue", border = "black")
legend("topright", legend = c("Passenger Count"), fill = c("skyblue"))
