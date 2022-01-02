


# Smock
# https://i.imgur.com/9uYFiSz.png


# Inclusions
# Norweigan flag: https://codegolf.stackexchange.com/questions/85141/draw-the-national-flag-of-iceland/85420#85420
# Bangladesh flag
# Rainbow flag



### LOGO

# Blueprint: https://imgur.com/a/gxJ2nBs

library(ggplot2)

eq1 <- function(x) {
  ans <- x ^ 2
  ans[x >= 20 & x <= 30] <- NA
  ans[x >= 50 & x <= 70] <- NA
  ans
}


ggplot(data.frame(x = c(1, 100)), aes(x)) +
  stat_function(fun = eq1) +
  theme_void()



eq1a <- function(x) {
  out <- (2*x) + 30
  out[x < 10] <- NA
  out[x > 25] <- NA
  out
}
eq1b <- function(x) {
}
eq2a <- function(x) {
  out <- (-0.5 * x) + 30
  out[x < 10 | x > 20] <- NA
  out
}
eq2b <- function(x) {
}
eq3a <- function(x) {
  out <- (2 * x) - 20
  out[x < 25 | x > 30] <- NA
  out
}
eq3b <- function(x) {
}
eq4a <- function(x) {
  out <- (3 * x) - 30
  out[x < 28 | x > 33] <- NA
  out
}
eq4b <- function(x) {
}
eq5 <- function(x) {
}
eq6 <- function(x) {
}



ggplot(data.frame(x = c(1, 100)), aes(x)) +
  stat_function(fun = eq1a) +
  stat_function(fun = eq1b) +
  stat_function(fun = eq2a) +
  stat_function(fun = eq2b) +
  stat_function(fun = eq3a) +
  stat_function(fun = eq3b) +
  stat_function(fun = eq4a) +
  stat_function(fun = eq4b) +
  stat_function(fun = eq5) +
  stat_function(fun = eq6) +
  xlim(0, 100) +
  ylim(0, 100) +
  theme_void()



# Lesson: do this on grid paper first!!










plot(0:9,,"n",as=1)
rect(0,0,10,6,,,"#006a4e",NA)
symbols(4.5,3,2,f=NA,bg="#f42a41",i=F,a=T)




plot(0:9,,"n",asp=1)


# Rainbow flag
library(ggplot2)
ggplot(data.frame(y=1:6),aes(y=y)) +
  theme_void() +
  geom_bar(fill=c("#9400D3","#0000FF","#006400","#FFFF00","#FFA500","#FF0000"),width=1)



# generatR - Examples of generative art in R







### How to plot simple lines and curves

# https://stackoverflow.com/a/26091375/5783745
curve(x^2, from=1, to=50, , xlab="x", ylab="y")



library("ggplot2")
eq = function(x){x*x}
eq2 <- function(x){x^2-1000}
ggplot(data.frame(x=c(1, 50)), aes(x=x)) +
  stat_function(fun=eq) +
  stat_function(fun=eq2) +
  theme_void()



curve(eq2, from=1, to=100, , xlab="x", ylab="y")











library("ggplot2")
eq = function(x){x*x}
eq2 <- function(x){x^2-1000}
ggplot(data.frame(x=c(1, 100)), aes(x=x)) +
  stat_function(fun=eq) +
  stat_function(fun=eq2) +
  theme_void()








library("ggplot2")
eq = function(x){x*x}
eq2 <- function(x){x^2-1000}
ggplot(data.frame(x=c(1, 100)), aes(x=x)) +
  stat_function(fun=eq) +
  stat_function(fun=eq2) +
  theme_void()









library("ggplot2")
eq = function(x){x*x}
ggplot(data.frame(x=c(1, 100)), aes(x=x)) +
  stat_function(fun=eq) +
  theme_void()





library(ggplot2)

eq <- function(x) {
  ans <- x ^ 2
  ans[x >= 20 & x <= 30] <- NA
  ans[x >= 50 & x <= 70] <- NA
  ans
}

ggplot(data.frame(x = c(1, 100)), aes(x)) +
  stat_function(fun = eq) +
  theme_void()





# 1.


# 2.


eq2 <- function(x) {
  (-0.75 * x) + 10
}

# 3.





ggplot(data.frame(x = c(1, 100)), aes(x)) +
  stat_function(fun = eq2)

ggplot(data.frame(x=c(1, 100)), aes(x)) +
  geom_abline()









# geom_vline(), geom_hline(), and geom_abline()
# From: ?geom_abline()

p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()

# Fixed values
p + geom_vline(xintercept = 5)
p + geom_vline(xintercept = 1:5)
p + geom_hline(yintercept = 20)

p + geom_abline() # Can't see it - outside the range of the data
p + geom_abline(intercept = 20)

# Calculate slope and intercept of line of best fit
coef(lm(mpg ~ wt, data = mtcars))
p + geom_abline(intercept = 37, slope = -5)
# But this is easier to do with geom_smooth:
p + geom_smooth(method = "lm", se = FALSE)

# To show different lines in different facets, use aesthetics
p <- ggplot(mtcars, aes(mpg, wt)) +
  geom_point() +
  facet_wrap(~ cyl)

mean_wt <- data.frame(cyl = c(4, 6, 8), wt = c(2.28, 3.11, 4.00))
p + geom_hline(aes(yintercept = wt), mean_wt)

# You can also control other aesthetics
ggplot(mtcars, aes(mpg, wt, colour = wt)) +
  geom_point() +
  geom_hline(aes(yintercept = wt, colour = wt), mean_wt) +
  facet_wrap(~ cyl)













