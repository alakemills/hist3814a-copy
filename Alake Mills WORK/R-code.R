
x <- "https://raw.githubusercontent.com/shawngraham/exercise/gh-pages/CND.csv"

documents <- read.csv(x) 

documents <- read.csv(text = x, col.names=c("Article_ID", "Newspaper Title", "Newspaper City", "Newspaper Province", "Newspaper Country", "Year", "Month", "Day", "Article Type", "Text", "Keywords"), colClasses=rep("character", 3), sep=",", quote="")

counts <- table(documents$Newspaper.City)
View(counts)

barplot(counts, main="Cities", xlab="Number of Articles")

