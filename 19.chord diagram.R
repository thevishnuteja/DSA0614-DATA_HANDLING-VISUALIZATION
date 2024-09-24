# Load necessary library
library(circlize)

# Create a data frame
chord_data <- data.frame(
  From = c("A", "A", "B", "B", "C"),
  To = c("B", "C", "C", "D", "D"),
  Value = c(10, 20, 15, 25, 30)
)

# Plot chord diagram
chordDiagram(chord_data)

