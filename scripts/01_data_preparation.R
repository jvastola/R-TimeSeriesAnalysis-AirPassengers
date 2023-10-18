# 01_data_preparation.R

# Load the necessary library
library(datasets)

# Load the AirPassengers dataset
data(AirPassengers)

# Save the dataset to a .csv file in the "data" directory
write.csv(AirPassengers, "data/air_passengers.csv", row.names = FALSE)

# Optionally, you can add a line to preview the dataset in the RStudio console:
print(head(AirPassengers))
