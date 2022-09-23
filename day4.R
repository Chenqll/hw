car=read.csv('car.csv')

## visualize data ggplot

dim(car)
head(car)

library(ggplot2)
ggplot(car,aes(x=Age,y=Price))+
  geom_point()+
  geom_smooth(data=car,formula=y~x,method='lm')

## correlation analysis
cor(car$Age,car$Price,method = "pearson")
# [1] -0.8765905 - strong negetive relationship 


# NULL Hypothesis : Correlation is equal to 0
# Alternative Hypothesis : Not equal to 0
cor.test(car$Age,car$Price,method = "pearson")
# 	Pearson's product-moment correlation

# data:  car$Age and car$Price
# t = -68.978, df = 1434, p-value < 2.2e-16
# alternative hypothesis: true correlation is not equal to 0
# 95 percent confidence interval:
#   -0.8880508 -0.8640415
# sample estimates:
#   cor 
# -0.8765905 

# The p-value of the test is less than ??= 0.05. We can conclude 
# that car age and resale price are significantly correlated with 
# a correlation coefficient of -0.87 at 95% confidence level.



fit=lm(car)
# Call:
#   lm(formula = car)

# Coefficients:
#   (Intercept)          Age  
# 20294.1       -170.9  

# LR result: y = -170.9 X + 20294.1

## Hypothesis Testing 
# NULL Hypothesis : Correlation is equal to 0 means alpha = 0
# Alternative Hypothesis : Not equal to 0
summary(fit)
# Call:
# lm(formula = car)

# Residuals:
#   Min      1Q  Median      3Q     Max 
# -8423.0  -997.4   -24.6   878.5 12889.7 

# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)    
# (Intercept) 20294.059    146.097  138.91   <2e-16 ***
#  Age          -170.934      2.478  -68.98   <2e-16 ***
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

# Residual standard error: 1746 on 1434 degrees of freedom
# Multiple R-squared:  0.7684,	Adjusted R-squared:  0.7682 
# F-statistic:  4758 on 1 and 1434 DF,  p-value: < 2.2e-16

################
# conclusion
################
# p <2e-16 < 0.025  Reject H0




omnimeats=read.csv("OmniMeats.csv")

dim(omnimeats)
head(omnimeats)

model=lm(formula = Sales~Price+Income,data=omnimeats)
summary(model)

cor(omnimeats)
pairs(omnimeats)

new_data=data.frame(Price=9,Income=500)
predict(model,new_data,interval = "predict")






