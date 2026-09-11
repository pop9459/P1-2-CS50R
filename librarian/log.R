# Read provided data
answers <- read.table("answers.txt", sep = ":")
books <- read.csv("books.csv")
authors <- read.csv("authors.csv")

# Writer
answers$V2[1] <- books[books$author == "Mia Morgan", "title"]

# Musician
answers$V2[2] <- books[books$topic == "Music" & books$year == 1613, "title"]

# Traveler
answers$V2[3] <- books[
    (books$author == "Lysandra Silverleaf" | books$author == "Elena Petrova") &
    books$year == 1775,
    "title"
]

# Painter
answers$V2[4] <- books[
    books$topic == "Art" &
    books$pages > 200 & books$pages < 300 &
    (books$year == 1990 | books$year == 1992),
    "title"
]

# Scientist
answers$V2[5] <- books[
    grepl("Quantum Mechanics", books$title),
    "title"
]

# Teacher
answers$V2[6] <- books[
    books$topic == "Education" &
    (books$year >= 1700 & books$year < 1800) &
    books$author %in% authors[authors$hometown == "Zenthia", "author"],
    "title"
]

# Save answers
write.table(
    answers, 
    "answers.txt", 
    sep = ": ", 
    row.names = FALSE, 
    col.names = FALSE, 
    quote = FALSE
)
