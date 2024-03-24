--Default: la restricción default es usada para establecer un valor por defecto en una columna
--En caso de que estemos insertando datos en una tabla y no ingresemos datos en un campo que tiene ya un valor default
--el valor configurado será el que se va a insertar automaticamente

drop table Personas2;

create table personas2(
idpersona int not null,
nombre varchar(10),
edad int not null,
ciudad varchar(50) default 'No tiene'
);

insert into Personas2 values(1, 'Pedro', 30, default);

select * from Personas2;

--Otra forma
create table personas2(
idpersona int not null,
nombre varchar(10),
edad int not null,
ciudad varchar(50)
);
alter table Personas2
add constraint DF_ciudad
default 'No tiene' for ciudad;
--Para borrar
alter table Personas2
drop constraint DF_ciudad;