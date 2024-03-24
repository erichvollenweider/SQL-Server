select * from sys.tables;
select * from Empleados;
select nombre, apellido from Empleados;
-- Para cambiartle el nombre a una tabla
exec sp_rename 'Empleados', 'Usuarios';
create database Prueba;
