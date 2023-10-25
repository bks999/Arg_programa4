-- 1) Obtener los datos completos de los empleados.
SELECT *FROM empleados;
-- 2) Obtener los datos completos de los departamentos.
SELECT *FROM departamentos;
-- 3) Listar el nombre de los departamentos.
SELECT nombre_depto FROM departamentos;
-- 4) Obtener el nombre y salario de todos los empleados.
SELECT nombre, sal_emp AS salario FROM empleados;
-- 5) Listar todas las comisiones.
SELECT comision_emp AS comisiones FROM empleados;
-- 6) Obtener los datos de los empleados cuyo cargo sea ‘Secretaria’.
SELECT *FROM empleados WHERE cargo_emp = 'Secretaria';
-- 7) Obtener los datos de los empleados vendedores, ordenados por nombre alfabéticamente.
SELECT *FROM empleados WHERE cargo_emp = 'Vendedor' ORDER BY nombre ASC;
-- 8) Obtener el nombre y cargo de todos los empleados, ordenados por salario de menor a mayor.
SELECT nombre, cargo_emp as cargo FROM empleados ORDER BY sal_emp ASC;
-- 9) Obtener el nombre de o de los jefes que tengan su departamento situado en la ciudad de “Ciudad Real”
SELECT nombre_jefe_depto AS jefes FROM departamentos WHERE ciudad = 'Ciudad Real';
-- 10) Elabore un listado donde para cada fila, figure el alias ‘Nombre’ y ‘Cargo’ para las respectivas tablas de empleados.
SELECT nombre as Nombre, cargo_emp as Cargo FROM empleados;
-- 11) Listar los salarios y comisiones de los empleados del departamento 2000, ordenado por comisión de menor a mayor.
SELECT nombre, sal_emp as salario, comision_emp as comision FROM empleados WHERE id_depto = '2000' ORDER BY comision_emp ASC;
-- 12) Obtener el valor total a pagar a cada empleado del departamento 3000, que resulta
-- de: sumar el salario y la comisión, más una bonificación de 500. Mostrar el nombre del
-- empleado y el total a pagar, en orden alfabético.
SELECT nombre, sal_emp + comision_emp + 500 as 'Total a pagar' FROM empleados WHERE id_depto= 3000 ORDER BY nombre ASC;
-- 13) Muestra los empleados cuyo nombre empiece con la letra J.
SELECT nombre From empleados WHERE nombre LIKE 'J%';
-- 14) Listar el salario, la comisión, el salario total (salario + comisión) y nombre, de aquellos empleados que tienen comisión superior a 1000.
SELECT nombre as Nombre, sal_emp as Salario, comision_emp as Comision, sal_emp + comision_emp as 'Salario Total' FROM empleados WHERE comision_emp > 1000;
-- 15) Obtener un listado similar al anterior, pero de aquellos empleados que NO tienen comisión.
SELECT nombre as Nombre, sal_emp as Salario, comision_emp as Comision, sal_emp + comision_emp as 'Salario Total' FROM empleados WHERE comision_emp = 0;
-- 16) Obtener la lista de los empleados que ganan una comisión superior a su sueldo.
SELECT nombre, sal_emp, comision_emp FROM empleados WHERE comision_emp > sal_emp;
-- 17) Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
SELECT nombre, sal_emp*0.3, comision_emp FROM empleados WHERE comision_emp <= (sal_emp*0.3);
-- 18) Hallar los empleados cuyo nombre no contiene la cadena “MA”
SELECT nombre FROM empleados WHERE NOT nombre LIKE '%MA%'; -- tambien puede ser NOT LIKE..
-- 19) Obtener los nombres de los departamentos que sean “Ventas”, “Investigación” o ‘Mantenimiento.
SELECT nombre_depto FROM departamentos WHERE nombre_depto IN ('VENTAS','INVESTIGACION','MANTENIMIENTO');
-- 20) Ahora obtener el contrario, los nombres de los departamentos que no sean “Ventas” ni “Investigación” ni ‘Mantenimiento.
SELECT nombre_depto FROM departamentos WHERE NOT nombre_depto IN ('VENTAS','INVESTIGACION','MANTENIMIENTO');
-- 21) Mostrar el salario más alto de la empresa.
SELECT MAX(sal_emp) FROM empleados;
SELECT nombre, sal_emp FROM empleados WHERE sal_emp = (SELECT MAX(sal_emp) FROM empleados);
-- 22) Mostrar el nombre del último empleado de la lista por orden alfabético.
SELECT nombre FROM empleados ORDER BY nombre DESC LIMIT 1;
-- 23) Hallar el salario más alto, el más bajo y la diferencia entre ellos.
SELECT MAX(sal_emp) as 'salario maximo', MIN(sal_emp) as 'salario minimo', MAX(sal_emp)-MIN(sal_emp) as 'diferencia' FROM empleados;
-- 24) Hallar el salario promedio por departamento.
SELECT id_depto, ROUND(AVG(sal_emp)) FROM empleados GROUP BY id_depto;
-- 25) Hallar los departamentos que tienen más de tres empleados. Mostrar el número de empleados de esos departamentos.
SELECT cargo_emp, COUNT(id_depto) as 'numero de empleados' FROM empleados GROUP BY id_depto HAVING COUNT(id_depto)>=3;
-- 26) Hallar los departamentos que no tienen empleados
SELECT id_depto, COUNT(id_depto) as 'numero de empleados' FROM empleados GROUP BY id_depto HAVING COUNT(id_depto)=0;
-- 27) Mostrar la lista de empleados, con su respectivo departamento y el jefe de cada departamento.
SELECT nombre, nombre_depto AS departamento, nombre_jefe_depto AS jefe FROM empleados INNER JOIN departamentos ON empleados.id_depto = departamentos.id_depto; 
-- 28) Mostrar la lista de los empleados cuyo salario es mayor o igual que el promedio de la empresa. Ordenarlo por departamento.
SELECT ROUND(AVG(sal_emp)) FROM empleados;
SELECT id_depto, nombre , sal_emp as salario FROM empleados WHERE sal_emp >= (SELECT AVG(sal_emp) FROM empleados) ORDER BY id_depto;