#Final Value
  x <- readline(prompt = "Enter outstanding: ")
fv<- as.numeric(x)

#Principle value
  y <- readline(prompt = "Enter Principal amount: ")
pv<- as.numeric(y)


#Current Months
  z <- readline(prompt = "Enter serviced tenor: ")
n<- as.numeric(z)


#For fixed values, use code snipped below to initialize fv, pv, n
#Final Value
#fv<- 91725
#Principle value
#pv<- 100000
#Current Months
#n= 14

nf0<-((n*pv)/(pv-fv))
nf01<-ceiling(nf0)
nf02<-nf01/12
nf03<-floor(nf02)
#Total Months estimation
nf<-nf03*12


f1<-function(R) pv*((R)^n) -fv
f2<-function(R) pv*((R)^nf)
f3<-function(R) (R^nf)-1
f4<-function(R) (R^n)-1

rate_func2 <- function(R) {return (((pv*((1+R)^n) -fv) - (pv*((1+R)^nf))*(((1+R)^n)-1)/(((1+R)^nf)-1)))}

a=-1
b=2
rate_func2(a)
rate_func2(b)

#Decrement of nf by 0.5 till zero
#Match rate with 5 bases points to standard rates : .00, 0.25, 0.50, .75

uniroot(rate_func2, c(a,b))

my_rate = uniroot(rate_func2, c(a,b))$root
my_rate_final <- (my_rate)*12

#output
#Loan tenor=
nf
#Interest Rate=
my_rate_final*100

