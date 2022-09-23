# titanic3 datasets
t=read.csv('titanic3.csv',stringsAsFactors = TRUE)


t2=read.csv('titanic3.csv')


t$pclass=factor(t$pclass)
t$survived=factor(t$survived)


table1=table(t$pclass)

##############################
# Origin method
##############################

# 1.barplot
barplot(table1,names.arg = c('First','Second','Third'),
        main = 'Passenger Class',
        xlab = 'Passenger Class',
        ylab = 'frequence',
        col = rainbow(length(table1)))


# 2.boxplot

tmp1==t$age~t$gender
boxplot(tmp1,xlab = 'Gender',ylab = 'Age',col=rainbow(length(tmp1)))

boxplot(tmp1,xlab = 'Gender',ylab = 'Age',col=c('yellow','blue'))

# histogram

binVector=seq(min(t$age,na.rm = T),max(t$age,na.rm = T),length.out = 11)

hist(t$age,breaks = binVector,
     main = 'Age His',
     xlab = 'age',
     ylab = 'passenage count',
     col = c('green'))


##############################
# ggplot
##############################

ggplot(t,aes(x=pclass))+geom_bar()
ggplot(t,aes(x=pclass,color=gender,fill=gender))+geom_bar()+theme_bw()


ggplot(t,aes(gender,age,color=gender,fill=gender))+
  geom_boxplot()+
  theme_bw()+
  scale_color_manual(values = c('black','black'))+
  scale_fill_manual(values = c('red','blue'))+
  labs(title = 'Gender vs age')+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(legend.position = 'top')

ggplot(t,aes(pclass,age,color=gender,fill=gender))+
  geom_boxplot(outlier.colour = 'dark orange',outlier.shape = 4,notch = TRUE)+
  theme_bw()+
  scale_color_manual(values = c('black','black'))+
  scale_fill_manual(values = c('red','blue'))+
  labs(title = 'Gender vs age')+
  theme(plot.title = element_text(hjust = 0.01))


# 3.
ggplot(t,aes(age))+geom_histogram()+
  theme_bw()+
  labs(x='age',y='Pas Count')

ggplot(t,aes(age,color=gender,fill=gender))+geom_histogram(bins = 10)+
  theme_bw()+
  labs(x='age',y='Pas Count',title = 'Age His')+
  theme(plot.title = element_text(hjust = 0.5))+
  scale_color_manual(values = c('black','black'))


ggplot(t,aes(age,color=gender,fill=gender))+geom_histogram(bins = 10,position = 'dodge')+
  theme_bw()+
  labs(x='age',y='Pas Count',title = 'Age His')+
  theme(plot.title = element_text(hjust = 0.5))+
  scale_color_manual(values = c('black','black'))


##############
# qustion
##############

# 1.Which gender has more survival? 
ggplot(t,aes(gender,fill=survived))+geom_bar()

# 2.Which passenger class has more survival? 
ggplot(t,aes(pclass,fill=survived))+geom_bar()

# 3.What is the distribution of survival across the passenger class and gender? 
ggplot(t,aes(gender,fill=survived))+geom_bar()+facet_grid(~pclass)+labs(title = 'passenger distribution by pclass & gender')



# mtcars datasets

mtcars=read.csv('mtcars.csv')
attach(mtcars)

# wt=car weight;mpg=miles per gallon
plot(wt,mpg)


# lty=line type;lwd=line width
abline(lm(mpg~wt),col='red',lty=3,lwd=2)



#################
# ggplot
#################


# fam=factor(am)
ggplot(mtcars,aes(wt,mpg))+
  labs(color='0=Auto\n 1=Manual')+
  geom_point(aes(color=factor(am)))+
  facet_grid(rows=vars(cyl),cols=vars(gear),margins = TRUE)




##########################
# sample 
#########################

#  1.Randomly select 20 numbers from 1 to 50
tmp1=sample(1:50,20)

# 2. Create a vector called class
# class = c("S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10" )
# Then Randomly select 5 students from the "class" vector.
class = c("S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10" )
tmp_class=sample(class,5)



#########################
# estimate
#########################

# sample mean,stand divation,error mean

total_tmp=sample(20:50,20)
sample_tmp=sample(total_tmp,5)

# mean
mean_total=mean(total_tmp)
mean_sample=mean(sample_tmp)

# stand deviation
sd_total=sd(total_tmp)
sd_sample=sd(sample_tmp)

# sem
se=sd_sample/sqrt(5)



########################
# confidential Limits
########################

# sigma Konwn

sigma=0.03
xbar=4.995
n=40
CI=0.95

Zvalue=qnorm(CI+0.025)

tmp_se=sigma/sqrt(n)
tmp_lower=xbar-Zvalue*tmp_se
tmp_upper=xbar+Zvalue*tmp_se


# sigma UnKONWN

s4=c(21,26,28,20)
t.test(s4)

s8=c(21,26,28,20,28,33,26,24)
t.test(s8)


sigma=25
e=5
z1=qnorm(0.995)
n1=((sigma*z1)/e)^2
ceiling(n1)

z2=qnorm(0.975)
n2=((sigma*z2)/e)^2
ceiling(n2)

####
bondFunds=read.csv('BondFunds.csv')
attach(bondFunds)

qqnorm(Return2009,col='blue',xlab='Z value',ylab='Return2009')
qqline(Return2009,col='red',lwd=2)

hist(Return2009,breaks = 20,prob='True')
lines(density(Return2009),col='blue')
lines(density(Return2009,adjust = 2),col='red')

