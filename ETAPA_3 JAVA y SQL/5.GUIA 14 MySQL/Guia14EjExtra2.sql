-- Consultas sobre una tabla
-- 1. Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.
SELECT codigo_oficina 'CODIGO OFICINA', ciudad FROM oficina;
-- 2. Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
SELECT ciudad, telefono FROM oficina WHERE pais LIKE '%España%';
-- 3. Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un
-- código de jefe igual a 7.
SELECT nombre, apellido1, apellido2, email FROM empleado 
WHERE codigo_jefe = 7;
-- 4. Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.
SELECT puesto, nombre, apellido1, apellido2, email FROM empleado 
WHERE codigo_empleado IN (SELECT DISTINCT codigo_jefe FROM empleado);
-- 5. Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean
-- representantes de ventas.
SELECT nombre, apellido1, apellido2, puesto FROM empleado WHERE not puesto = 'representante ventas';
-- 6. Devuelve un listado con el nombre de los todos los clientes españoles.
SELECT nombre_cliente FROM cliente WHERE pais = 'Spain';
-- 7. Devuelve un listado con los distintos estados por los que puede pasar un pedido.
SELECT DISTINCT estado FROM pedido;
-- 8. Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago
-- en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan
-- repetidos. Resuelva la consulta:
-- o Utilizando la función YEAR de MySQL.
SELECT codigo_cliente, fecha_pago FROM pago WHERE year(fecha_pago) = 2008;
-- o Utilizando la función DATE_FORMAT de MySQL.
SELECT codigo_cliente, fecha_pago FROM pago WHERE date_format(fecha_pago, '%Y') = 2008 ;
-- o Sin utilizar ninguna de las funciones anteriores.
SELECT codigo_cliente, fecha_pago FROM pago WHERE fecha_pago LIKE '%2008%';
-- 9. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de
-- entrega de los pedidos que no han sido entregados a tiempo.
SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega, estado FROM pedido 
WHERE fecha_entrega>fecha_esperada;
-- 10. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de
-- entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha
-- esperada.
-- o Utilizando la función ADDDATE de MySQL.
SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega, estado FROM pedido 
WHERE fecha_entrega = ADDDATE(fecha_esperada, interval -2 day);
-- o Utilizando la función DATEDIFF de MySQL.
SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega, estado FROM pedido 
WHERE DATEDIFF(fecha_esperada,fecha_entrega) = 2;
-- 11. Devuelve un listado de todos los pedidos que fueron rechazados en 2009.
SELECT *FROM pedido WHERE estado = 'rechazado' and fecha_pedido like '%2009%';
-- 12. Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de
-- cualquier año.
SELECT *FROM pedido WHERE estado = 'entregado' and date_format(fecha_entrega, '%m') = 01;
-- 13. Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal.
-- Ordene el resultado de mayor a menor.
SELECT *FROM pago WHERE date_format(fecha_pago, '%Y')=2008 AND forma_pago like '%Paypal%';
-- 14. Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en
-- cuenta que no deben aparecer formas de pago repetidas.
SELECT DISTINCT forma_pago FROM pago;
-- 15. Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que
-- tienen más de 100 unidades en stock. El listado deberá estar ordenado por su precio de
-- venta, mostrando en primer lugar los de mayor precio.
SELECT *FROM producto WHERE gama LIKE '%Ornamentales%' and cantidad_en_stock>100 order by precio_venta desc;
-- 16. Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo
-- representante de ventas tenga el código de empleado 11 o 30.
SELECT *FROM cliente WHERE ciudad = 'Madrid' and codigo_empleado_rep_ventas in (11,30);

