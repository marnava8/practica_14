print("Hecho por Alexa Y Dulce")
filas = int(input("Ingrese el número de filas del Triángulo: "))
for fila in range(filas):
    print(" " * (filas - fila - 1), end="")
    coeficiente = 1 
    for col in range(fila + 1):
        print(coeficiente, end=" ")
        coeficiente = coeficiente * (fila - col) // (col + 1)
    
    print() 