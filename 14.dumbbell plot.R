# Load necessary library
library(ggalt)
# Create a data frame
sales_campaign_data <- data.frame(
  Product = c("A", "B", "C"),
  Before = c(200, 300, 400),
  After = c(250, 350, 450)
)
# Plot dumbbell plot
ggplot(sales_campaign_data) +
  geom_dumbbell(aes(x = Before, xend = After, y = Product), size = 3, color = "gray", size_x = 3, size_xend = 3) +
  labs(title = "Sales Before and After Campaign",
       x = "Sales",
       y = "Product") +
  theme_minimal()
