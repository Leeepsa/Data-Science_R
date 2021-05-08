

##### Prepare a classification model using SVM for salary data #########

##Load the data

salary_train <- read.csv("E:\\Excel-R Assignments & Other Data\\Assignment\\Support Vector Machines\\SalaryData_Train.csv")
str(salary_train)

salary_test <- read.csv("E:\\Excel-R Assignments & Other Data\\Assignment\\Support Vector Machines\\SalaryData_Test.csv")
str(salary_test)

##Convert all the character varaibales to factor
#For training data 
salary_train$workclass <- as.factor(salary_train$workclass)
salary_train$education <- as.factor(salary_train$education)
salary_train$maritalstatus <- as.factor(salary_train$maritalstatus)
salary_train$occupation <- as.factor(salary_train$occupation)
salary_train$relationship <- as.factor(salary_train$relationship)
salary_train$race <- as.factor(salary_train$race)
salary_train$sex <- as.factor(salary_train$sex)
salary_train$native <- as.factor(salary_train$native)
salary_train$Salary <- as.factor(salary_train$Salary)




#For testing data
salary_test$workclass <- as.factor(salary_test$workclass)
salary_test$education <- as.factor(salary_test$education)
salary_test$maritalstatus <- as.factor(salary_test$maritalstatus)
salary_test$occupation <- as.factor(salary_test$occupation)
salary_test$relationship <- as.factor(salary_test$relationship )
salary_test$race <- as.factor(salary_test$race)
salary_test$sex <- as.factor(salary_test$sex)
salary_test$native <- as.factor(salary_test$native)
salary_test$Salary <- as.factor(salary_test$Salary)



#Begin by training a simple linear SVM
install.packages("kernlab")
library(kernlab)
salary_classifier <- ksvm(salary_train$Salary ~ ., data = salary_train,
                             kernel = "vanilladot")


## Evaluating model performance ----
# predictions on testing dataset
salary_predictions <- predict(salary_classifier, salary_test)
head(salary_predictions)
#table(salary_predictions, salary_test$Salary )
agreement <- salary_predictions == salary_test$Salary
prop.table(table(agreement))
## Improving model performance ----
salary_classifier_rdfdot <- ksvm(salary_train$Salary ~ ., 
                                    data = salary_train, 
                                    kernel = "rbfdot")
salary_predictions_rbf <- predict(salary_classifier_rdfdot, salary_test)
head(salary_predictions_rbf)
#table(burn_area_predictions_rbf, forest_fire_test$size_catagory )
agreement_rbf <- salary_predictions_rbf == salary_test$Salary
table(agreement_rbf)
prop.table(table(agreement_rbf))




