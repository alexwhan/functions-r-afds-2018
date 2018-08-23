library(tidyverse)

df <- tibble::tibble(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)

# function_name <- function(argument1, argument2) {
#   body_of_function
# }

df$a - min(df$a, na.rm = TRUE)
max(df$a, na.rm = TRUE) - min(df$a, na.rm = TRUE)
range(df$a, na.rm = TRUE)
x <- df$a
(x - min(x, na.rm = TRUE)) / 
  (max(x, na.rm = TRUE) - min(x, na.rm = TRUE))
rng <- range(x, na.rm = TRUE)
(x - rng[1]) / (rng[2] - rng[1])


rescale01 <- function(x) {
  rng <- range(x, na.rm = TRUE)
  (x - rng[1]) / (rng[2] - rng[1])
}
rescale01(c(3, 7, 9, 59, 20, 10, 30, 20, 30))
rescale01(c(100, -792, 1500))
c(4, 3, 6)

vec1 <- c(2, 5, 4)
rescale01(vec1)

a <- 5
b <- 7
a + b

sum_function <- function(arg1, arg2) {
  arg1 + arg2
}

sum_function(a, b)
sum_function(7, 9)

sum_all_numbers <- function(...) {
  sum(...)
  args <- list(...)
  args[[1]]
}
sum_all_numbers(1, 2, 4, 7, 9, 12, 100)


## Exercise 2
##- Create a function that will return TRUE if a 
##given integer is in a given vector

#inputs:
#vector
#number

#output:
#TRUE if number is in vector

5 %in% 1:10
n <- 12
x <- 1:10

n %in% x

integer_find <- function(n, x) {
  n %in% x
}
integer_find(5, 1:10)
integer_find(5, 1:4)

function() {
  if (condition) {
    if (condition2) {
      
    }
  }
}

positive <- function(n) {
  if (n > 0) {
    TRUE
  }
}
positive(5)

positive2 <- function(n) {
  if (n > 0) {
    TRUE
  } else {
    if (n < 0) {
      n
    } else {
      if (n == 0) {
        "zero"
      }
    }
  }
}

positive2 <- function(n) {
  if (n > 0) {
    TRUE
  } else if (n < 0) {
      n
  } else if (n == 0) {
        "zero"
      }
}
positive2(-3)
positive2(0)
positive2(3)

f <- function(x) {
  x + y
}

y <- 5
f(3)


bad_function <- function(x) {
  browser()
  x + 5
}
bad_function(4)
