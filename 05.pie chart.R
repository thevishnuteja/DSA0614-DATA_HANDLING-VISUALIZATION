# Given dataset
company <- c("A", "B", "C", "D")
market_share <- c(20, 30, 25, 25)

# Create pie chart
pie(market_share, 
    labels = company, 
    main = "Market Share by Company", 
    col = c("lightblue", "lightgreen", "lightpink", "lightyellow"))

# Add percentage labels
pct <- round(market_share / sum(market_share) * 100)
lbls <- paste(company, pct, "%")
pie(market_share, labels = lbls, col = c("lightblue", "lightgreen", "lightpink", "lightyellow"))
