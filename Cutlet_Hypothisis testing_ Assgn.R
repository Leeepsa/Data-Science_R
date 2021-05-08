

##Load the data or Import the cutlet data set in global environment 
Cutlets <- read.csv("E:\\Excel-R Assignments & Other Data\\Assignment\\Hypothesis Testing\\Cutlets.csv")

# Hypothesis Testing for Cutlets data 
# H0: muA-muB = 0 , Ha: muA-muB != 0

#Extracting data from Cutlets data set for individual two units 
unit_A <- c(Cutlets$Unit.A)
unit_A

unit_B <- c(Cutlets$Unit.B)
unit_B

# Conducting t-test for getiing t value   
mu <- mean(unit_A)-mean(unit_B)
mu
cutlet_t_value <- t.test(unit_A,unit_B, alternative = "two.sided",conf.level = 0.95)
cutlet_t_value 

#Find the P value 
p <- 2*pt(1.4445,66.029)
p

# As per above calculation we have recieved p value 1.8466 which is greater than 0.005 
# we can not reject null hypothesis or 98% probabilty is right for not rejecting null hypothesis.  
# So there is no diference between unit_A & unit_B of cutlet dataset as per p value. 



#Visualizations for measuring difference between Two sample Unit_A & Unit_B. 
############## For Unit_A from Cutlet data set 
plot(unit_A)
barplot(unit_A,main = 'cutlet_size', ylab = 'number of cutlets')
boxplot(unit_A)
hist(unit_A,main = 'cutlet_size', xlab = 'diameter', ylab = 'number of cutlets')


# As per plot & barplot visualization there is not speacific pattern in Unit_A sample 
# of dataset or data distributed is symmetric. 
# As per boxplox plot visualization shows that there is no outlair in Unit_A sample of 
# data set.
# As per histogram shows that data skweness is neither postive nor negative, 
# Cutlet daimater is higher between the intervall of 6.8 to 7 & 7.2 to 7.4 daimeter size.    



######## For Unit_B from Cutlet data set 
plot(unit_B)
barplot(unit_B,main = 'cutlet_size', ylab = 'number of cutlets' )
boxplot(unit_B)
hist(unit_B,main = 'cutlet_size', xlab = 'diameter', ylab = 'number of cutlets')

# As per plot & barplot visualization there is not speacific pattern in Unit_B sample 
# of dataset or data distributed is symmetric. 
# As per boxplox plot visualization shows that there is 1 outlair(6.0380) in lower extreme 
# outlier of Unit_B sample of Cutlet data set.
# As per histogram shows that data skweness is negative, 
# Cutlet daimater is higher between the intervall of 6.8 to 7 & 7.2 to 7.4 daimeter size.  


