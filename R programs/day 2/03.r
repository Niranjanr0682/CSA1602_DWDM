#192210682 Niranjan R
classA <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
classB <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)
meanA <- mean(classA)
meanB <- mean(classB)
medianA <- median(classA)
medianB <- median(classB)
rangeA <- range(classA)
rangeB <- range(classB)
cat("(i) Class A vs Class B:\n")
cat("Mean: Class A -", meanA, " Class B -", meanB, "\n")
cat("Median: Class A -", medianA, " Class B -", medianB, "\n")
cat("Range: Class A -", diff(rangeA), " Class B -", diff(rangeB), "\n")
boxplot(classA, classB, names = c("Class A", "Class B"), col = c("lightblue", "lightgreen"), main = "Boxplot - Class A vs Class B", ylab = "Scores")
cat("(ii) Inferences from Boxplot:\n")
cat(" - Class A has a wider range of scores compared to Class B.\n")
cat(" - The median score for Class A is higher than that for Class B.\n")
cat(" - Class A has an outlier which affects the mean.\n")