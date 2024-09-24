# Create a data frame
sales_time_data <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Jan", "Feb", "Mar"),
  Product = c("A", "A", "A", "B", "B", "B"),
  Sales = c(100, 150, 130, 120, 140, 160)
)

# Plot spaghetti plot
ggplot(sales_time_data, aes(x = Month, y = Sales, group = Product, color = Product)) +
  geom_line(size = 1) +
  geom_point(size = 3) +
  labs(title = "Sales over Time by Product",
       x = "Month",
       y = "Sales") +
  theme_minimal()
