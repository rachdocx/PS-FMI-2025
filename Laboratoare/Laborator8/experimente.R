n <- 1000
x1 <- sample(c(-3, 3), n, replace = T)
x2 <- sample(c(-4, 3, 6), n, replace = T, prob = c(1/2, 1/3, 1/6))

hist(x2)

m1 <- mean(x1)
m2 <- mean(x2)

var1 = var(x1)
var2 = var(x2)