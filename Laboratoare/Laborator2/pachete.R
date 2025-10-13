library(prob)
#functia rolldie
rolldie(2)
omega2 <- rolldie(2)
omega2$X1
omega2[,1]

#Probabilitate empirica = probabilitatea obtinuta repetand experimentul 
#de n ori si evaluand de cate ori a aparut cazul dorit din cele n incercari

#pentru n suficient de mare, probabilitatea empirica tinde la cea teoretica

#ex 1
#se arunca un zar de 2 ori, cu ce probabilitate se obtin doar numere mai mari sau egale
#cu 4
omega2 <- rolldie(2) #spatiul starilor
which(omega2$X1 )
omega2[omega2$X1>=4 & omega2$X2>=4, ]

which(omega2$X1 >= 4 & omega2$X2 >= 4)

#folosirea functiei which
which(LETTERS == "R")
