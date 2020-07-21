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
