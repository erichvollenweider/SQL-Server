-- Ejercicio 1.a)
create table Articulos(
	id_articulo int not null unique primary key,
	descripcion varchar(50) not null,
	precio float check (precio > 0 and precio < 999999),
	cantidad int,
	stock_min int,
	stock_max int,
	Mes_Ult_Movim varchar(20),
	Fecha_Vto date,
	check (stock_min < stock_max)
);

-- Ejercicio 1.b

create table municipios(
	municipio varchar(20) not null primary key,
	provincia varchar(20) not null
);

create table personas(
	dni int not null primary key,
	nombre varchar(20) not null,
	apellido varchar(30) not null,
	edad int not null,
	municipio varchar(20) not null,
	constraint FK_personas_municipios foreign key (municipio) references municipios(municipio)
);

create table contagios(
	dni int not null,
	cepa int not null,
	constraint FK_contagios_personas foreign key (dni) references personas(dni)
);

create table vacunas(
	cod_vacuna int not null primary key,
	nombre varchar(45) check (nombre in ('COVID19', 'FIEBRE AMARILLA', 'DENGUE','BCG')) not null
);

create table vacunados(
	dni int not null,
	cod_vacuna int not null,
	constraint FK_vacunados_personas foreign key (dni) references personas(dni), 
	constraint FK_vacunados_personas2 foreign key (cod_vacuna) references vacunas(cod_vacuna) on delete cascade
);

-- Ejercicio 2

insert into Articulos values(1, 'Mayonesa', 250.5, 15, 10, 20, 'Diciembre', '2024-06-15');
insert into Articulos values(2, 'Savora', 300.75, 19, 12, 20, 'Diciembre', '2024-09-25');
insert into Articulos values(3, 'Oreo', 1200.5, 10, 10, 22, 'Junio', '2025-10-17');
insert into Articulos values(4, 'Talco', 3500.25, 12, 15, 30, 'Diciembre', '2024-06-15');
select * from Articulos;

insert into municipios values('Rio Cuarto', 'Cordoba');
insert into personas values(33348556, 'Lionel', 'Messi', 36,'Rio Cuarto');
insert into contagios values(33348556, 3);
insert into vacunas values(1, 'COVID19');
insert into vacunados values(33348556, 1);

insert into municipios values('Laborde', 'Cordoba');
insert into personas values(32260650, 'Cristiano', 'Ronaldo', 37,'Laborde');
insert into contagios values(32260650, 2);
insert into vacunas values(1, 'COVID19');
insert into vacunados values(32260650, 1);

insert into municipios values('Pascanas', 'Cordoba');
insert into personas values(32444211, 'Sergio', 'Aguero', 37,'Pascanas');
insert into contagios values(32444211, 2);
insert into vacunas values(2, 'FIEBRE AMARILLA');
insert into vacunados values(32444211, 2);

insert into personas values(22565777, 'Mario', 'Bross', 41,'Laborde');
insert into contagios values(22565777, 1);
insert into vacunas values(3, 'DENGUE');
insert into vacunados values(22565777, 3);

select * from municipios;
select * from personas;
select * from contagios;
select * from vacunas;
select * from vacunados;


-- Ejercicio 4

-- alter table vacunados
-- drop constraint FK_vacunados_personas2;

-- alter table vacunados
-- drop constraint FK_vacunados_personas;

-- alter table vacunados
-- add constraint FK_vacunados_personas foreign key (dni) references personas(dni);

-- alter table vacunados
-- add constraint FK_vacunados_personas2 foreign key (cod_vacuna) references vacunas(cod_vacuna) on delete cascade;

delete from vacunas where cod_vacuna = 1;

-- Ejercicio 5