-- Consultas multitabla (Composición interna)
-- Las consultas se deben resolver con INNER JOIN.
-- 1. Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante
-- de ventas.
SELECT nombre_cliente AS cliente, nombre, apellido1, apellido2 FROM cliente INNER JOIN empleado ON codigo_empleado_rep_ventas = codigo_empleado;
-- 2. Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus
-- representantes de ventas.
SELECT nombre_cliente AS cliente, nombre as 'nombre representante', apellido1 as 'apellido1 representante', apellido2 'apellido2 representante' 
FROM cliente INNER JOIN empleado 
ON codigo_empleado_rep_ventas = codigo_empleado
WHERE codigo_cliente IN (SELECT codigo_cliente FROM pago);
-- 3. Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de
-- sus representantes de ventas.
SELECT nombre_cliente AS cliente, nombre as 'nombre representante', apellido1 as 'apellido1 representante', apellido2 'apellido2 representante' 
FROM cliente INNER JOIN empleado 
ON codigo_empleado_rep_ventas = codigo_empleado
WHERE codigo_cliente not IN (SELECT codigo_cliente FROM pago);
-- 4. Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes
-- junto con la ciudad de la oficina a la que pertenece el representante.
SELECT 
    nombre_cliente AS cliente,
    nombre AS 'nombre representante',
    apellido1 AS 'apellido1 representante',
    apellido2 'apellido2 representante',
    oficina.ciudad as 'ciudad representante'
FROM
    cliente
        INNER JOIN
    empleado ON codigo_empleado_rep_ventas = codigo_empleado
		INNER JOIN
	oficina ON empleado.codigo_oficina = oficina.codigo_oficina
WHERE
    codigo_cliente IN (SELECT 
            codigo_cliente
        FROM
            pago);
-- 5. Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus
-- representantes junto con la ciudad de la oficina a la que pertenece el representante.
SELECT 
    nombre_cliente AS cliente,
    nombre AS 'nombre representante',
    apellido1 AS 'apellido1 representante',
    apellido2 'apellido2 representante',
    oficina.ciudad as 'ciudad representante'
FROM
    cliente
        INNER JOIN
    empleado ON codigo_empleado_rep_ventas = codigo_empleado
		INNER JOIN
	oficina ON empleado.codigo_oficina = oficina.codigo_oficina
WHERE
    codigo_cliente NOT IN (SELECT 
            codigo_cliente
        FROM
            pago);
-- 6. Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.
SELECT *FROM oficina;
SELECT *FROM cliente;
SELECT 
    cliente.nombre_cliente, oficina.linea_direccion1, oficina.linea_direccion2
FROM
    oficina
        INNER JOIN
	empleado ON oficina.codigo_oficina = empleado.codigo_oficina
		INNER JOIN
    cliente ON empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas
WHERE
    cliente.linea_direccion2 LIKE '%Fuenlabrada%';
-- 7. Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad
-- de la oficina a la que pertenece el representante.
SELECT 
    cliente.nombre_cliente cliente,
    empleado.nombre AS representante,
    oficina.ciudad AS 'ciudad representante'
FROM
    cliente
        INNER JOIN
    empleado ON codigo_empleado_rep_ventas = codigo_empleado
        INNER JOIN
    oficina ON empleado.codigo_oficina = oficina.codigo_oficina;
-- 8. Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.
SELECT 
    e.nombre AS empleado, e.apellido1, e.puesto, jefe.nombre AS jefe, jefe.apellido1, jefe.puesto
FROM
    empleado AS e
        INNER JOIN
    empleado AS jefe ON e.codigo_jefe = jefe.codigo_empleado
    order by jefe.nombre,jefe.apellido1;
-- 9. Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.
SELECT C.nombre_cliente, P.fecha_esperada, P.fecha_entrega FROM cliente as C inner join pedido AS P on C.codigo_cliente = P.codigo_cliente
WHERE P.fecha_entrega>P.fecha_esperada;
-- 10. Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.
Select producto.gama, pedido.codigo_cliente FROM producto inner join detalle_pedido as dp on producto.codigo_producto = dp.codigo_producto
inner join pedido on dp.codigo_pedido = pedido.codigo_pedido
group by pedido.codigo_cliente, producto.gama;

