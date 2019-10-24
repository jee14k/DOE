Data_11th_Jun <- read.csv("C:/Users/Jeevan/Desktop/Christ University/Statistics/Data_11th_Jun.csv")
Data_11th_Jun
str(Data_11th_Jun)
fit.aov<-aov(TREAT~GROUP,data = Data_11th_Jun)
summary(fit.aov)