# Create a data frame
sales_region_data <- data.frame(
  Region = c("North", "South", "East", "West"),
  Sales = c(150, 200, 180, 210)
)
# Plot lollipop plot
ggplot(sales_region_data, aes(x = Region, y = Sales)) +
  geom_segment(aes(x = Region, xend = Region, y = 0, yend = Sales), color = "gray") +
  geom_point(color = "blue", size = 5) +
  labs(title = "Sales by Region",
       x = "Region",
       y = "Sales") +
  theme_minimal()
