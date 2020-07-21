#SEMANA 1 R PROGRAMMING UJH

##MATRICES 
m = matrix(nrow = 2, ncol = 3)
dim(m)
attributes(m)

#Segunda forma crear matrices
m = matrix(1:6, nrow = 2, ncol = 3)
m

#Tercera forma crear matrices
m = 1:10
dim(m) = c(2,5)
m

#Cuarta forma crear matrices
x= 1:3
y= 10:12
cbind(x, y)
rbind(x, y)

##FACTORS DATOS CATEGORICOS
x = factor(c("yes", "yes", "no", "yes","no"))
x
table(x)
unclass(x)

#Orden del nivel (levels)
x = factor(c("yes", "yes", "no", "yes","no"),
           levels = c("yes","no"))
x
