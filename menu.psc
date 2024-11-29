Algoritmo MenuCRUD
    // Declaración de variables
    Definir lista Como Cadena
    Definir opcion1 Como Entero
    Definir dato Como Cadena
    Definir nueva_lista Como Cadena
    Definir contador Como Entero
    Definir posicion Como Entero
    Definir inicio Como Entero
    Definir coma_posicion Como Entero
    Definir elemento Como Cadena
	
    // Inicialización de variables
    lista <- ""
    opcion1 <- 0
	
    Mientras opcion1 <> 5 Hacer
        // Mostrar menú
		Escribir "Angel y Dafne"
        Escribir "Menú de Opciones:"
        Escribir "1) Agregar (Insertar/Alta)"
        Escribir "2) Consulta (Mostrar)"
        Escribir "3) Modificar (Editar)"
        Escribir "4) Eliminar (Borrar)"
        Escribir "5) Salir"
        Leer opcion1
		
        Segun opcion1 Hacer
            Caso 1:
                // Agregar un elemento
                Escribir "Ingrese el nuevo dato:"
                Leer dato
                Si lista = "" Entonces
                    lista <- dato
                Sino
                    lista <- lista + "," + dato
                FinSi
                Escribir "Dato agregado con éxito."
				
            Caso 2:
                // Mostrar todos los elementos
                Si lista = "" Entonces
                    Escribir "La lista está vacía."
                Sino
                    Escribir "Elementos en la lista:"
                    contador <- 1
                    inicio <- 1
                    coma_posicion <- 1
                    Mientras coma_posicion > 0 Hacer
                        coma_posicion <- -1
                        // Encontrar la posición de la siguiente coma
                        Para i <- inicio Hasta Longitud(lista) Hacer
                            Si Subcadena(lista, i, i) = "," Entonces
                                coma_posicion <- i
                                
                            FinSi
                        FinPara
                        // Extraer el elemento
                        Si coma_posicion > 0 Entonces
                            elemento <- Subcadena(lista, inicio, coma_posicion - 1)
                            inicio <- coma_posicion + 1
                        Sino
                            elemento <- Subcadena(lista, inicio, Longitud(lista))
                        FinSi
                        Escribir contador, ") ", elemento
                        contador <- contador + 1
                    FinMientras
                FinSi
				
            Caso 3:
                // Modificar un elemento
                Si lista = "" Entonces
                    Escribir "La lista está vacía."
                Sino
                    Escribir "Ingrese el número del elemento a modificar:"
                    Leer posicion
                    nueva_lista <- ""
                    contador <- 1
                    inicio <- 1
                    coma_posicion <- 1
                    Mientras coma_posicion > 0 Hacer
                        coma_posicion <- -1
                        // Encontrar la posición de la siguiente coma
                        Para i <- inicio Hasta Longitud(lista) Hacer
                            Si Subcadena(lista, i, i) = "," Entonces
                                coma_posicion <- i
								
                            FinSi
                        FinPara
                        // Extraer el elemento
                        Si coma_posicion > 0 Entonces
                            elemento <- Subcadena(lista, inicio, coma_posicion - 1)
                            inicio <- coma_posicion + 1
                        Sino
                            elemento <- Subcadena(lista, inicio, Longitud(lista))
                        FinSi
                        // Modificar si corresponde
                        Si contador = posicion Entonces
                            Escribir "Ingrese el nuevo dato:"
                            Leer dato
                            elemento <- dato
                        FinSi
                        // Reconstruir la lista
                        Si nueva_lista = "" Entonces
                            nueva_lista <- elemento
                        Sino
                            nueva_lista <- nueva_lista + "," + elemento
                        FinSi
                        contador <- contador + 1
                    FinMientras
                    lista <- nueva_lista
                    Escribir "Elemento modificado con éxito."
                FinSi
				
            Caso 4:
                // Eliminar un elemento
                Si lista = "" Entonces
                    Escribir "La lista está vacía."
                Sino
                    Escribir "Ingrese el número del elemento a eliminar:"
                    Leer posicion
                    nueva_lista <- ""
                    contador <- 1
                    inicio <- 1
                    coma_posicion <- 1
                    Mientras coma_posicion > 0 Hacer
                        coma_posicion <- -1
                        // Encontrar la posición de la siguiente coma
                        Para i <- inicio Hasta Longitud(lista) Hacer
                            Si Subcadena(lista, i, i) = "," Entonces
                                coma_posicion <- i
								
                            FinSi
                        FinPara
                        // Extraer el elemento
                        Si coma_posicion > 0 Entonces
                            elemento <- Subcadena(lista, inicio, coma_posicion - 1)
                            inicio <- coma_posicion + 1
                        Sino
                            elemento <- Subcadena(lista, inicio, Longitud(lista))
                        FinSi
                        // Añadir si no se elimina
                        Si contador <> posicion Entonces
                            Si nueva_lista = "" Entonces
                                nueva_lista <- elemento
                            Sino
                                nueva_lista <- nueva_lista + "," + elemento
                            FinSi
                        FinSi
                        contador <- contador + 1
                    FinMientras
                    lista <- nueva_lista
                    Escribir "Elemento eliminado con éxito."
                FinSi
				
            Caso 5:
                Escribir "Saliendo del programa. ¡Adiós!"
				
            De Otro Modo:
                Escribir "Opción no válida. Intente de nuevo."
        FinSegun
    FinMientras
FinAlgoritmo