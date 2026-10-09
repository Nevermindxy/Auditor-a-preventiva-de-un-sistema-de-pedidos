# Auditoría Preventiva - Sistema de Pedidos (PSeInt)

Proyecto de auditoría y mejora de código para un sistema de registro de pedidos, aplicando control de versiones paso a paso en GitHub.

## Integrantes

* Emilio Walter Garcia Burgoa
* Ignacio Fernandez Itusaca
* Harold Yasmani Alvarez Limachi
* Yasser Caba Murillo


## Descripción de los Commits
* **Commit 1 (`Código original para auditoria`):** Subimos el codigo base original
* **Commit 2 (`Validación de cantidad y precio`):** Actualizamos el archivo agregando los primeros cambios para que la cantidad y el precio no puedan ser negativos ni cero.
* **Commit 3 (`Validación de descuento y confirmación`):** Versión final del código con todas las validaciones listas (incluyendo el rango del descuento de 0 a 100 y la opción de menú con la variable eleccion).
* **Commit 4 (`Pruebas y versión final mejorada`):** Subida de este README con la documentación y las pruebas realizadas.

## Resumen de Pruebas
* **Cantidad y Precio:** Si ingresabas `0` o números negativos, el programa se rompía o calculaba mal. Con el parche, te obliga a meter números válidos.
* **Descuento:** En las primeras versiones podías meter `-10%` y el total subía, o `150%` y el cliente salía ganando plata. Ahora está limitado estrictamente de 0 a 100.
* **Menú de confirmación:** Si elegías cualquier otra tecla que no fuera 1 o 2, ahora el sistema te vuelve a pedir que elijas una opción correcta.
