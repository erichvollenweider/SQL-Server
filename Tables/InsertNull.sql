DROP TABLE CLIENTES;

create table Clientes(
idcliente int not null,
nombre varchar(10) not null,
direccion varchar(100) not null,
telefono numeric(10) null,
email varchar(50) null
);

insert into clientes values(1, 'Manuel', 'Calle segunda', null, null);

select * from Clientes;