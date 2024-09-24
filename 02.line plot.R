# Given dataset
year <- c(2010, 2011, 2012, 2013, 2014)
population <- c(1000, 1020, 1040, 1060, 1080)

# Create line plot
plot(year, population, 
     type = "o",  # "o" for both points and lines
     main = "Line Plot of Population Over Years", 
     xlab = "Year", 
     ylab = "Population (millions)", 
     col = "blue", 
     pch = 16)

# Add grid for better readability
grid()
