# Q2

data_q2=read.csv('ds_salaries.csv')


##########################
# Hypothesis:

# Null Hypothesis: The typical full-time Data Scientist’s salary in a large company is USD 135,000
# Alternative Hypothesis: The typical full-time Data Scientist’s salary in a large company is not equal to  USD135,000
##########################

## extract data of full time data scientist salary in large company

data_q2_2=data_q2[which((data_q2$employment_type == 'FT') & (data_q2$job_title=='Data Scientist') & (data_q2$company_size == 'L') ),]

## t-test
t.test(data_q2_2$salary_in_usd,mu=135000)
#######################
# result
#######################

# One Sample t-test

# data:  data_q2_2$salary_in_usd
# t = -0.39764, df = 13, p-value = 0.6973
# alternative hypothesis: true mean is not equal to 135000
# 95 percent confidence interval:
#   89899.29 166078.85
# sample estimates:
#   mean of x 
# 127989.1 


# p-value = 0.6973 > 0.025
# Accept Null Hypothesis


#######################
# Conclusion
#######################

# The typical full-time Data Scientist’s salary in a large company is equal to  USD135,000




# Q3.1
data_q3=read.csv('ds_salaries.csv')
tapply(data_q3$salary_in_usd,data_q3$company_size,summary)
anova_res_q3=aov(salary_in_usd~company_size,data = data_q3)
summary(anova_res_q3)

##########################
# Hypothesis:
# Null Hypothesis: The mean salary (in USD) for data science jobs, regardless of employment type and job title, NOT differs by company size
# Alternative Hypothesis:The mean salary (in USD) for data science jobs, regardless of employment type and job title, differs by company size
##########################


#######################
# result
#######################

# Df    Sum Sq   Mean Sq F value Pr(>F)  
# company_size   2 1.627e+10 8.135e+09   2.644 0.0753 .
# Residuals    117 3.600e+11 3.077e+09                 
# ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1


# P=0.0753 > 0.025 
# Accept NULL Hypothesis


#######################
# Conclusion
#######################
# The mean salary (in USD) for data science jobs, regardless of employment type and job title, NOT differs by company size

# Q3.2
anova_res_q3_2=aov(salary_in_usd~company_size*employment_type,data = data_q3)
summary(anova_res_q3_2)

#######################
# result
#######################

# Df    Sum Sq   Mean Sq F value Pr(>F)  
# company_size                   2 1.627e+10 8.135e+09   2.683 0.0727 .
# employment_type                2 1.270e+10 6.349e+09   2.094 0.1279  
# company_size:employment_type   1 1.635e+09 1.635e+09   0.539 0.4643  
# Residuals                    114 3.456e+11 3.032e+09                 
# ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# P=0.4643 > 0.025
# Accept NULL Hypothesis

#######################
# Conclusion
#######################
# There is notan interaction effect between company size and employment type
