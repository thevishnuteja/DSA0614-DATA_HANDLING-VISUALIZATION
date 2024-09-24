# Prepare the data
data <- data.frame(
  Month = c('Jan', 'Jan', 'Feb', 'Feb', 'Mar', 'Mar'),
  Region = c('East', 'West', 'East', 'West', 'East', 'West'),
  Sales = c(200, 150, 220, 170, 210, 160)
)

# Create the facet plot
ggplot(data, aes(x = Month, y = Sales, fill = Region)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  facet_wrap(~ Region) +
  labs(title = "Sales by Month and Region", x = "Month", y = "Sales") +
  theme_minimal()

