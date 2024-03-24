--Unique asegura que todos los valores en una columna de una tabla sean diferentes
--Unique permite a diferencia de primary key valores de tipo null
create table Personas2(
indpersona int not null unique,
nombre varchar(10),
edad int
);

insert into Personas2 values(1, 'Alberto', 30);
insert into Personas2 values(2, 'Ana', 32);

select * from Personas2;

drop table Personas2;

--Otra forma
create table Personas2(
indpersona int not null,
nombre varchar(10),
edad int,
constraint UQ_idpersona unique(indpersona)
);

--
create table Personas2(
indpersona int not null,
clave varchar(10),
nombre varchar(10),
edad int,
constraint UQ_idpersona unique(indpersona),
constraint UQ_clave unique(clave)
);

--
create table Personas2(
indpersona int not null,
clave varchar(10),
nombre varchar(10),
edad int,
);
alter table Personas2
add constraint UQ_idpersona unique(indperona);

--Para borrar
alter table Personas2
drop constraint UQ_idpersona