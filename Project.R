# 
library("gdata")

Sys.Date()
# Set the working directory
setwd("C:/Users/Deepa/Desktop/CSU/MIS581")

# Load the csv file into dataset 
Total.test <- read.csv("project.csv")

head(Total.test)
print("end")

#statistics (minimum, maximum, mean, median, and standard deviation) 

# test dataset
sd(Total.test$Deaths)
summary(Total.test$Deaths)

#create a histogram of Mortality
Sys.Date()
dev.off()
par(mfrow=c(2,1))

hist.Total.test <- hist(Total.test$Deaths, xlab = "Deaths", ylab = "Frequency", 
                        main="Mortality Count Distribution", sub= Sys.Date(), col="lightblue")
Sys.Date()
hist.Total.test

# Get the number of rows from each dataset
nrow(Total.test)

# In order to combine the datasets - compare the column names
Sys.Date()
colnames(Total.test)

# Density of Deaths from all 3 datasets
Sys.Date()
dis.density.Deaths.test <- density(Total.test$Deaths)
plot(dis.density.Deaths.test, main="Mortality Rate Density",sub= Sys.Date() )
polygon(dis.density.Deaths.test, col="yellow", border="blue",sub= Sys.Date())

# Dataset housing.training.csv, linear regression model using all the explanatory variables 
# and Deaths as the response variable.
Sys.Date()
model <- lm(Total.test$Deaths ~ Gender.Code+Race, data=Total.test)
model
summary(model)

