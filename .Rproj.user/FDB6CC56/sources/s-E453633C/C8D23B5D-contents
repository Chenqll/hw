# Instructions:
# Save this file as Day1Lab_<<YourFullName>>.R
# Your Name: 

# Exercise -1
# Level-1
# 1.1. Create a vector of integers 1 to 10. Print the data from position 3 to 7.
x1_1=1:10
print(x1_1[3:7])

# 1.2. From the above filter out all the even numbers. [Hint: ?which; ?subset]
x1_2=which(x1_1%%2==0)


# 1.3. Create a vector of odd integers from 1 to 20
x1_3=which(x1_3%%2==1)


# 1.4. Create a vector of numbers from 1 to 50 with a separation of 1.5 units. 
x1_4=seq(1,50,by=0.5)


# 1.5. Create 2 vectors of integers 1 to 5 each and merge them into one 
# single vector. Does this remove duplicates?

temp1=1:5
temp2=1:5
x1_5=c(temp1,temp2)
# No,it doesn't


# 1.6. How to get the unique elements from above merged vector?
x1_6=unique(x1_5)


# 1.7. What is the data type of NA?

# 1.8. Guess the output. 
#   1. seq(5)
#   2. Repeat command: rep(c(1,4), 4)  and rep(c(1,4), each=4)

#################
#  Answer
#################
# > seq(5)
# [1] 1 2 3 4 5
# > rep(c(1,4), 4)
# [1] 1 4 1 4 1 4 1 4
# > rep(c(1,4), each=4)
# [1] 1 1 1 1 4 4 4 4



# Exercise -2
# Level-1
# 2.1. How is a list different from an atomic vector?

# 2.2 Guess the output: 
# x = list(1:4, "a", TRUE, list(c('hello', 'world!')))
# y = c(1:4, "a", TRUE, list(c('hello', 'world!'))) 
# x == y

#################
#  Answer:
#  > x == y
#  Error in x == y : comparison of these types is not implemented
#  In addition: Warning message:
#  In x == y : longer object length is not a multiple of shorter object length
#################



# 2.3.What does the function unlist() do?

#################
#  Answer:
#   Given a list structure x, unlist simplifies it to produce a vector which contains all the atomic components which occur in x.
#################


# Exercise-3
# level-1
# 3.1. How to convert a row vector of 1:10 to matrix mat shown in 
# the figure ?
tmp1=1:10
x3_1=matrix(tmp1,2,5)


# 3.2. x = list(1:10). How to convert it to matrix mat shown in 
# figure? 

tmp2=list(1:10)
x3_2=matrix(unlist(tmp2),2,5)


# 3.3. How do you transpose matrix mat create in question 2?
x3_3=t(x3_2)

# Exercise-4
# level-1
# 4.1. Learn the utility of the following functions by executing
# them on data frame: class_modified
stu_id=101:106
age=sample(15:20,replace = TRUE,size=6)
gender=sample(c("M","F"),TRUE,size=6)
height=sample(150:190,replace = TRUE,size=6)
nationality=sample(c("European","Asian","Janpanse"),TRUE,size=6)
class_modified=data.frame(stu_id,gender,age,height,nationality)
summary(class_modified)
head(class_modified)
tail(class_modified)
as.matrix(class_modified)


# Exercise-5
# level-1


# Exercise-6
# level-1



# Exercise-7
#level-1


