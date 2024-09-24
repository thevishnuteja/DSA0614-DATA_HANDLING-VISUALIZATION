# Load necessary libraries
library(ggplot2)
library(reshape2)

# Create the dataset
weather_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Temperature = c(10, 12, 8, 15, 14),
  Humidity = c(75, 70, 80, 65, 72),
  WindSpeed = c(15, 12, 18, 20, 16)
)

# Scatter plot for Temperature vs Humidity
ggplot(weather_data, aes(x = Humidity, y = Temperature)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Temperature vs Humidity",
       x = "Humidity (%)",
       y = "Temperature (°C)") +
  theme_minimal()

# Scatter plot for Temperature vs Wind Speed
ggplot(weather_data, aes(x = WindSpeed, y = Temperature)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Temperature vs Wind Speed",
       x = "Wind Speed (km/h)",
       y = "Temperature (°C)") +
  theme_minimal()
# Load necessary library
library(plotly)

# 3D scatter plot
plot_ly(weather_data, x = ~Humidity, y = ~WindSpeed, z = ~Temperature, type = 'scatter3d', mode = 'markers',
        marker = list(size = 5, color = ~Temperature, colorscale = 'Viridis')) %>%
  layout(title = '3D Scatter Plot of Temperature, Humidity, and Wind Speed',
         scene = list(xaxis = list(title = 'Humidity (%)'),
                      yaxis = list(title = 'Wind Speed (km/h)'),
                      zaxis = list(title = 'Temperature (°C)')))
# Correlation matrix
cor(weather_data[, -1])
# Reshape data for surface plot
weather_data_long <- melt(weather_data, id.vars = c("Date", "Temperature"), 
                          measure.vars = c("Humidity", "WindSpeed"))

# Create the surface plot
plot_ly(weather_data, x = ~Humidity, y = ~WindSpeed, z = ~Temperature, type = 'surface') %>%
  layout(title = '3D Surface Plot of Temperature',
         scene = list(xaxis = list(title = 'Humidity (%)'),
                      yaxis = list(title = 'Wind Speed (km/h)'),
                      zaxis = list(title = 'Temperature (°C)')))
# Surface plot for Temperature vs Humidity
plot_ly(x = ~weather_data$Humidity, y = ~weather_data$WindSpeed, z = ~weather_data$Temperature, type = 'surface') %>%
  layout(title = 'Temperature vs Humidity and Wind Speed',
         scene = list(xaxis = list(title = 'Humidity (%)'),
                      yaxis = list(title = 'Wind Speed (km/h)'),
                      zaxis = list(title = 'Temperature (°C)')))
