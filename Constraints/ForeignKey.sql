--Foreign Key: es una restricción que es usada para prevenir acciones que podrían dañar los enlaces o a las relaciones entre tablas.
--Es la restricción que se usa para realizar un enlace entre una llave primaria de una tabla y una llave foranea en otra tabla 
--Las tablas que tienen configurado los foreign key son llamadas tablas secundarias
--Una función es evitar que se inserten datos que no hagan match con su enlace en una llave primaria

create table Clientes(
idcliente int,
nombre varchar(20) not null,
apellido varchar(30) not null,
edad int not null
constraint PK_clientes primary key (idcliente)
);

create table Ordenes(
idorden int not null,
articulo varchar(50) not null,
idcliente int
constraint FK_ordenes_clientes foreign key references Clientes(idcliente)
);
--para borrar un foreign key
alter table Ordenes
drop constraint FK_ordenes_clientes;

insert into Clientes values(1, 'Juan', 'Perez', 30);
insert into Ordenes values(1, 'Martillo',1);

select * from Clientes;
select * from Ordenes;

-- si intento borrar de la tabla clientes un cliente que su idcliente se encuentra en
-- la tabla ordenes, no se va a poder borrar. Al reves si se puede.

-- la tabla clientes no se puede borrar por el foreign key
-- la tabla ordenes si se puede borrar. primero se borra la tabla ordenes y despues la tabla clientes

-- si despues de crear la tabla cientes creo la tabla ordenes de esta forma
create table Ordenes(
idorden int not null,
articulo varchar(50) not null,
idcliente int
constraint FK_ordenes_clientes foreign key references Clientes(idcliente)
on delete cascade
);
-- se puede borrar los registros de la tabla clientes
-- tambien se va a borrar automaticamente de la tabla ordenes