# Combine the parameters or making a vector
vec <- c(1, 1, 2, 3, 3, 3, 4, 5, 2, 6, 8, 7, 8, 6)
# making a frequency table
table(vec)
# Create a bar plot
plot(table(vec))
# Documentation syntax
?plot
# Get current working directory
getwd()
# Set current working directory
setwd("/home/sannhtet/Desktop")
# Type cast to the vector
as.vector(vec)
# Type casting to the Qualitative data type
as.factor(vec)
# making a sequence of number
seq(from=0, to=10, by=2)
# making repetative numbers
rep(1:3, times=2)
# Creating a matrix from a combined sequence
matrix(vec, nrow = 7, byrow = TRUE)