create table Clientes(
idcliente int,
nombre varchar(10),
apellido varchar(20),
direccion varchar(100)
);

insert into Clientes values(1, 'Juan','Perez','Calle A, Ciudad');
insert into Clientes values(2, 'Maria', NULL, 'Calle B Ciudad');
insert into Clientes values(3,'Carlos','Lopez', NULL);
insert into Clientes values(4, NULL, 'Rodriguez', 'Calle D Ciudad');
insert into Clientes values(5,'Pedro', NULL, NULL);
insert into Clientes values(6,NULL ,NULL,  'Calle D Ciudad');
insert into Clientes values(7,'Luis','Gonzales', 'Calle G Ciudad');
insert into Clientes values(8, NULL, 'Díaz', NULL);
insert into Clientes values(9,'Jorge', NULL,' Calle I Ciudad');
insert into Clientes values(10,NULL, NULL, NULL);
insert into Clientes values(11,'Ana', 'Hernandez', 'Calle M Ciudad');
insert into Clientes values(12,NULL, NULL, 'Calle M Ciudad'); 
insert into Clientes values(13,NULL, 'Sanchez', NULL);
insert into Clientes values(14,'Sofía', NULL, 'Calle M Ciudad');
insert into Clientes values(15,NULL, NULL,  'Calle P Ciudad');
insert into Clientes values(16,'Daniel', 'Garcia', NULL);
insert into Clientes values(17,'Martha','Fernandez', NULL);
insert into Clientes values(18,NULL, 'Martinez',  'Calle Q Ciudad');
insert into Clientes values(19,'Pablo', NULL, NULL);
insert into Clientes values(20, NULL, 'Lopez', 'Calle S Ciudad');

select * from Clientes;
select * from Clientes where nombre is null;
select * from Clientes where nombre is not null;

update Clientes set direccion = 'No tiene'
where direccion is null;

delete from Clientes where nombre is null;