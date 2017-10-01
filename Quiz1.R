#Use the Week 1 Quiz Data Set to answer questions 11-20.
#In the dataset provided for this Quiz, what are the column names of the dataset?
hw <- read.csv("hw1_data.csv")


#Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
hw[1:2,]

#How many observations (i.e. rows) are in this data frame?
rowSums(hw)

#Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
tail(hw,2)


#What is the value of Ozone in the 47th row?
hw$Ozone[47]


#How many missing values are in the Ozone column of this data frame?
sum(is.na(hw$Ozone))


#What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
mean(hw$Ozone, na.rm = TRUE)


#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. 
#What is the mean of Solar.R in this subset?
mean(hw[which(hw$Ozone >31 & hw$Temp > 90),]$Solar.R)


#What is the mean of "Temp" when "Month" is equal to 6?
mean(hw[hw$Month == 6,]$Temp)

#What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
max(hw[hw$Month == 5,]$Ozone, na.rm = TRUE)