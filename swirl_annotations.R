#Swirl lessons
my_vector <- 1:20 # when use : don't need the c()
class() # show the class of the variable
ints <- sample(10) #The vector `ints` is a random sampling of integers from 1 to 10 without replacement.
dim() # verify the size of the data, like columns and rows
nrow() # number of rows (observations)
ncol() # number of columns (variables)
object.size() # to know how much size the dataset is occupying in memory
head(data,10) # see the first 6 rows, or when specified show the number of rows on the second argument.
tail(data,10) # the same of head, but works from the end of the table
summary() # get the min, 1st quart, median, mean, 3rd quart, max values and other info depending on the class.
table(flags$landmass) # count number of each value have in the column landmass
str() # info about a dataset, the number of observations and variables, the classes and a preview of content.

#lesson 4 Vectors
#Use of paste()
paste(my_name, collapse=" ") #my_name is a vector with 4 string values, collapse concatenate then with a space (or any char between "")
paste(LETTERS, 1:4, sep="-") #sep will make a separator between the vectors junctions

#Lesson 5 NA
y <- rnorm(1000) #1000 draws from a standard normal distribution
z <- rep(NA,1000) #repeat NA 1000 times
my_data <- sample(c(y,z),100) #create a sample of size 100 from the vectors y,z


#my_data == NA yields the same results as | is.na() - not the same, but is interesting

#Lesson 6 Subsetting Vectors
x[1:10] #view the elements 1 until 10 of the vector x
x[!is.na(x) & x>0] # subset al the true values in x (no na) there are greater than 0
x[c(3,5,7)] # subset the values 3, 5, 7 of the vector x
x[c(-2,-10)] # subset the all the values of x, except elements 2,10
x[-c(2,10)] # the same result of the expression above
vect <- c(foo = 11, bar = 2, norf = NA) # create a vector with names
names(vect2) <- c("foo","bar","norf") # give names to a previous created vector without name
identical(vect,vect2) # chek if the vectors are identical
vect["bar"] # subset the element named bar from the vector vect
vect[c("foo","bar")] # subset the elements foo and bar

#Lesson 7 Matrix and Data Frames
cbind(patients,my_matrix) # with patients being strings and my_matrix (with rows e collumns), patients will be a column (the first) with the strings
my_data <- data.frame(patients, my_matrix) # create a data frame, like above, but DF can store different type of data
colnames(my_data) <- cnames # give the collumns of a DF names (cname is a vector with strings)

#Lesson 8 Logic
#the diference between operators & and && are & evaluate all the vector and && evaluate only the first element of the vector
#identical() will return TRUE if the two R objects passed to it as arguments are identical
xor(5==6,!FALSE) #evaluate to true because 1 argument is TRUE and another is FALSE
#which() function takes a logical vector as an argument and returns the indices of the vector that are TRUE
#The any() function will return TRUE if one or more of the elements in the logical vector is TRUE
#all() function will return TRUE if every element in the logical vector is TRUE

#Lesson 9 - lapply and sapply - sapply is for vectors of length 1 and lapply always return a list
unique() # function returns a vector with all duplicate elements removed.
lapply(unique_vals, function(elem) elem[2]) # will return a list containing the second item from each element
viewinfo() #show documentation about a dataset. There as no need of another argument.
tapply(flags$population,flags$landmass,summary) # example, get the summary of the population for each landmass

#Lesson 10 - Simulation
sample(c(0,1),100,replace=TRUE,prob=c(0.3,0.7)) #produce 100 flips of an unfair coin
rbinom(100,size=1,prob=0.7) # The same above, but with rbinom
rbinom(1,size=100,prob=0.7) # shows the number of success (1) in the simulation
replicate(100, rpois(5, 10)) # will repeat the operation 100 times and store the result.
colMeans(data) # show the mean of each collumn
hist(data) # show a histogram of the data

