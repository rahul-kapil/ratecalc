#Model for calculating part disbursed loan
#Scenario: Tenor, Rate, EMI-unavailable
#Loan Type = Home Loan Assumed

a <- readline(prompt = "Enter age: ")
age<- as.numeric(a)
tenor<-max(15,65-age)

R<-.11

