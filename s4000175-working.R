#Question 1
load('~/Desktop/BE_A1-2.RData')
HDI
dirtydata<-HDI
data<-subset(dirtydata,year=='2017' & (incomegroup=='3'|incomegroup=='4'))
comparisondata<-subset(dirtydata,year=='2017' & (incomegroup=='1'|incomegroup=='2'))
all2017data<-subset(dirtydata,year=='2017')
save(data, file='s4000175-data-final.RData')

#i)
boxplot(all2017data$hdi~all2017data$incomegroup, data = all2017data, xlab = "Income Group",
        ylab = "HDI", main = "Human Development Index Distribution", outline=FALSE)
boxplot(all2017data$growth~all2017data$incomegroup, data = all2017data, xlab = "Income Group",
        ylab = "GDP Growth Rate", main = "GDP Growth Distribution", outline=FALSE)
boxplot(all2017data$inflation~all2017data$incomegroup, data = all2017data, xlab = "Income Group",
        ylab = "Inflation Rate", main = "Inflation Distribution", outline=FALSE)
boxplot(all2017data$gini~all2017data$incomegroup, data = all2017data, xlab = "Income Group",
        ylab = "Gini Coefficient", main = "Gini Coefficient Distribution", outline=FALSE)

#ii)
gdp<-data$gdp
gdpcap<-data$gdpcap
inflation<-data$inflation
options(scipen=999)
summary(gdp)
summary(gdpcap)
summary(inflation)
sd(gdp)
sd(gdpcap)
sd(inflation)

#iii)
rmindia<-subset(data,country!='India')
View(rmindia)
hist(gdp, xlab='GDP', main='Histogram of GDP')
hist(rmindia$gdp, xlab='GDP (excluding India)', main = 'Histogram of GDP (excluding India)')
hist(gdpcap, breaks=50, xlab='GDP per capita', main = 'Histogram of GDP per capita')
hist(inflation, breaks=50, xlab='Inflation', main = 'Histogram of Inflation')

#Question 2
#i)
#HDI:
n<-nrow(data)
df<-n-1
sd<-sd(data$hdi)
xbar<-mean(data$hdi)

alpha<-1-0.05/2
observation = (alpha*sd) + xbar
margin<-(qt(alpha,df))*sd/(sqrt(n))
margin
lower<-xbar-margin
higher<-xbar+margin
lower
higher

#Gini coefficient
sd<-sd(data$gini)
xbar<-mean(data$gini)
alpha<-1-0.05/2
margin<-(qt(alpha,df))*sd/(sqrt(n))
margin
lower<-xbar-margin
higher<-xbar+margin
lower
higher

#iii)
#HDI:
sd<-sd(data$hdi)
xbar<-mean(data$hdi)
alpha<-1-0.01/2
margin<-(qt(alpha,df))*sd/(sqrt(n))
margin
lower<-xbar-margin
higher<-xbar+margin
lower
higher

#Gini coefficient
sd<-sd(data$gini)
xbar<-mean(data$gini)
alpha<-1-0.01/2
margin<-(qt(alpha,df))*sd/(sqrt(n))
margin
lower<-xbar-margin
higher<-xbar+margin
lower
higher

#Question 3
#ii)
#H1 = mu > 0.5 -> upper-tailed test
#H0 = mu =< 0.5
xbar<-mean(data$hdi)
sd<-sd(data$hdi)
n<-nrow(data)
df<-n-1

alpha<-0.05
crit<-(qt(alpha,df,lower.tail = FALSE))
crit
tvalue<-(xbar-0.5)/(sd/(sqrt(n)))
tvalue
tvalue > crit

#iii)
alpha<-0.01
crit<-(qt(alpha,df,lower.tail = FALSE))
tvalue<-(xbar-0.5)/(sd/(sqrt(n)))
crit
tvalue
tvalue > crit






