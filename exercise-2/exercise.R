# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vec1, vec2){
  len1 <- length(vec1)
  len2 <- length(vec2)
  return(abs(len1 - len2))
}

# Pass two vectors of different length to your `CompareLength` function
vec1 <- c(1:2)
vec2 <- c(1:5)
CompareLength(vec1, vec2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vec1, vec2){
  len1 <- length(vec1)
  len2 <- length(vec2)
  if(len1 > len2) {
    return(paste(deparse(substitute(vec1)), "is longer by", CompareLength(vec1, vec2), "units."))
  } else {
    return(paste(deparse(substitute(vec2)),"is longer by", CompareLength(vec1, vec2), "units."))
  }
}

# Pass two vectors to your `DescribeDifference` function
vec1 <- c(1:2)
vec2 <- c(1:5)
DescribeDifference(vec1, vec2)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer