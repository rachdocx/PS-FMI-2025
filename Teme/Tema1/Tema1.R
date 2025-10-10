#Tema:
#construiti o functie in R care sa genereze un zar masluit pe mai multe fete indicand
#probabilitatile fetelor favorizate iar celelalte probabilitati sa fie calculate implicit (0.1/10 bonus)

fete <- 1:6
fav <- c(5, 6, 2) #aici bagam n-tuplul pe care il vrem favorizat
probFav <-c(0.3, 0.4, 0.1)
rest <- 1 - sum(probFav)
neFav <- setdiff(fete, fav)
prob <- rep(0,6)
prob[fav] <- probFav
prob[neFav] <- rest/length(neFav)

x<- sample(fete, 10^3, replace = T, prob = prob)
hist(x)


