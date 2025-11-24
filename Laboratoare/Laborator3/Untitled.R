#PROBLEMA 1 Lab 3-4
#a) 
#abordarea cu probabilitatea empirica

n = 10^9
carti <- cards()
test <- replicate(n, 
          
          
          {
          indici <- sample(1:52, 5, FALSE)
          extragere <- carti[indici,]
          sol = (sum( extragere$suit[1] == extragere$suit[2:5] ) == 4)}
          
          )
prob_emp <- sum(test)/n

#probabilitatea teorietca
probt <- (choose(4,1) * choose(13,5)) / choose(52,5)

#b)
#prob de a obtine o pereche
#prob empirica
n = 10^6
carti <- cards()
test <- replicate(n, 
                  
                  
                  {
                    indici <- sample(1:52, 5, FALSE)
                    extragere <- carti[indici,]
                    sol = length(unique(extragere$rank)) == 4
                  }
                  
)
prob_emp <- sum(test)/n

#prob teoretica
prob1 <- choose(4,2) * choose(13,1) * choose(12, 3) * choose(4, 1)^3 /choose(52,5)
prob2 <- choose(4,2) * choose(13,1) * choose(12, 3) * choose(4, 1) /choose(52,5)

#nu stim care dintre prob1 si prob2 dau probabilitatea adevarata si vrem sa validam una dintre ele cu prob empirica


#folosirea functiei unique
#x <- c(3:5, 11:8, 8 + 0:5)
#(ux <- unique(x))
#(u2 <- unique(x, fromLast = TRUE)) 

