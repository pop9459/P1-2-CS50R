teas <- data.frame(
    type = c("Green", "Black", "Rooibos", "Chamomile"),
    caffeine = c(TRUE, TRUE, FALSE, FALSE),
    flavor = c("Light", "Bold", "Bold", "Light")
)

# Get flavor preference from user
preferred_flavor <- readline("Flavor: ")
if (tolower(preferred_flavor) == "bold") {
    preferred_flavor <- "Bold"
} else if (tolower(preferred_flavor) == "light") {
    preferred_flavor <- "Light"
} else {
    stop("Invalid input. Please enter 'Bold' or 'Light'.")
}

# Get caffeine preference from user
user_likes_caffeine <- readline("Caffeine?: ")
if (tolower(user_likes_caffeine) == "yes") {
    user_likes_caffeine <- TRUE
} else if (tolower(user_likes_caffeine) == "no") {
    user_likes_caffeine <- FALSE
} else {
    stop("Invalid input. Please enter 'yes' or 'no'.")
}

# Filter teas based on user preferences
recommended_teas <- teas[
    teas$caffeine == user_likes_caffeine &
    teas$flavor == preferred_flavor, 
    "type"
]

# Print recommended teas
print(paste0("You might like: ", recommended_teas, " tea."))
