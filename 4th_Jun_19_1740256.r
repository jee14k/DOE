install.packages("EmsStat")
x<-c(85,86,75,63,68,69,50)
y<-c(55,85,85,70,78,74,75,76)
t.test(x,y)
#1
x<-c(45,53,50,49,52,44,45,48,46,45,49,45)
t.test(x,mu = 51)
#2
A<-c(23,32,38,34,24,19,32,24,32,31,37,25)
B<-c(44,34,22,10,47,37,40,30,42,35,28,21,35,29,27)
t.test(A,B)
#3
F_soil<-c(20,39,14,23,25,28,23,26,22,26,12,17,25)
C_soil<-c(29,30,32,27,25,26,35,18,28,27,35)
t.test(F_soil,C_soil)
#4
BC<-c(6,8,5,4,9,8,5,3,9,7)
AC<-c(7,9,5,8,9,8,7,9,6,8)
t.test(BC,AC,paired = TRUE)
#5
p<-c(45,53,50,49,52,44,45,48,46,45,49,45)
#chisq = test when checking variance for a variable
#ftest = for comparing 2 variances
#ttest = checking means