mc_data=read.csv('McDonald.csv',header = TRUE)
t.test(mc_data$Time,alternative = 'less',mu=174.22)



## ANOVA
# ONE-WAY ANOVA

data_golf=read.csv('golfBall.csv')
tapply(data_golf$distance,data_golf$design_typ,summary)
anova_res=aov(distance~design_typ,data = data_golf)
summary(anova_res)
TukeyHSD(anova_res)

data_wm=read.csv('WashingMachine.csv')
data_wm$det_brand=factor(data_wm$det_brand)
data_wm$cycle_time=factor(data_wm$cycle_time)