-- Consultas multitabla (Composición externa)
-- Resuelva todas las consultas utilizando las cláusulas LEFT JOIN, RIGHT JOIN, JOIN.
-- 1. Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
Select distinct nombre_cliente, pago.total From cliente left join pago on cliente.codigo_cliente = pago.codigo_cliente
where pago.total is null;
Select nombre_cliente, pago.total From cliente left join pago on cliente.codigo_cliente = pago.codigo_cliente
where pago.total is null
group by nombre_cliente, pago.total;
-- 2. Devuelve un listado que muestre solamente los clientes que no han realizado ningún
-- pedido.
Select distinct c.nombre_cliente from cliente c left join pedido p on c.codigo_cliente = p.codigo_cliente
WHERE p.codigo_cliente is null;
-- 3. Devuelve un listado que muestre los clientes que no han realizado ningún pago y los que
-- no han realizado ningún pedido.
SELECT distinct c.nombre_cliente FROM cliente c left join pago ON c.codigo_cliente = pago.codigo_cliente
left join pedido on c.codigo_cliente = pedido.codigo_cliente
WHERE pago.codigo_cliente is null OR pedido.codigo_cliente is null;
-- 4. Devuelve un listado que muestre solamente los empleados que no tienen una oficina asociada. 
SELECT e.nombre, e.codigo_oficina FROM empleado e where e.codigo_oficina is null or e.codigo_oficina = '';
-- 5. Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado.
SELECT e.nombre from empleado e left join cliente c on e.codigo_empleado = c.codigo_empleado_rep_ventas
where c.codigo_empleado_rep_ventas is null;
-- 6. Devuelve un listado que muestre los empleados que no tienen una oficina asociada y los
-- que no tienen un cliente asociado.
SELECT e.nombre FROM empleado e left join cliente c on e.codigo_empleado = c.codigo_empleado_rep_ventas
where e.codigo_oficina is null or e.codigo_oficina = '' or c.codigo_empleado_rep_ventas is null;
-- 7. Devuelve un listado de los productos que nunca han aparecido en un pedido.
SELECT producto.nombre FROM producto left join detalle_pedido dt on producto.codigo_producto = dt.codigo_producto
left join pedido on dt.codigo_pedido = pedido.codigo_pedido
where pedido.codigo_pedido is null
group by producto.nombre;
-- 8. Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los
-- representantes de ventas de algún cliente que haya realizado la compra de algún producto
-- de la gama Frutales.
SELECT DISTINCT
    o.codigo_oficina
FROM
    oficina o
        LEFT JOIN
    empleado e ON o.codigo_oficina = e.codigo_oficina
        LEFT JOIN
    cliente c ON e.codigo_empleado = c.codigo_empleado_rep_ventas
        LEFT JOIN
    pedido p ON c.codigo_cliente = p.codigo_cliente
        LEFT JOIN
    detalle_pedido dt ON p.codigo_pedido = dt.codigo_pedido
        LEFT JOIN
    producto pro ON dt.codigo_producto = pro.codigo_producto
    WHERE  NOT (pro.gama = 'Frutales');
-- 9. Devuelve un listado con los clientes que han realizado algún pedido, pero no han realizado
-- ningún pago.
SELECT DISTINCT c.nombre_cliente FROM cliente c left join pago on c.codigo_cliente = pago.codigo_cliente
left join pedido on c.codigo_cliente = pedido.codigo_cliente
where c.codigo_cliente = pedido.codigo_cliente and pago.codigo_cliente is null;
-- 10. Devuelve un listado con los datos de los empleados que no tienen clientes asociados y el
-- nombre de su jefe asociado.
SELECT e.codigo_empleado, e.nombre, e.apellido1, e.puesto, e.codigo_jefe, j.nombre as jefe, cliente.codigo_empleado_rep_ventas 
FROM empleado e left join cliente on e.codigo_empleado=cliente.codigo_empleado_rep_ventas
join empleado j on e.codigo_jefe = j.codigo_empleado
where cliente.codigo_empleado_rep_ventas is null;

