# dataframe

stu_id=101:105
age=sample(15:20,replace = TRUE,size=5)
gender=sample(c("M","F"),TRUE,size=5)
class_data=data.frame(stu_id,gender,age)

str(class_data)

# access col
class_data$age


class(class_data$age)
# integer

# table to count
table(class_data$age)

table(class_data$gender,class_data$age)

#names
names(class_data)

# summary
summary(class_data)

# attribute
attributes(class_data)
attributes(stu_id)

# how to add col named 'discount' to dataframe,if id is even,discount=10%,else 5%
class_data$discount=0

class_data$discount=ifelse(class_data$stu_id %% 2 == 0,0.1,0.05)

# add col based on previous col
class_data$discount=ifelse(class_data$stu_id %% 2 == 0,0.1,0.05)




##############################
# csv
##############################

airline_data_baseR=read.csv('airline_delay_causes_data.csv',na.strings = c(-1,'?',999999))
write.csv(airline_data_baseR,'aaa.csv')


############
# apply
############
aVec=c(1:10)
aMatrix=matrix(aVec,nrow=2)
aMatrix=apply(aMatrix,1,mean)