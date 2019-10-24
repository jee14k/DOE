library(agricolae)
str(Data_18th_Jun)
boxplot(Sugar~Group,data = Data_18th_Jun)
model<-aov(Sugar~Group,data= Data_18th_Jun)
summary(model)
out<-LSD.test(model,"Group",p.adj = "bonferroni",alpha=0.01)
out
