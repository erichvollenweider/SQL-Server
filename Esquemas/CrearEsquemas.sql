--Esquemas de SQL
--Un esquema de SQL es una estructura lógica wue se utiliza para  organizar y agrupar objetos de nuestra base de datos coo tablas, vistas, procedimientos, funciones, sinónios, etc.
--Nos proporciona como una forma de organizar y gestionar mas eficientemente los objetos dentro de nuestra base de datos, es decir, actúa como una especie de contenedor lógico y nos permite aislar
--y controlar los permisos de acceso a esos objetos. Cada objeto de la base de datos de estar dentro de un esquema específico.

--si no estamos trabajando dentro de nuestra base de datos en la que vamos a realizar la configuración, debemos especificarla
use Principal;

create schema Ventas;

create schema Cobros;

--Ventas y Cobros
--Debo configurar un tipo de permisos para Ventas y otro tipo de permisos para Cobros.

create table ventas.clientes(
idcliente int,
nombre varchar(20),
direccion varchar(30));

create table cobros.clientes(
idcliente int,
nombre varchar(20),
direccion varchar(30));

select * from ventas.clientes;
select * from cobros.clientes;

drop table Ventas.clientes;
drop table cobros.clientes;
