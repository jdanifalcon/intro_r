############################################################
# Actividad divertida: Diseñar un cubo en 3D
# Paquete: rgl
############################################################

library(rgl)

# Limpiamos la escena
clear3d()

# Definimos los vértices (cada columna es un punto en 3D)
vertices <- t(rbind(
  c(0, 0, 0), # 1
  c(1, 0, 0), # 2
  c(1, 1, 0), # 3
  c(0, 1, 0), # 4
  c(0, 0, 1), # 5
  c(1, 0, 1), # 6
  c(1, 1, 1), # 7
  c(0, 1, 1)  # 8
))

# Definimos las caras del cubo (cada columna es una cara con 4 vértices)
caras <- t(rbind(
  c(1, 2, 3, 4), # base inferior
  c(5, 6, 7, 8), # base superior
  c(1, 2, 6, 5), # lado 1
  c(2, 3, 7, 6), # lado 2
  c(3, 4, 8, 7), # lado 3
  c(4, 1, 5, 8)  # lado 4
))

# Construimos el objeto 3D
cubo <- qmesh3d(vertices = vertices, indices = caras)

# Dibujamos el cubo en 3D
shade3d(cubo, color = "pink", alpha = 0.7)
wire3d(cubo, color = "black")

############################################################
# Fin de la actividad
############################################################
