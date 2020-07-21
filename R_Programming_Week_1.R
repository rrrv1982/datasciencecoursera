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

##VALORES PERDIDOS (Missing values)
x = c(1, 2, NA, 10, 3)
is.na(x)
is.nan(x)
x = c(1, 2, NA, NaN, 3)
is.na(x)
is.nan(x)


##DATAFRAMES
#Se pueden llamar con la funcion read.table o read.csv
x = data.frame(foo = 1:4, bar = c(T,T,T,F))
x
nrow(x)
ncol(x)

##ATRIBUTO DE NOMBRES (Names attribute)
#Nombres en un vector
y = 1:3
names(y)
names(y) = c("foo", "bar", "norf")
y
names(y)

#nombres en una lista
y = list(a= 1, b=2, c=3)
y

#nombres en una matriz
m = matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) = list(c("a", "b"), c("c", "d"))
m
