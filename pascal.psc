Algoritmo TrianguloDePascalSinArreglos
	Escribir 'Alexa Y Dulce'
	Definir filas, i, p, coef Como Entero
	Escribir 'Ingrese el número de filas para el triángulo: '
	Leer filas
	Para i<-0 Hasta filas-1 Hacer
		Para p<-1 Hasta filas-i Hacer
			Escribir ' 'Sin Saltar
		FinPara
		coef <- 1
		Para p<-0 Hasta i Hacer
			Escribir coef, ' 'Sin Saltar
			coef <- coef*(i-p)/(p+1)
		FinPara
		Escribir ''
	FinPara
FinAlgoritmo
