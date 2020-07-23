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

##DATOS TABULARES (Tabular Data)
#file, el nombre del archivo o a la conexion
#header, logical indicating if the file has a header line
#sep, a string indicating how the columns are separated
#colClasses, a character vector indicating the class of each column in the dataset
#nrows, the number of rows in the dataset
#comment.char, a character string indicating the comment character
#skip, the number of lines to skip from the beginning
#stringsAsFactors, should character variables be coded as factors.

#data = read.table("foo.txt")

##LEER TABLAS GRADES (reading large tables)

initial = read.table("dataset.txt", nrows = 100)
classes = sapply(initial, classes)
tabAll = read.table("dataset.txt",
                    colClasses = classes)

##FORMATOS DE DATOS TEXTUALES
#Dumping and dputing are useful because the resulting textual format is edit-able, and
#in the case of corruption, potentially recoverable
#dput(variable) unico objetos dget
#dump() multiple objetos

##INTERFACES CON EL MUNDO EXTERIOR
#file, abre una conexion a un archivo
#gzfile, abre una conexion a un arhivo comprimido con gzip
#bzfile, abre una conexion a un archivo comprimido con bxip2
#url, abre una conexion a una pagina web

#ejemplo
str(file)
#function(desciption = "", open = "", blocking = TRUE,
#         encoding = getOption("encoding"))
#description es el nombre del archivo
#open es un indicativo de codigo
# r solo lectura
# w escritura y inicializa un nuevo archivo
# a appending
# rb, wb, ab lectura,escritura y appending en codigo binario.


##SUBSETING - BASICO
#Existen dos tipos de subseting numerico y logico
#ejemplo

x = c("a","b","c","c", "d", "e")
#Subsenting obteniendo el elemento 3
x[3]
x[1:4]
#Elmentos mayores a "a"
x[x > "a"]
#Subsetting logico
u = x > "a"
u

#Subsetting de matrices
x = matrix(1:6, 2,3)
x
x[2,3]
x[1, ]
x[2, ]
x[2, , drop = FALSE]

#Subsetting coicidencia parcial
x = list(aardvark = 1:5)
x$aardvark
x[["a"]]
x[["a", exact = FALSE]]

#Subsetting eliminando valores perdidos

#usando is.na
x = c(1,2,NA,4,NA,5)
bad = is.na(x)
x[!bad]

#Varios vectores y utilizar subsetting
x = c(1,2,NA,4,NA,5)
y = c("a","b", NA, "d", NA, "f")
good = complete.cases(x, y)
good
x[good]
y[good]

#eliminar datos datafram
airquality[1:2, ]
airquality[1:6, ]
good = complete.cases(airquality)
good = complete.cases(airquality$Ozone)
dim(good)
airquality$Ozone[good, ][1, ]
dim(airquality)
airquality[152:153, ]
airquality[47, ]

bad = is.na(airquality$Ozone)
c = !bad
airquality[c]
sapply(airquality, function(x) sum(is.na(x)))

datos <- airquality[!is.na(airquality$Ozone),]
mean(datos)
##Operaciones vectorizadas
#operaciones mas eficientes vector
x = 1:4; y = 2:3
x+y
x >2
x == 8
x * y
x / y

#Operaciones entre matrices
x = matrix(1:4, 2, 2); y = matrix(rep(10, 4), 2, 2)
x * y
x / y
x %*% y #multiplicacion matricial

x = 4L
class(x)

x = c(4, "a", TRUE)
class(x)

x = c(1,3,5); y = c(3,2,10)
rbind(x,y)

v = list(2,"a", "b", TRUE)
v
v[[2]]

x <- c(3, 5, 1, 10, 12, 6)
x<6
x[x>0]<-6
x
a = x[x<6] == 0
a

airquality[1:2, ]
airquality[1:6, ]
good = complete.cases(airquality)
good = complete.cases(airquality$Ozone)
dim(good)
airquality$Ozone[good, ][1, ]
dim(airquality)
airquality[152:153, ]
airquality[47, ]

mean(airquality[, "Ozone"], na.rm = TRUE)
subset(airquality, airquality$Ozone > 31 & airquality$Temp > 90)
mean(subset(airquality$Solar.R, airquality$Ozone > 31 & airquality$Temp > 90))

mean(subset(airquality$Temp, airquality$Month == 6))
subset(airquality$Ozone, airquality$Month == 5)

x <- c(17, 14, 4, 5, 13, 12, 10) 
a = x[x > 10]== 4
a
