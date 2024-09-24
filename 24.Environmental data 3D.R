# Load necessary libraries
library(ggplot2)
library(plotly)
library(akima)

# Create the dataset
environmental_data <- data.frame(
  Location = c("A", "B", "C", "D", "E"),
  Temperature = c(15, 20, 18, 12, 17),
  Humidity = c(65, 70, 68, 60, 72),
  CO2Levels = c(400, 450, 420, 380, 430)
)

# 1. Analyze CO2 Levels with Temperature and Humidity
# Scatter plot for CO2 Levels vs Temperature
ggplot(environmental_data, aes(x = Temperature, y = CO2Levels)) +
  geom_point(aes(color = Humidity)) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "CO2 Levels vs Temperature",
       x = "Temperature (°C)",
       y = "CO2 Levels (ppm)") +
  theme_minimal()

# Scatter plot for CO2 Levels vs Humidity
ggplot(environmental_data, aes(x = Humidity, y = CO2Levels)) +
  geom_point(aes(color = Temperature)) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "CO2 Levels vs Humidity",
       x = "Humidity (%)",
       y = "CO2 Levels (ppm)") +
  theme_minimal()

# 2. 3D Scatter Plot of Temperature, Humidity, and CO2 Levels
plot_ly(environmental_data, x = ~Temperature, y = ~Humidity, z = ~CO2Levels, type = 'scatter3d', mode = 'markers',
        marker = list(size = 10, color = ~CO2Levels, colorscale = 'Viridis')) %>%
  layout(title = '3D Scatter Plot of Temperature, Humidity, and CO2 Levels',
         scene = list(xaxis = list(title = 'Temperature (°C)'),
                      yaxis = list(title = 'Humidity (%)'),
                      zaxis = list(title = 'CO2 Levels (ppm)')))

# 3. Check for Spatial Patterns in the 3D Plot
# The spatial pattern can be visually inspected in the 3D scatter plot created above.

# 4. 3D Surface Plot of CO2 Levels with Temperature and Humidity
# Create grid data for the surface plot
grid_data <- interp(x = environmental_data$Temperature, y = environmental_data$Humidity, z = environmental_data$CO2Levels,
                    xo = seq(min(environmental_data$Temperature), max(environmental_data$Temperature), length = 100),
                    yo = seq(min(environmental_data$Humidity), max(environmental_data$Humidity), length = 100))

# 3D Surface Plot
plot_ly(x = grid_data$x, y = grid_data$y, z = grid_data$z, type = 'surface') %>%
  layout(title = '3D Surface Plot of CO2 Levels',
         scene = list(xaxis = list(title = 'Temperature (°C)'),
                      yaxis = list(title = 'Humidity (%)'),
                      zaxis = list(title = 'CO2 Levels (ppm)')))

# 5. Compare 3D Plots of CO2 Levels Against Temperature and Humidity
# The 3D scatter plot and 3D surface plot for CO2 Levels against Temperature and Humidity are created above.

# To visualize the comparison clearly, review the plots generated for CO2 Levels vs Temperature and Humidity separately.
