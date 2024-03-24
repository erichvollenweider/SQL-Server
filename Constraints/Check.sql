--Un check es utilizado para limitar el rango de valores que se puede permitir como registro dentro de una columna
--Cuando definimos la restricción check en una columna solo se permitirán los valores que especifiquemos dentro de esa cláusula
--Si definimos una restricción check en una tabla podemos limitar los valores de ciertas columnas en función de los valores en otras columnas de la misma fila
create table Personas3(
id int not null,
nombre varchar(10),
edad int,
check (edad>=18)
);

insert into Personas3 values (1, 'Juan', 18);
insert into Personas3 values (20, 'Pedro', 18);
insert into Personas3 values (2, 'Jose', 17);

select * from Personas3;

drop table Personas3;

--Otra forma
create table Personas3(
id int not null,
nombre varchar(10),
edad int check (edad>=18)
);

--Otra forma
create table Personas3(
id int not null,
nombre varchar(10),
edad int
--Para realizar nuestra configuración de mensaje personalizada de mi error
constraint CK_edad (edad>=18)
);

--Otra forma
create table Personas3(
id int not null,
nombre varchar(10),
edad int,
);
alter table Personas3
add check (edad>=18);
--Para borrar el check
alter table Personas3
--drop constraint nombre personalizado que le dimos o que le da el sistema;