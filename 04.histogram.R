# Given dataset
age <- c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70)

# Create histogram
hist(age, 
     main = "Age Distribution", 
     xlab = "Age", 
     ylab = "Frequency", 
     col = "lightgreen", 
     border = "black",
     breaks = 5)  # Adjust the number of bins if necessary

# Add grid for better readability
grid()

