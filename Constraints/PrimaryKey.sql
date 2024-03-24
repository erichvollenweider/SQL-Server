create table Personas(
idpersona int primary key, --primary key permite valores únicos es decir, no repetidos
nombre varchar(10) not null,
edad int not null
);

insert into Personas values(1, 'Jose', 50);
insert into Personas values(2, 'Tomas', 40);

select * from Personas;

-- Otra forma de configurar una llave primaria
drop table Personas;

create table Personas(
idpersona int,
nombre varchar(10) not null,
edad int not null
primary key (idpersona)
);

--Otra forma
create table Personas(
idpersona int,
nombre varchar(10) not null,
edad int not null,
constraint PK_enlace_persona primary key (idpersona);
);

--Otra forma si ya tengo creada la tabla y quiero agregar un primary key
create table Personas(
idpersona int not null,
nombre varchar(10) not null,
edad int not null
);
alter table Personas
add constraint PK_enlace primary key (idpersona);

--Para borrar una llave primaria
alter table Personas drop constraint PK_enlace;