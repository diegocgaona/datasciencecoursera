x <- 1:20
print(x) 
msg <- "hello"
matrix0 <- matrix(1:10, nrow = 5, ncol = 2)

#Quiz 18
mydata = read.csv("hw1_data.csv")
okdata <- na.omit(mydata)
quiz18 <- subset(okdata, Ozone > 31 & Temp > 90)
quiz18solar <- quiz18$Solar.R
mean(quiz18solar)

#Quiz19
quiz19 <- subset(mydata, Month == 6)
mean(quiz19$Temp)

#Quiz20
quiz20 <- subset(mydata, Month == 5)
max(quiz20$Ozone, na.rm=TRUE)