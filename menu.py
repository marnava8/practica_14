# Declaración de variables
lista = ""
opcion1 = 0

# Función para mostrar elementos en la lista
def mostrar_lista(lista):
    if lista == "":
        print("La lista está vacía.")
    else:
        print("Elementos en la lista:")
        elementos = lista.split(",")
        for i, elemento in enumerate(elementos, start=1):
            print(f"{i}) {elemento}")

# Menú principal
while opcion1 != 5:
    # Mostrar menú
    print("\nMenú de Opciones:")
    print("1) Agregar (Insertar/Alta)")
    print("2) Consulta (Mostrar)")
    print("3) Modificar (Editar)")
    print("4) Eliminar (Borrar)")
    print("5) Salir")
    opcion1 = int(input("Ingrese una opción: "))

    if opcion1 == 1:
        # Agregar un elemento
        dato = input("Ingrese el nuevo dato: ")
        if lista == "":
            lista = dato
        else:
            lista += "," + dato
        print("Dato agregado con éxito.")

    elif opcion1 == 2:
        # Mostrar todos los elementos
        mostrar_lista(lista)

    elif opcion1 == 3:
        # Modificar un elemento
        if lista == "":
            print("La lista está vacía.")
        else:
            mostrar_lista(lista)
            posicion = int(input("Ingrese el número del elemento a modificar: "))
            nueva_lista = []
            elementos = lista.split(",")
            for i, elemento in enumerate(elementos, start=1):
                if i == posicion:
                    nuevo_dato = input("Ingrese el nuevo dato: ")
                    nueva_lista.append(nuevo_dato)
                else:
                    nueva_lista.append(elemento)
            lista = ",".join(nueva_lista)
            print("Elemento modificado con éxito.")

    elif opcion1 == 4:
        # Eliminar un elemento
        if lista == "":
            print("La lista está vacía.")
        else:
            mostrar_lista(lista)
            posicion = int(input("Ingrese el número del elemento a eliminar: "))
            nueva_lista = []
            elementos = lista.split(",")
            for i, elemento in enumerate(elementos, start=1):
                if i != posicion:
                    nueva_lista.append(elemento)
            lista = ",".join(nueva_lista)
            print("Elemento eliminado con éxito.")

    elif opcion1 == 5:
        print("Saliendo del programa. ¡Adiós!")

    else:
        print("Opción no válida. Intente de nuevo.")
