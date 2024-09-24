# Given dataset
class <- c("A", "A", "A", "A", "B", "B", "B", "B")
scores <- c(85, 90, 78, 92, 88, 76, 80, 84)

# Create box plot
boxplot(scores ~ class, 
        main = "Exam Scores by Class", 
        xlab = "Class", 
        ylab = "Scores", 
        col = c("lightblue", "lightgreen"))

# Add grid for better readability
grid()

