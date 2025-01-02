#192210682 Niranjan R
data(mtcars)
boxplot(mpg ~ cyl, data = mtcars, main = "Boxplot: mpg vs. cyl",
        xlab = "Number of Cylinders", ylab = "Miles Per Gallon", col = "skyblue")
