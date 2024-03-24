--Distinct: la función distinct es utilizada para seleccionar valores unicos de una columna o un conjunto de columnas
--dentro de una consulta, esto devuelve solo los valores distintos y elimina las repeticiones de datos en el resultaddo 

drop table Clientes2;

CREATE TABLE Clientes2 (
id_cliente INT NOT NULL PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
apellido VARCHAR(20) NOT NULL,
pais VARCHAR(50) NOT NULL,
compras INT NULL
);
  
insert into Clientes2 values(1, 'Juan', 'Pérez', 'Estados Unidos', 1);
insert into Clientes2 values(2, 'María', 'Gómez', 'Argentina', 2);
insert into Clientes2 values(3, 'Carlos', 'López', 'Brasil', NULL);
insert into Clientes2 values(4, 'Laura', 'Martínez', 'Canadá', 4);
insert into Clientes2 values(5, 'Pedro', 'Hernández', 'China', 5);
insert into Clientes2 values(6, 'Ana', 'Ruiz', 'Colombia', NULL);
insert into Clientes2 values(7, 'Luis', 'Torres', 'Egipto', 7);
insert into Clientes2 values(8, 'Marta', 'Sánchez', 'España', 8);
insert into Clientes2 values(9, 'Roberto', 'García', 'Francia', 9);
insert into Clientes2 values(10, 'Sofía', 'López', 'Alemania', 10);
insert into Clientes2 values(11, 'David', 'Hernández', 'Argentina', NULL);
insert into Clientes2 values(12, 'Andrea', 'Gómez', 'Brasil', 12);
insert into Clientes2 values(13, 'Fernando', 'Pérez', 'Canadá', 13);
insert into Clientes2 values(14, 'Patricia', 'Martínez', 'China', 14);
insert into Clientes2 values(15, 'Javier', 'López', 'Colombia', 15);
insert into Clientes2 values(16, 'Carmen', 'Ruiz', 'Egipto', NULL);
insert into Clientes2 values(17, 'Ricardo', 'Torres', 'España', 17);
insert into Clientes2 values(18, 'Marina', 'Sánchez', 'Francia', 18);
insert into Clientes2 values(19, 'Alejandro', 'García', 'Alemania', 19);
insert into Clientes2 values(20, 'Claudia', 'López', 'Argentina', 20);
insert into Clientes2 values(21, 'Fernanda', 'Gómez', 'Brasil', 21);
insert into Clientes2 values(22, 'Rodrigo', 'Pérez', 'Canadá', 22);
insert into Clientes2 values(23, 'Luisa', 'Martínez', 'China', 23);
insert into Clientes2 values(24, 'Emilio', 'Hernández', 'Colombia', 24);
insert into Clientes2 values(25, 'Valeria', 'Ruiz', 'Egipto', 25);
insert into Clientes2 values(26, 'Rafael', 'Torres', 'España', 26);
insert into Clientes2 values(27, 'Camila', 'Sánchez', 'Francia', 27);
insert into Clientes2 values(28, 'Gabriel', 'García', 'Alemania', NULL);
insert into Clientes2 values(29, 'Isabella', 'López', 'Argentina', NULL);
insert into Clientes2 values(30, 'Santiago', 'Pérez', 'Brasil', 30);

select * from Clientes2;

select distinct pais from Clientes2;

select distinct id_cliente from Clientes2
where pais = 'Argentina';

select distinct(pais) from Clientes2
where compras is null;