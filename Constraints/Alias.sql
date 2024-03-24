select * from Empleados;

select id, nombre, apellido, salario from Empleados
where salario < 3000;

select id as Identificador, nombre as Primer_Nombre, apellido as "Primer Apellido", salario from Empleados
where salario < 3000;

select nombre + ' ' + apellido from Empleados;

select nombre + ' ' + apellido + ' ' + direccion from Empleados;

--Esto puede concatenar tipos de datos iguales es decir, varchar con varchar, enteros con enteros
--Solucion:

select nombre + ' ' + apellido + ' ' + cast(edad as varchar(2)) from Empleados;

select nombre + ' ' + apellido + ' ' + cast(edad as varchar(2)) as Datos from Empleados;