create table Salarios(
nombre varchar(20),
apellido varchar(30),
salario decimal(18,2));

select * from Empleados;
select * from Salarios;

--Insertar datos desde otra tabla
insert into Salarios(nombre, apellido, salario)
select nombre, apellido, salario from Empleados;

--Limpiar Tabla
truncate table Salarios;

--Insertar datos desde otra tabla con condición
insert into Salarios(nombre, apellido, salario)
select nombre, apellido, salario from Empleados
where salario > 3000;