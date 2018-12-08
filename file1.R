
sales= rnorm (10000, mean=80, sd=10)
sales
sales=trunc(sales)
sales
summary(sales)
boxplot(sales)
mean(sales)
median(sales)
hist(sales)
plot(density(sales))
range(sales)

#matrix
m1= matrix(100:123, ncol=2)
m1
colSums(m1)
colMeans(m1)
colnames(m1) =c('a','b')
m1
head(m1)
tail(m1)
#data frame
(sname=paste('student',1:30, sep = '_'))
sname
(marks =trunc(runif(30,50,90)))

(gender = sample(c('m','f'), replace =T,size=30, prob = c(.7,.3)))
dfi = data.frame(sname,marks,gender)  
head(dfi)
dfi

?runif
library(dplyr)
install.packages("dplyr")


dfi %>% group_by(gender) %>% summarise(mean(marks))

dfi %>% group_by(name)
dfi

dfi[(order(dfi$marks, decreasing = T)), c('sname', 'marks')]

dfi %>% select(sname, marks) %>% arrange(desc(marks))

dfi %>% sample_n(3)
dfi %>% sample_frac(.3)