-- Consultas resumen
-- 1. ¿Cuántos empleados hay en la compañía?
SELECT count(codigo_empleado) from empleado;
-- 2. ¿Cuántos clientes tiene cada país?
SELECT pais, count(codigo_cliente) as clientes from cliente group by pais;
-- 3. ¿Cuál fue el pago medio en 2009?
SELECT AVG(total) from pago where date_format(fecha_pago, '%Y')=2009;
SELECT fecha_pago, round(AVG(total),2) from pago where year(fecha_pago)=2009;
-- 4. ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el
-- número de pedidos.
SELECT estado, count(codigo_pedido) as pedidos from pedido group by estado order by pedidos desc;
-- 5. Calcula el precio de venta del producto más caro y más barato en una misma consulta.
SELECT max(precio_venta) as 'producto mas caro', min(precio_venta) as 'producto mas barato' from producto;
-- 6. Calcula el número de clientes que tiene la empresa.
SELECT count(codigo_cliente) as clientes from cliente;
-- 7. ¿Cuántos clientes tiene la ciudad de Madrid?
SELECT count(codigo_cliente) as clientes from cliente WHERE ciudad = 'Madrid';
-- 8. ¿Calcula cuántos clientes tiene cada una de las ciudades que empiezan por M?
SELECT ciudad, count(codigo_cliente) as clientes from cliente WHERE ciudad like 'M%'GROUP BY ciudad;
-- 9. Devuelve el nombre de los representantes de ventas y el número de clientes al que atiende cada uno.
SELECT e.nombre, count(c.codigo_empleado_rep_ventas) from empleado e, cliente c 
where e.codigo_empleado = c.codigo_empleado_rep_ventas
group by c.codigo_empleado_rep_ventas;
-- 10. Calcula el número de clientes que no tiene asignado representante de ventas.
-- 11. Calcula la fecha del primer y último pago realizado por cada uno de los clientes. El listado
-- deberá mostrar el nombre y los apellidos de cada cliente.
-- 12. Calcula el número de productos diferentes que hay en cada uno de los pedidos.
-- 13. Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de
-- los pedidos.
-- 14. Devuelve un listado de los 20 productos más vendidos y el número total de unidades que
-- se han vendido de cada uno. El listado deberá estar ordenado por el número total de
-- unidades vendidas.
-- 15. La facturación que ha tenido la empresa en toda la historia, indicando la base imponible, el
-- IVA y el total facturado. La base imponible se calcula sumando el coste del producto por el
-- número de unidades vendidas de la tabla detalle_pedido. El IVA es el 21 % de la base
-- imponible, y el total la suma de los dos campos anteriores.
-- 16. La misma información que en la pregunta anterior, pero agrupada por código de producto.
-- 17. La misma información que en la pregunta anterior, pero agrupada por código de producto
-- filtrada por los códigos que empiecen por OR.
-- 18. Lista las ventas totales de los productos que hayan facturado más de 3000 euros. Se
-- mostrará el nombre, unidades vendidas, total facturado y total facturado con impuestos (21%
-- IVA)
-- Subconsultas con operadores básicos de comparación
-- 1. Devuelve el nombre del cliente con mayor límite de crédito.
-- 2. Devuelve el nombre del producto que tenga el precio de venta más caro.
-- 3. Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta
-- que tendrá que calcular cuál es el número total de unidades que se han vendido de cada
-- producto a partir de los datos de la tabla detalle_pedido. Una vez que sepa cuál es el código
-- del producto, puede obtener su nombre fácilmente.)
-- 4. Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin utilizar
-- INNER JOIN).
-- 5. Devuelve el producto que más unidades tiene en stock.
-- 6. Devuelve el producto que menos unidades tiene en stock.
-- 7. Devuelve el nombre, los apellidos y el email de los empleados que están a cargo de Alberto
-- Soria.
-- Subconsultas con ALL y ANY
-- 1. Devuelve el nombre del cliente con mayor límite de crédito.
-- 2. Devuelve el nombre del producto que tenga el precio de venta más caro.
-- 3. Devuelve el producto que menos unidades tiene en stock.
-- Subconsultas con IN y NOT IN
-- 1. Devuelve el nombre, apellido1 y cargo de los empleados que no representen a ningún
-- cliente.
-- 2. Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
-- 3. Devuelve un listado que muestre solamente los clientes que sí han realizado ningún pago.
-- 53
-- 4. Devuelve un listado de los productos que nunca han aparecido en un pedido.
-- 5. Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que
-- no sean representante de ventas de ningún cliente.
-- Subconsultas con EXISTS y NOT EXISTS
-- 1. Devuelve un listado que muestre solamente los clientes que no han realizado ningún
-- pago.
-- 2. Devuelve un listado que muestre solamente los clientes que sí han realizado ningún pago.
-- 3. Devuelve un listado de los productos que nunca han aparecido en un pedido.
-- 4. Devuelve un listado de los productos que han aparecido en un pedido alguna vez.