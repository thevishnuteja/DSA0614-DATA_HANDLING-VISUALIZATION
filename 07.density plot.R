# Load the ggplot2 package
library(ggplot2)

# Prepare the data
weights <- c(60, 65, 70, 75, 80, 85, 90, 95, 100)

# Create a data frame
df <- data.frame(Weight = weights)

# Create the density plot
ggplot(df, aes(x = Weight)) +
  geom_density(fill = "blue", alpha = 0.5) +
  labs(title = "Density Plot of Weights", x = "Weight (kg)", y = "Density") +
  theme_minimal()
