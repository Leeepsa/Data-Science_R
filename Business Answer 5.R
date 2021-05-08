

#Answer5.(iv)	
#What is the good measure of the risk involved in a venture of this kind? 
#Compute this measure

A <- business_venture$x
A

B <- business_venture$`P(x)`
B

monetary_outcome <-  A*B
monetary_outcome

expected_monetary_outcome <- -200-100+0+200+600+300
expected_monetary_outcome

mean(A)
sd(A)
barplot(A)
boxplot(A)
hist(A)
