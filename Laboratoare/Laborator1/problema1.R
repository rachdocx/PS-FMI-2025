# sa se verifice daca un zar este masluit

#intai simulez un zar corect 
#c() - concatenare

x <- sample(1:6, 10, replace = T, prob = c(0.5, 0.1,  0.1, 0.1, 0.1, 0.1))

length(x[x == 1]) / 10^6
length(x[x == 2]) / 10^6
length(x[x == 3]) / 10^6
length(x[x == 4]) / 10^6
length(x[x == 5]) / 10^6
length(x[x == 6]) / 10^6

hist(x)

#Tema:
#construiti o functie in R care sa genereze un zar masluit pe mai multe fete indicand
#probabilitatile fetelor favorizate iar celelalte probabilitati sa fie calculate implicit (0.1/10 bonus)

