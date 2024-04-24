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

insert into Articulos values(1, 'Mayonesa', 250.5, 15, 10, 20, 'Diciembre', '2024-06-15');
insert into Articulos values(2, 'Savora', 300.75, 19, 12, 20, 'Diciembre', '2024-09-25');
insert into Articulos values(3, 'Oreo', 1200.5, 10, 10, 22, 'Junio', '2025-10-17');
insert into Articulos values(4, 'Talco', 3500.25, 12, 15, 30, 'Diciembre', '2024-06-15');
select * from Articulos;

-- Ejercicio 1.b
create table Vacunas (
	cod_persona int not null unique primary key,
	nombre_persona varchar(45) not null,
	edad int check (edad < 21),
	nombre_vacuna varchar(45) check (nombre_vacuna in ('COVID19', 'FIEBRE AMARILLA', 'DENGUE','BCG')) not null
);

insert into Vacunas values(1, 'Lionel Messi', 20, 'COVID19');
insert into Vacunas values(2, 'Cristiano Ronaldo', 19, 'DENGUE');
insert into Vacunas values(3, 'Neymar Jr', 14, 'FIEBRE AMARILLA');
insert into Vacunas values(4, 'Sergio Agüero', 17, 'BCG');


