# Calculate average on-time percent for each route by peak period
bus_data <- read.csv("bus.csv", stringsAsFactors = FALSE)
rail_data <- read.csv("rail.csv", stringsAsFactors = FALSE)

# Combine bus and rail data into a single data frame
all_data <- rbind(bus_data, rail_data)
all_data$on_time_percent <- all_data$numerator / all_data$denominator * 100

# Calculate average on-time percent for each route by peak period
on_time_data <- aggregate(
    on_time_percent ~ route + peak,
    data = all_data,
    FUN = mean
)

on_time_data$on_time_percent <- round(on_time_data$on_time_percent)

# Get route input from user input
route_input <- readline("Route: ")

if (!(route_input %in% on_time_data$route)) {
    cat("Invalid route\n")
} else {
    peak_percent <- on_time_data$on_time_percent[
        on_time_data$route == route_input & on_time_data$peak == "PEAK"
    ][1]
    off_peak_percent <- on_time_data$on_time_percent[
        on_time_data$route == route_input & on_time_data$peak == "OFF_PEAK"
    ][1]

    cat(sprintf(
        "%s is on time %d%% of the time during peak hours and %d%% of the time during off-peak hours.\n",
        route_input,
        peak_percent,
        off_peak_percent
    ))
}