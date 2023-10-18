# Load necessary libraries
library(tidyverse)
library(forecast)

# Load the dataset
data <- read.csv("data/air_passengers.csv", row.names=NULL)
ts_data <- ts(data, start=c(1949, 1), frequency=12)

# Decompose the time series
decomposed_data <- decompose(ts_data, type="multiplicative")

# Plot the decomposed components
autoplot(decomposed_data) + labs(title="Time Series Decomposition")
ggsave("output/decomposed_plot.png")
