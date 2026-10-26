# CS50R - Introduction to Programming with R

- Course: Harvard CS50R, *CS50's Introduction to Programming with R* (https://cs50.harvard.edu/r)
- Code repository: https://github.com/pop9459/P1-2-CS50R
- This file is one section of the semester 3 personal portfolio. The code of each problem
  set is put in from this repository when the portfolio PDF is built (the hidden
  "include" comments below); on GitHub, open the problem-set folders instead.
- Module book (section 3): "Watch the assigned videos independently ... Assessment considers
  participation, effort and insight, not correctness alone." CS50R is scored at the
  mid-term and at the final.

Schedule as published on Blackboard (course TD-2526-0354, *Semester 3 - P1&P2 - Data Dynamics*):

| Module week | CS50R lecture | Problem set | Status |
|---|---|---|---|
| 1.1 | Lecture 1 - Representing Data | Pit Stop, `art.frame`, Big 5 | Done (10 Sep 2026) |
| 1.3 | Lecture 2 - Transforming Data | Librarian, Tea House, On Time | Done (11 Sep 2026) |
| 1.5 | Lecture 3 - Applying Functions | PDX Carpet, Happy, Variations | Open |
| 1.6 | Lecture 4 - Tidying Data | Northwest Air, Zeruda no Densetsu | Open |
| 2.1 | Lecture 5 - Visualizing Data | (after the mid-term) | - |
| 2.3 | Lecture 6 - Testing Programs | (after the mid-term) | - |
| 2.5 | Packaging Programs | Replaced by the individual project, which is an R package (module book section 1) | - |

> **TODO (Peter):** finish problem sets 3 and 4 (Linear KAP-3) and update the status column.

---

## Week 1.1 - Representing Data

**Lecture:** Lecture 1 - Representing Data (vectors, data frames, reading CSV/TSV files,
factors).

### Pit Stop

#### Description
Asks for a race's CSV file name, reads the pit-stop times and prints four numbers for that
race: how many pit stops there were, the shortest and the longest stop, and the total time
spent in the pit lane. It uses `nrow()` for the count and `min()`, `max()` and `sum()` on
the `time` column.

#### Code
<!-- include: pitstop/pitstop.R -->

### art.frame

#### Description
Builds a small piece of ASCII art as a data frame. Each column (`A` to `E`) is a
character vector of five cells, so the picture is stored column by column and `print()`
shows it row by row. The exercise is about how a data frame is a list of equal-length
vectors.

#### Code
<!-- include: art.frame/art.R -->

### Big 5

#### Description
Reads the Big Five personality test results from a tab-separated file, turns the numeric
`gender` code into a labelled factor ("Unanswered", "Male", "Female", "Other"), and
computes the five trait scores (Extroversion, Neuroticism, Agreeableness,
Conscientiousness, Openness). Each score is the sum of that trait's three answers divided
by 15 (the highest possible total), rounded to two decimals. The result is written to
`analysis.csv`.

#### Code
<!-- include: big5/big5.R -->

### Notes on the week's assignments

> **TODO (Peter):** 2-4 sentences in your own words: what was new, what was hard, anything
> you would do differently (participation, effort and insight are what is assessed).

---

## Week 1.3 - Transforming Data

**Lecture:** Lecture 2 - Transforming Data (logical subsetting, combining conditions,
`aggregate()`, user input).

### Librarian

#### Description
Six library visitors each look for one book. For every visitor the script filters
`books.csv` with logical conditions (author, topic, year, page range, a pattern in the
title with `grepl()`), and for the teacher it also joins on `authors.csv` to keep only
authors from the town Zenthia. The six titles are written back into `answers.txt`.

#### Code
<!-- include: librarian/log.R -->

Result:

<!-- include: librarian/answers.txt -->

### Tea House

#### Description
Recommends a tea from a small data frame. It asks for a flavour (Bold or Light) and
whether the user wants caffeine, normalises and validates both answers (`stop()` on
invalid input), and prints the teas that match both conditions.

#### Code
<!-- include: teahouse/teahouse.R -->

#### Own variation: Linux distro house
The same filtering logic applied to something of my own: recommending a Linux
distribution by release model (fixed or rolling) and beginner-friendliness. It also
handles the case where nothing matches, which the tea version does not.

<!-- include: teahouse/linuxDistroHouse.R -->

### On Time

#### Description
Combines the bus and rail reliability data with `rbind()`, computes an on-time percentage
per row (`numerator / denominator * 100`), and averages it per route and peak period with
`aggregate()`. It then asks for a route and prints how often that route is on time in peak
and off-peak hours, or "Invalid route" for an unknown route.

#### Code
<!-- include: ontime/ontime.R -->

### Notes on the week's assignments

> **TODO (Peter):** 2-4 sentences in your own words.

---

## Week 1.5 - Applying Functions

**Lecture:** Lecture 3 - Applying Functions.

> **TODO (Peter):** problem set 3 (PDX Carpet, Happy, Variations) is not done yet. When it
> is, add a section per problem in the same format: description, the HTML-comment
> include line pointing at the .R file (as in the sections above), then your notes.

---

## Week 1.6 - Tidying Data

**Lecture:** Lecture 4 - Tidying Data.

> **TODO (Peter):** problem set 4 (Northwest Air, Zeruda no Densetsu) is not done yet. Same
> format as above.
