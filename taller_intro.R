###########################################################
# Taller Introductorio a R
# Autor: Jessica Daniela Ocaña Falcón
# Descripción: Script básico para aprender R paso a paso
###########################################################

#----------------------------------------------------------
# 1. Introducción a R como calculadora
#----------------------------------------------------------
# Operaciones aritméticas simples
2 + 3        # suma
5 - 2        # resta
4 * 6        # multiplicación
10 / 3       # división
2^3          # potencia
sqrt(16)     # raíz cuadrada

# Asignación de valores a objetos
x <- 5
y <- 10
x + y        # uso de variables
z <- x * y

#----------------------------------------------------------
# 2. Tipos de datos básicos
#----------------------------------------------------------
# Numérico
num <- 3.14
# Texto (character)
texto <- "Hola R!"
# Lógico (boolean)
logico <- TRUE

# Ver tipo de dato
class(num)
class(texto)
class(logico)

#----------------------------------------------------------
# 3. Vectores y operaciones
#----------------------------------------------------------
# Crear vectores
v1 <- c(1, 2, 3, 4, 5)
v2 <- c(10, 20, 30, 40, 50)

# Operaciones vectoriales
v1 + v2
v1 * 2
mean(v1)     # promedio
sum(v2)      # suma
length(v1)   # longitud

#----------------------------------------------------------
# 4. Estructuras de datos
#----------------------------------------------------------
# Factor (útil para variables categóricas)
colores <- factor(c("rojo", "azul", "rojo", "verde", "azul"))
colores

# Data frame (tabla de datos)
df <- data.frame(
  Nombre = c("Ana", "Luis", "Marta", "Pedro"),
  Edad = c(23, 35, 29, 41),
  Ciudad = c("Madrid", "Sevilla", "Bilbao", "Valencia")
)
df

# Acceso a columnas
df$Nombre
df$Edad

#----------------------------------------------------------
# 5. Importar y explorar datos
#----------------------------------------------------------
# Cargar dataset incorporado en R
data("iris")     # dataset clásico de flores
head(iris)       # primeras filas
summary(iris)    # resumen estadístico
str(iris)        # estructura

#----------------------------------------------------------
# 6. Visualización básica
#----------------------------------------------------------
# Gráfico rápido
plot(iris$Sepal.Length, iris$Sepal.Width,
     main = "Gráfico de Dispersión",
     xlab = "Largo del Sépalo",
     ylab = "Ancho del Sépalo",
     col = "blue", pch = 19)

# Histograma
hist(iris$Petal.Length,
     main = "Histograma de Largo del Pétalo",
     col = "lightgreen")

#----------------------------------------------------------
# 7. Estadística descriptiva
#----------------------------------------------------------
# Media, mediana y desviación estándar
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
sd(iris$Sepal.Length)

# Tablas de frecuencia
table(iris$Species)

###########################################################
# Fin del taller introductorio
###########################################################
