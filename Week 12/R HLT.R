#Using the ggplot in-built data sets in RStudio and the qplot
#function, get your creative juices flowing and create a meaningful
#and impactful data visualization using your preferred data set.

txhousing

qplot(year, listings, data=txhousing, geom = "smooth")

#1. Write an R program to create three vectors a, b, c with 5
#integers. Combine the three vectors to become a 3×5 matrix
#where each column represents a vector. Print the content of
#the matrix. Plot a graph and label correctly.

a = c(1,2,3,4,5)
b = c(6,7,8,9,10)
c = c(11,12,13,14,15)
matrix = cbind(a,b,c)
matrix
dim(matrix)

plot(matrix,type="o")

#2. Write a R program to create a Data frames which contain
#details of 5 employees and display the details. (Name, Age, Role and Length of service).

Name = c("Jon", "Bill", "Maria", "Ben", "Tina")
Age = c(23, 41, 32, 58, 26)
Role = c("HR", "Accountant", "PR", "IT", "Data Analyst")
Length_of_service = c(1,2,3,4,5)
df= data.frame(Name,Age,Role,Length_of_service)
df

#3. Import the GGPLOT 2 library and plot a graph using the qplot
#function. X axis is the sequence of 1:20 and the y axis is the x ^2. 
#Label the graph appropriately. install.packages("ggplot2",dependencies = TRUE)

x = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
xsq= x^2
xsq
df2 = data.frame(x,xsq)
df2

qplot(x,x^2,data=df2,geom = "line" )

#4. Create a simple bar plot of five subjects

barplot(Age,names.arg=Name,xlab="Name",ylab="Age",col="blue",
        main="Ages of Staff",border="red")

#5. Write a R program to take input from the user (name and age) and display the values.

username = readline("Enter your name")
username
userage = readline("Enter your age")
userage

#6. Write a R program to create a sequence of numbers from 20
#to 50 and find the mean of numbers from 20 to 50 and sum
#of numbers.

sequence = seq(from = 20, to = 50, by = 1)
mean(sequence)
sum(sequence)


#7. Write a R program to create a vector which contains 10 random integer values between -50 and +50


random = sample(-50:50, size = 10)
random








