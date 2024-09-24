# Load the ggplot2 package
library(ggplot2)

# Prepare the data
data <- data.frame(
  Group = c('X', 'X', 'X', 'X', 'Y', 'Y', 'Y', 'Y'),
  Score = c(80, 85, 78, 92, 88, 76, 80, 84)
)

# Create the violin plot
ggplot(data, aes(x = Group, y = Score, fill = Group)) +
  geom_violin(alpha = 0.6) +
  labs(title = "Violin Plot of Scores by Group", x = "Group", y = "Score") +
  theme_minimal()
