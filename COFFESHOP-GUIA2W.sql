USE COFFEESHOP;

#Selecciona todos los clientes que han realizado pedidos
SELECT c.nombre_cliente
FROM cliente c
INNER JOIN pedido p USING(id_cliente);

#Selecciona todos los pedidos que han sido realizados entre dos fechas (dejar el espacio para escribir la fecha según conveniencia).
SELECT *
FROM pedido
WHERE fecha_registro BETWEEN '2024-02-08' AND '2024-09-1';

#Selecciona a todos los clientes y ordénalos según su fecha de nacimiento de forma descendente.
SELECT nombre_cliente, nacimiento_cliente
FROM cliente
ORDER BY nacimiento_cliente DESC;

#Selecciona los productos que se encuentran dentro de un pedido. 
SELECT p.nombre_producto
FROM producto p
INNER JOIN detalle_pedido dp ON p.id_producto = dp.id_producto
WHERE dp.id_pedido = 2;

#Selecciona el producto con el mayor precio.   
SELECT nombre_producto, precio_producto
FROM producto
WHERE precio_producto = (SELECT MAX(precio_producto) FROM producto);

#Selecciona el promedio de precios de los productos ingresados. 
SELECT AVG(precio_producto) AS promedio_precios
FROM producto;

#Haz una consulta que te permita ver la información de cuantos pedidos se encuentran en estado: Pendiente, Finalizado, Entregado, Anulado.
SELECT estado_pedido, COUNT(*) AS cantidad_pedidos
FROM pedido
GROUP BY estado_pedido;

#Seleccionaa todos los clientes que su nombre empiece por la letra D.
SELECT nombre_cliente
FROM cliente
WHERE nombre_cliente LIKE 'D%';

#Plantear una consulta donde se calculen la cantidad de órdenes agrupadas por cliente, filtradas por fecha y se ordenen los registros de mayor a menor
SELECT c.nombre_cliente, COUNT(*) AS cantidad_ordenes
FROM cliente c
INNER JOIN pedido p ON c.id_cliente = p.id_cliente
WHERE p.fecha_registro BETWEEN '2024-01-01' AND '2024-09-12'
GROUP BY c.id_cliente
ORDER BY cantidad_ordenes DESC;

#Haz una consulta que muestre los 3 productos más vendidos.
SELECT p.nombre_producto, SUM(dp.cantidad_producto) AS total_vendido
FROM producto p
INNER JOIN detalle_pedido dp ON p.id_producto = dp.id_producto
GROUP BY p.id_producto
ORDER BY total_vendido DESC
LIMIT 3;

#Haz una consulta que muestre al cliente que más pedidos ha realizado y cuantos pedidos ha realizado.
SELECT c.nombre_cliente, COUNT(*) AS cantidad_pedidos
FROM cliente c
INNER JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente
ORDER BY cantidad_pedidos DESC
LIMIT 1;

#Haz una consulta que muestre la información de la tabla, cliente, pedido, detalle pedido, producto. Utiliza la sentencia inner join.
SELECT c.nombre_cliente, pr.nombre_producto, dp.cantidad_producto, pr.precio_producto, p.direccion_pedido, p.estado_pedido
FROM cliente c
INNER JOIN pedido p ON c.id_cliente = p.id_cliente
INNER JOIN detalle_pedido dp ON p.id_pedido = dp.id_pedido
INNER JOIN producto pr ON dp.id_producto = pr.id_producto;