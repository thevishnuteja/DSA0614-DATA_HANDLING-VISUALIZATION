# Load necessary libraries
library(ggplot2)
library(plotly)
library(akima)

# Create the dataset
academic_data <- data.frame(
  Student = c("A", "B", "C", "D", "E"),
  MathScore = c(85, 72, 90, 78, 88),
  ScienceScore = c(78, 85, 80, 75, 82),
  Attendance = c(95, 92, 98, 85, 93)
)

# 1. Scatter plots
# Scatter plot for Science Scores vs Math Scores
ggplot(academic_data, aes(x = MathScore, y = ScienceScore)) +
  geom_point(aes(color = Attendance)) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Science Scores vs Math Scores",
       x = "Math Score",
       y = "Science Score") +
  theme_minimal()

# Scatter plot for Science Scores vs Attendance
ggplot(academic_data, aes(x = Attendance, y = ScienceScore)) +
  geom_point(aes(color = MathScore)) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Science Scores vs Attendance",
       x = "Attendance (%)",
       y = "Science Score") +
  theme_minimal()

# 2. 3D Scatter Plot
plot_ly(academic_data, x = ~MathScore, y = ~Attendance, z = ~ScienceScore, type = 'scatter3d', mode = 'markers',
        marker = list(size = 10, color = ~ScienceScore, colorscale = 'Viridis')) %>%
  layout(title = '3D Scatter Plot of Math Score, Science Score, and Attendance',
         scene = list(xaxis = list(title = 'Math Score'),
                      yaxis = list(title = 'Attendance (%)'),
                      zaxis = list(title = 'Science Score')))

# 3. Correlation Analysis
correlations <- cor(academic_data[, c("MathScore", "ScienceScore", "Attendance")])
print(correlations)

# 4. 3D Surface Plot
# Create grid data for the surface plot
grid_data <- interp(x = academic_data$MathScore, y = academic_data$Attendance, z = academic_data$ScienceScore,
                    xo = seq(min(academic_data$MathScore), max(academic_data$MathScore), length = 100),
                    yo = seq(min(academic_data$Attendance), max(academic_data$Attendance), length = 100))

# 3D Surface Plot
plot_ly(x = grid_data$x, y = grid_data$y, z = grid_data$z, type = 'surface') %>%
  layout(title = '3D Surface Plot of Science Scores',
         scene = list(xaxis = list(title = 'Math Score'),
                      yaxis = list(title = 'Attendance (%)'),
                      zaxis = list(title = 'Science Score')))

# 5. Compare 3D Plots
# The 3D scatter plot and 3D surface plot for Science Scores vs Math Scores and Attendance are created above.
# Reviewing these plots will help identify any significant patterns or outliers.
