############################################################
#   Taller de Introducción a R - Addins con esquisse
#   Autor: Jessica Daniela Ocaña Falcón
#   Descripción: Crear gráficos fácilmente con Addins
############################################################

# ----------------------------------------------------------
# 1. ¿Qué es un Addin?
# ----------------------------------------------------------

# En RStudio, un Addin es una pequeña aplicación que aparece
# en el menú "Addins". Permite usar funciones de R de manera
# interactiva, con botones y menús, en lugar de escribir
# todo el código manualmente.
#
# El Addin más popular para gráficos es {esquisse}.

# ----------------------------------------------------------
# 2. Instalación del paquete esquisse
# ----------------------------------------------------------

# Si aún no lo tienes instalado:
# install.packages("esquisse")

library(esquisse)

# ----------------------------------------------------------
# 3. Primeros pasos con esquisse
# ----------------------------------------------------------

# Se puede abrir desde:
# - Menú superior en RStudio: Addins -> Esquisse
# - O directamente con la función:
esquisser()

# -> Se abrirá una ventana interactiva
# Allí puedes:
#   - Seleccionar un dataset (ej: iris, mtcars, airquality).
#   - Arrastrar variables al eje X, Y, color, etc.
#   - Elegir tipo de gráfico (barras, dispersión, boxplot).
#   - Ajustar etiquetas, títulos, escalas, colores.
#   - Copiar el código ggplot2 que se genera automáticamente.

# ----------------------------------------------------------
# 4. Ejemplo con iris
# ----------------------------------------------------------

# Cargamos un dataset integrado en R
data(iris)

# Lo abrimos en esquisse
esquisser(iris)

# Ejercicio para los estudiantes:
#   1. Arrastrar Sepal.Length al eje X
#   2. Arrastrar Sepal.Width al eje Y
#   3. Usar Species como color
#   4. Cambiar el tipo de gráfico a "scatter plot"
#   5. Copiar el código ggplot2 que aparece

# ----------------------------------------------------------
# 5. Ejemplo con mtcars
# ----------------------------------------------------------

# Otro dataset muy usado
data(mtcars)

# Abrimos el addin
esquisser(mtcars)

# Ejercicio para los estudiantes:
#   1. Colocar wt (peso del auto) en X
#   2. Colocar mpg (rendimiento km/lt) en Y
#   3. Usar cyl (número de cilindros) como color
#   4. Probar distintos tipos de gráficos
#   5. Copiar el código generado y pegarlo en el script

library(ggplot2)

ggplot(mtcars) +
  aes(x = wt, y = mpg, colour = cyl) +
  geom_line() +
  scale_color_gradient() +
  theme_minimal()


# ----------------------------------------------------------
# 6. Ventajas didácticas de esquisse
# ----------------------------------------------------------

# - Ideal para principiantes: arrastrar y soltar en llo que aprendes a usar ggplot2
# - El código que genera se puede estudiar y modificar.
# - Ayuda a entender qué hace cada argumento en ggplot().
# - Se pueden guardar gráficos y usarlos luego en reportes.

############################################################
#   Fin del script
############################################################

