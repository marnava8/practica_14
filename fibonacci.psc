Algoritmo Serie_Fibonacci
    Definir n, a, b, temp Como Entero
    Escribir "Ingrese el número de términos de la serie Fibonacci:"
    Leer n
    Si n <= 0 Entonces
        Escribir "El número debe ser mayor a 0."
    Sino
        a <- 0
        b <- 1
        Escribir "Serie Fibonacci:"
        Escribir a
        Si n > 1 Entonces
            Escribir b
        Fin Si
        Para i <- 3 Hasta n Hacer
            temp <- a + b
            Escribir temp
            a <- b
            b <- temp
        Fin Para
    Fin Si
FinAlgoritmo
