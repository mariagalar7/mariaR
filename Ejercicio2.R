#Salario neto y bruto
#Horas extra
#Retenciones
#Horas semanales - 40horas

salario <- function(costehora, horas = 40, retenciones = 0.02) {
  if (horas > 45){
    horasextras = horas - 45
    costeextra = costehora * 1.5
    bruto = 45 * costehora + horasextras*costeextra
    neto = bruto * (1 - retenciones)
  } else {
    bruto = horas * costehora
    neto = bruto * (1 - retenciones)
  }
  return(list("Salario Bruto" = bruto, "Salario Neto" = neto))
}

salario(20, 50, 0.20)


#BUCLES FOR

media <- function(x) {
  resultado <- 0
  for (i in 1:length(x)){
    resultado <- resultado + x[i]
  }
  resultado / length(x)
}

media(1:11)

#BUCLES WHILE

media <- function(x) {
  resultado <- 0
  i <- 1
  while (i <= length(x)){
    resultado <- resultado + x[i]
    i <- i + 1
  }
  resultado / length(x)
}

media(1:11)


#vectorizacion

media <- function(x){
  sum(x) / length(x)
}

media(1:11)


#EJERCICIOS PRACTICOS NUMERO 2 
#ENUNCIADOS

# Ejercicio 1: Definir una Función sin Parámetros
# Enunciado: Define una función llamada saludo que imprima en la consola el mensaje "Hola, bienvenido a R".

saludo <- function() {
  print("Hola, bienvenido a R")
}

saludo()

# Ejercicio 2: Definir una Función con Parámetros y Condicionales
# Enunciado: Crea una función llamada calificar_edad que tome un parámetro numérico llamado edad y muestre en la consola si la persona es "menor de edad" o "mayor de edad".

calificar_edad <- function(edad) {
  if (edad < 18) {
    print("menor de edad")
  }
  else {
    print("mayor de edad")
  }
}

calificar_edad(15)

calificar_edad(35)

# Ejercicio 3: Bucle con Operaciones Aritméticas
# Enunciado: Define una función llamada tabla_multiplicar que tome un parámetro numérico n e imprima la tabla de multiplicar del 1 al 10 de ese número.

tabla_multiplicar <- function(n){
  for (i in 1:10) {
    resultado <- n * i
    print(paste(n, "x", i, "=", resultado))
  }
}

tabla_multiplicar(5)
  

#Ejercicio 4: Bucle con Condicionales y Operaciones con Vectores
#Enunciado: Crea una función llamada numeros_pares que tome un parámetro numérico limite e imprima los números pares hasta ese límite.

numeros_pares <- function(limite) {
  for (i in 1:limite) {
    if (i %% 2 == 0) {
      print(i)
    }
  }
}

numeros_pares(20)


#Ejercicio 5: Bucle Anidado con Condicionales y Operaciones de Listas
#Enunciado: Define una función llamada matriz_cuadrada que tome un parámetro numérico n e imprima una matriz cuadrada de tamaño n x n donde los elementos son el resultado de la suma de sus índices de fila y columna.

matriz_cruzada <- function(n) {
  matriz <- matrix(0, nrow = n, ncol = n)
  for (i in 1:n) {
    for (j in 1:n) {
      matriz[i,j] <- i + j
    }
  }
  print(matriz)
}

matriz_cruzada(4)
