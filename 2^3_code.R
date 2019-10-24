library(readxl)
fact_data <- read_excel("C:/Users/Jeevan/Desktop/Christ University/Statistics/DOE/2^3_data.xlsx")
View(fact_data)
attach(fact_data)
boxplot(Yield~Factorn*Factorp*Factork,data = fact_data,xlab = "Nitrogen",
        ylab = "Yield",col = c("#00AFBB","#E7B800"))
boxplot(Yield~Factorn,data = fact_data,col = c("#00AFBB","#E7B800"),xlab = "Nitrogen",
        ylab = "Yield")
model <- aov(Yield~Factorn+Factorp+Factork+Factorn*Factorp+Factorn*Factork+Factorp*Factork+Factorn*Factorp*Factork)
summary(model)
plot(model)
# there is no significant difference between the yield and the factors and hence we fail 
# to reject the nyull hypothesis