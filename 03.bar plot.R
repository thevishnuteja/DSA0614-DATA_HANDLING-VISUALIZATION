# Given dataset
product <- c("A", "B", "C", "D", "E")
sales <- c(300, 450, 500, 350, 400)

# Create bar plot
barplot(sales, 
        names.arg = product, 
        main = "Sales by Product", 
        xlab = "Product", 
        ylab = "Sales", 
        col = "lightblue", 
        border = "black")

# Add grid for better readability
grid()

