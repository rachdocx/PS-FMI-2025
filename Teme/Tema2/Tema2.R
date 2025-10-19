library(prob)

#1 moneda
m5<-tosscoin(5,makespace=TRUE)

#a
Prob(m5,toss1=="H"& toss2=="H"& toss3=="T"& toss4=="H"& toss5=="H")
#b
Prob(m5,toss1=="T" & toss2=="H"& toss3=="H"& toss4=="H" &toss5=="T")
#c
Prob(m5,rowSums(m5=="H")>rowSums(m5=="T"))


#2 urna
library(prob)
urn<-rep(c("R","G","B"),c(5,3,8))
#a
S<-urnsamples(urn,size=3,replace=FALSE,ordered=TRUE)
S<-probspace(S)
Prob(S,apply(S[,1:3],1,function(x)length(unique(x)))==3)
S<-urnsamples(urn,size=3,replace=TRUE,ordered=TRUE)
S<-probspace(S)
Prob(S,apply(S[,1:3],1,function(x)length(unique(x)))==3)
#b
  S<-urnsamples(urn,size=3,replace=FALSE,ordered=TRUE)
S<-probspace(S)
Prob(S,rowSums(S[,1:3]=="R")>rowSums(S[,1:3]=="B"))
#c
S<-urnsamples(urn,size=3,replace=FALSE,ordered=TRUE)
 S<-probspace(S)
Prob(S,rowSums(S[,1:3]=="G")==3)
#d
  S<-urnsamples(urn,size=3,replace=FALSE,ordered=TRUE)
  S<-probspace(S)
  Prob(S,(S$X1=="R")&(S$X2==S$X3))
