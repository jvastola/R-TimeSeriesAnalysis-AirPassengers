# Load necessary libraries
library(tidyverse)
library(forecast)

# Load the dataset
data <- read.csv("data/air_passengers.csv", row.names=NULL)
ts_data <- ts(data, start=c(1949, 1), frequency=12)

# Fit a SARIMA model (Seasonal Autoregressive Integrated Moving Average)
sarima_model <- auto.arima(ts_data, seasonal=TRUE, stepwise=TRUE, trace=FALSE)

# Forecast future values
forecasted_data <- forecast(sarima_model, h=12)
autoplot(forecasted_data) + labs(title="SARIMA Forecast")
ggsave("output/forecast_plot.png")
