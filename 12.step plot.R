# Load necessary library
library(ggplot2)

# Create a data frame
cumulative_sales_data <- data.frame(
  Month = factor(c("Jan", "Feb", "Mar", "Apr", "May"), levels = c("Jan", "Feb", "Mar", "Apr", "May")),
  Cumulative_Sales = c(100, 200, 300, 400, 500)
)

# Create the step plot
ggplot(cumulative_sales_data, aes(x = Month, y = Cumulative_Sales, group = 1)) +
  geom_step() +
  labs(title = "Cumulative Sales Over Months",
       x = "Month",
       y = "Cumulative Sales") +
  theme_minimal()
