Algoritmo RegistroPedidos
	Definir producto Como Caracter;
	Definir cantidad Como Entero;
	Definir precio Como Real;
	Definir total Como Real;
	Definir descuento Como Real;
	Definir eleccion Como Entero;
	
	Escribir "REGISTRO DE PEDIDOS ";
	Escribir "Nombre del producto:";
	Leer producto;
	
	cantidad <- 0;
	Mientras cantidad <= 0 Hacer
		Escribir "Cantidad solicitada:";
		Leer cantidad;
		Si cantidad <= 0 Entonces
			Escribir "Error: La cantidad debe ser mayor que cero.";
		FinSi;
	FinMientras;
	
	// Validación del precio añadida en este commit
	precio <- 0;
	Mientras precio <= 0 Hacer
		Escribir "Precio unitario:";
		Leer precio;
		Si precio <= 0 Entonces
			Escribir "Error: El precio debe ser mayor que cero.";
		FinSi;
	FinMientras;
	
	Escribir "Porcentaje de descuento:";
	Leer descuento;
	
	total <- cantidad * precio;
	total <- total - (total * descuento / 100);
	
	Escribir "Producto: ", producto;
	Escribir "Cantidad: ", cantidad;
	Escribir "Total a pagar: ", total;
	
	Escribir "¿Desea confirmar el pedido?";
	Escribir "1. Sí";
	Escribir "2. No";
	Leer eleccion;
	
	Si eleccion = 1 Entonces
		Escribir "Pedido confirmado.";
	SiNo
		Escribir "Pedido cancelado.";
	FinSi;
	
	Escribir "Proceso finalizado.";
FinAlgoritmo