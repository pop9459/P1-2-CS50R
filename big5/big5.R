data <- read.table("tests.tsv", sep = "\t", header = TRUE, stringsAsFactors = FALSE)

data$gender <- factor(
    data$gender,
    levels = c("0", "1", "2", "3"),
    labels = c("Unanswered", "Male", "Female", "Other")
)

data$Extroversion <- round(
    (data$E1 + data$E2 + data$E3) / 15,
    digits = 2
)
data$Neuroticism <- round(
    (data$N1 + data$N2 + data$N3) / 15,
    digits = 2
)
data$Agreeableness <- round(
    (data$A1 + data$A2 + data$A3) / 15,
    digits = 2
)
data$Conscientiousness <- round(
    (data$C1 + data$C2 + data$C3) / 15,
    digits = 2
)
data$Openness <- round(
    (data$O1 + data$O2 + data$O3) / 15,
    digits = 2
)

write.csv(data, "analysis.csv", row.names = FALSE, na = "")
