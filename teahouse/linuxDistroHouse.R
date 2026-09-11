distros <- data.frame(
    name = c("Ubuntu", "Linux Mint", "Fedora", "Debian", "Arch Linux", "Pop!_OS"),
    beginner_friendly = c(TRUE, TRUE, TRUE, FALSE, FALSE, TRUE),
    release_type = c("Fixed", "Fixed", "Fixed", "Fixed", "Rolling", "Fixed")
)

# Get release preference from user
preferred_release <- readline("Release type (Fixed/Rolling): ")
if (tolower(preferred_release) == "fixed") {
    preferred_release <- "Fixed"
} else if (tolower(preferred_release) == "rolling") {
    preferred_release <- "Rolling"
} else {
    stop("Invalid input. Please enter 'Fixed' or 'Rolling'.")
}

# Get experience preference from user
needs_beginner <- readline("Beginner friendly? (yes/no): ")
if (tolower(needs_beginner) == "yes") {
    needs_beginner <- TRUE
} else if (tolower(needs_beginner) == "no") {
    needs_beginner <- FALSE
} else {
    stop("Invalid input. Please enter 'yes' or 'no'.")
}

# Filter distros based on user preferences
recommended_distros <- distros[
    distros$release_type == preferred_release &
        distros$beginner_friendly == needs_beginner,
    "name"
]

# Print recommended distros
if (length(recommended_distros) == 0) {
    print("No exact match found. Try broader preferences.")
} else {
    print(paste0("You might like: ", paste(recommended_distros, collapse = ", "), "."))
}
