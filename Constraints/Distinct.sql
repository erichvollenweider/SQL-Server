--Distinct: la funci�n distinct es utilizada para seleccionar valores unicos de una columna o un conjunto de columnas
--dentro de una consulta, esto devuelve solo los valores distintos y elimina las repeticiones de datos en el resultaddo 

drop table Clientes2;

CREATE TABLE Clientes2 (
id_cliente INT NOT NULL PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
apellido VARCHAR(20) NOT NULL,
pais VARCHAR(50) NOT NULL,
compras INT NULL
);
  
insert into Clientes2 values(1, 'Juan', 'P�rez', 'Estados Unidos', 1);
insert into Clientes2 values(2, 'Mar�a', 'G�mez', 'Argentina', 2);
insert into Clientes2 values(3, 'Carlos', 'L�pez', 'Brasil', NULL);
insert into Clientes2 values(4, 'Laura', 'Mart�nez', 'Canad�', 4);
insert into Clientes2 values(5, 'Pedro', 'Hern�ndez', 'China', 5);
insert into Clientes2 values(6, 'Ana', 'Ruiz', 'Colombia', NULL);
insert into Clientes2 values(7, 'Luis', 'Torres', 'Egipto', 7);
insert into Clientes2 values(8, 'Marta', 'S�nchez', 'Espa�a', 8);
insert into Clientes2 values(9, 'Roberto', 'Garc�a', 'Francia', 9);
insert into Clientes2 values(10, 'Sof�a', 'L�pez', 'Alemania', 10);
insert into Clientes2 values(11, 'David', 'Hern�ndez', 'Argentina', NULL);
insert into Clientes2 values(12, 'Andrea', 'G�mez', 'Brasil', 12);
insert into Clientes2 values(13, 'Fernando', 'P�rez', 'Canad�', 13);
insert into Clientes2 values(14, 'Patricia', 'Mart�nez', 'China', 14);
insert into Clientes2 values(15, 'Javier', 'L�pez', 'Colombia', 15);
insert into Clientes2 values(16, 'Carmen', 'Ruiz', 'Egipto', NULL);
insert into Clientes2 values(17, 'Ricardo', 'Torres', 'Espa�a', 17);
insert into Clientes2 values(18, 'Marina', 'S�nchez', 'Francia', 18);
insert into Clientes2 values(19, 'Alejandro', 'Garc�a', 'Alemania', 19);
insert into Clientes2 values(20, 'Claudia', 'L�pez', 'Argentina', 20);
insert into Clientes2 values(21, 'Fernanda', 'G�mez', 'Brasil', 21);
insert into Clientes2 values(22, 'Rodrigo', 'P�rez', 'Canad�', 22);
insert into Clientes2 values(23, 'Luisa', 'Mart�nez', 'China', 23);
insert into Clientes2 values(24, 'Emilio', 'Hern�ndez', 'Colombia', 24);
insert into Clientes2 values(25, 'Valeria', 'Ruiz', 'Egipto', 25);
insert into Clientes2 values(26, 'Rafael', 'Torres', 'Espa�a', 26);
insert into Clientes2 values(27, 'Camila', 'S�nchez', 'Francia', 27);
insert into Clientes2 values(28, 'Gabriel', 'Garc�a', 'Alemania', NULL);
insert into Clientes2 values(29, 'Isabella', 'L�pez', 'Argentina', NULL);
insert into Clientes2 values(30, 'Santiago', 'P�rez', 'Brasil', 30);

select * from Clientes2;

select distinct pais from Clientes2;

select distinct id_cliente from Clientes2
where pais = 'Argentina';

select distinct(pais) from Clientes2
where compras is null;