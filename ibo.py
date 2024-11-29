# Serie de Fibonacci en Python 3
def fibonacci():
    n = int(input("Ingrese el número de términos de la serie Fibonacci: "))
    if n <= 0:
        print("El número debe ser mayor a 0.")
    else:
        a, b = 0, 1
        print("Serie Fibonacci:")
        print(a)
        if n > 1:
            print(b)
        for i in range(2, n):
            temp = a + b
            print(temp)
            a, b = b, temp

fibonacci()
