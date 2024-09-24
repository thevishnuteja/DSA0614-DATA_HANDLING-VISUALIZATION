# Load necessary libraries
library(ggplot2)
library(plotly)
library(dplyr)

# Create the dataset
consumer_data <- data.frame(
  Product = c("A", "B", "C", "D", "E"),
  Price = c(50, 70, 60, 45, 55),
  Rating = c(4.2, 3.8, 4.0, 4.5, 3.9),
  AgeGroup = c("25-35", "35-45", "18-25", "45-55", "25-35")
)

# Scatter plot for Rating vs Price
ggplot(consumer_data, aes(x = Price, y = Rating)) +
  geom_point(aes(color = AgeGroup)) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Product Rating vs Price",
       x = "Price ($)",
       y = "Rating (out of 5)") +
  theme_minimal()

# Box plot for Rating by Age Group
ggplot(consumer_data, aes(x = AgeGroup, y = Rating)) +
  geom_boxplot(aes(color = AgeGroup)) +
  labs(title = "Product Rating by Age Group",
       x = "Age Group",
       y = "Rating (out of 5)") +
  theme_minimal()
# Convert AgeGroup to a numerical factor
consumer_data$AgeGroupNum <- as.numeric(factor(consumer_data$AgeGroup, levels = c("18-25", "25-35", "35-45", "45-55")))

# 3D scatter plot
plot_ly(consumer_data, x = ~Price, y = ~AgeGroupNum, z = ~Rating, type = 'scatter3d', mode = 'markers',
        marker = list(size = 10, color = ~Rating, colorscale = 'Viridis')) %>%
  layout(title = '3D Scatter Plot of Price, Rating, and Age Group',
         scene = list(xaxis = list(title = 'Price ($)'),
                      yaxis = list(title = 'Age Group'),
                      zaxis = list(title = 'Rating (out of 5)')))
# Calculate correlations
cor(consumer_data[, c("Price", "Rating", "AgeGroupNum")])
# Create a grid of values
library(akima)

# Create grid data
grid_data <- interp(x = consumer_data$Price, y = consumer_data$AgeGroupNum, z = consumer_data$Rating,
                    xo = seq(min(consumer_data$Price), max(consumer_data$Price), length = 100),
                    yo = seq(min(consumer_data$AgeGroupNum), max(consumer_data$AgeGroupNum), length = 100))

# 3D surface plot
plot_ly(x = grid_data$x, y = grid_data$y, z = grid_data$z, type = 'surface') %>%
  layout(title = '3D Surface Plot of Ratings',
         scene = list(xaxis = list(title = 'Price ($)'),
                      yaxis = list(title = 'Age Group'),
                      zaxis = list(title = 'Rating (out of 5)')))
# 3D scatter plot for Ratings vs Price and Age Group
plot_ly(consumer_data, x = ~Price, y = ~AgeGroupNum, z = ~Rating, type = 'scatter3d', mode = 'markers',
        marker = list(size = 10, color = ~Rating, colorscale = 'Viridis')) %>%
  layout(title = 'Ratings vs Price and Age Group',
         scene = list(xaxis = list(title = 'Price ($)'),
                      yaxis = list(title = 'Age Group'),
                      zaxis = list(title = 'Rating (out of 5)')))

# 3D surface plot for Ratings vs Price and Age Group (already covered in previous steps)
