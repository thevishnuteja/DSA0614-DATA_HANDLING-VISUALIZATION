# Load necessary library
library(ggridges)
library(ggplot2)
# Create a data frame
temperature_data <- data.frame(
  City = c("City1", "City1", "City1", "City2", "City2", "City2"),
  Temperature = c(20, 21, 19, 22, 23, 24)
)
# Plot ridgeline plot
ggplot(temperature_data, aes(x = Temperature, y = City, fill = City)) +
  geom_density_ridges() +
  labs(title = "Temperature Distributions",
       x = "Temperature",
       y = "City") +
  theme_minimal()
