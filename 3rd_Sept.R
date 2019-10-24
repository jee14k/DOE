library(lsmeans)
data <- read.table(file = "clipboard",header = TRUE)
data
rname <- c(rep("fertilizer1",1),rep("fertilizer2",1),rep("fertilizer3",1),rep("fertilizer4",1),rep("fertilizer5",1))
cname <- c(rep("treatA",5),rep("treatB",5),rep("treatC",5),rep("treatD",5),rep("treatE",5))
seed <- c("A","E","C","B","D","C","B","A","D","E","B","C","D","E","A","D","A","E","C","B","E","D","B","A","C")
freq <- c(42,45,41,56,47,47,54,46,52,49,55,52,57,49,45,51,44,47,50,54,44,50,48,43,46)
mydata <- data.frame(rname,cname,seed,freq)
mydata
matrix(mydata$seed,5,5)
matrix(mydata$freq,5,5)
myfit = lm(freq~rname+cname+seed,mydata)
myfit
str(mydata)
a = anova(myfit)
a
x = lsmeans(myfit,"seed")
pairs(x)
plot(pairs(x))
