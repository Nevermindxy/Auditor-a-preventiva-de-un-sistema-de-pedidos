Algoritmo RegistroPedidosMejorado
	Definir producto Como Caracter;
	Definir cantidad Como Entero;
	Definir precio Como Real;
	Definir subtotal Como Real;
	Definir total Como Real;
	Definir descuento Como Real;
	Definir eleccion Como Entero;
	Escribir "REGISTRO DE PEDIDOS (";
	producto <- "";
	Mientras producto = "" Hacer
		Escribir "Nombre del producto:";
		Leer producto;
		Si producto = "" Entonces
			Escribir "Error: El nombre del producto no puede estar vacío.";
		FinSi
	FinMientras
	
	cantidad <- 0;
	Mientras cantidad <= 0 Hacer
		Escribir "Cantidad solicitada:";
		Leer cantidad;
		Si cantidad <= 0 Entonces
			Escribir "Error: La cantidad debe ser mayor que cero.";
		FinSi
	FinMientras
	precio <- 0;
	Mientras precio <= 0 Hacer
		Escribir "Precio unitario:";
		Leer precio;
		Si precio <= 0 Entonces
			Escribir "Error: El precio debe ser mayor que cero.";
		FinSi
	FinMientras
	descuento <- -1;
	Mientras descuento < 0 O descuento > 100 Hacer
		Escribir "Porcentaje de descuento (0 - 100):";
		Leer descuento;
		Si descuento < 0 O descuento > 100 Entonces
			Escribir "Error: El descuento debe estar entre 0 y 100.";
		FinSi
	FinMientras

	subtotal <- cantidad * precio;
	total <- subtotal - (subtotal * descuento / 100);
	
	Escribir "";
	Escribir "--- DETALLES DEL PEDIDO ---";
	Escribir "Producto: ", producto;
	Escribir "Cantidad: ", cantidad;
	Escribir "Precio Unitario: ", precio;
	Escribir "Descuento aplicado: ", descuento, "%";
	Escribir "Total a pagar: ", total;
	eleccion = 0;
	
	Mientras eleccion <> 1 Y eleccion <> 2 Hacer
		Escribir "";
		Escribir "¿Desea confirmar el pedido?";
		Escribir "1. Sí";
		Escribir "2. No";
		Leer eleccion;
		Si eleccion <> 1 Y eleccion <> 2 Entonces
			Escribir "Error: Opción inválida. Ingrese 1 o 2.";
		FinSi
	FinMientras
	
	Si eleccion = 1 Entonces
		Escribir "Pedido confirmado con éxito.";
	SiNo
		Escribir "Pedido cancelado.";
	FinSi
	
	Escribir "Proceso finalizado.";
FinAlgoritmo