# Load required libraries
library(ggplot2)
library(reshape2)

# Prepare the data
data <- data.frame(
  Month = c('Jan', 'Feb', 'Mar', 'Apr', 'May'),
  CityA = c(5, 6, 7, 8, 9),
  CityB = c(10, 11, 12, 13, 14),
  CityC = c(15, 16, 17, 18, 19)
)

# Reshape the data to long format
data_long <- melt(data, id.vars = 'Month', variable.name = 'City', value.name = 'Temperature')

# Create the heatmap
ggplot(data_long, aes(x = Month, y = City, fill = Temperature)) +
  geom_tile() +
  scale_fill_gradient(low = "blue", high = "red") +
  labs(title = "Heatmap of Monthly Temperatures", x = "Month", y = "City") +
  theme_minimal()


