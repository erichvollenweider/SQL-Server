--Identity: un campo de tipo identity es un campo que incrementa su valor a medida de que vas recibiendo inserts de
--valores en esa tabla, cada vez que se inserta una nueva fila este campo va creciendo su valor automaticamente
--Solamente puede haber un campo de tipo identity por tabla

create table Libros(
codigo int identity,
titulo varchar(60) not null,
autor varchar(60) not null
);

insert into Libros values('1984', 'George Well');

select * from Libros;

delete from Libros where codigo = 1;

select ident_seed('Libros'); -- puedo ver el valor inicial del campo identity
select ident_incr('Libros'); -- puedo ver el rango de incremento

--Otra forma
create table Libros(
codigo int identity(10,1), -- Arranca de 10, incremento en 1
titulo varchar(60) not null,
autor varchar(60) not null
);

--para desactivar la regla de identity en una tabla
set identity_insert Libros on;

insert into Libros(codigo, titulo, autor)
values(2, 'Orgullo y prejuicio', 'Jane Austen');

--Para activar de nuevo
set identity_insert Libros off;