

############### Perform K-means Clustering for the crime data and identify the number of clusters formed and draw inferences###############

##Load the data 
crime_data <- read.csv("C:\\Users\\KIIT\\Desktop\\assignment2021\\Data Science Assignment_LeepsaMahankud\\Clustering\\crime_data.csv")

##Identigfy the number of clusters 
#Elbow method
install.packages('factoextra')
library(factoextra)
fviz_nbclust(crime_data[,-1], kmeans, method = "wss") +
  labs(subtitle = "Elbow method")

###Cluster algorithm building
km <- kmeans(crime_data[,-1],4) 
km$centers
km$cluster
clust<-data.frame("crime_data"=crime_data[,1],"cluster"=km$cluster)

##Animation
install.packages("animation")
library(animation)
km <- kmeans.ani(crime_data[,-1], 4)


## As per above aloritham we found the maximum four cluster in crime data set & 
## also we can say that  assualt crime rate is more as compare to all other crimes.   
