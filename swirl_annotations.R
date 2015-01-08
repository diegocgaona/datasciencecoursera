#Swirl lessons
my_vector <- 1:20 # when use : don't need the c()
class() # show the class of the variable
ints <- sample(10) #The vector `ints` is a random sampling of integers from 1 to 10 without replacement.

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
