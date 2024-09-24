# Load necessary library
library(waterfalls)

# Create a data frame with the appropriate structure
profit_loss_data <- data.frame(
  labels = c("Jan", "Feb", "Mar", "Apr", "May"),
  values = c(100, -20, 50, -10, 80)
)

# Plot waterfall plot
waterfall(profit_loss_data, fill_by_sign = TRUE)
