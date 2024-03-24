select * from Empleados;

--Actualización de un campo en particular
update Empleados set telefono = 0123456789
where id = 5;

--Actualización de todos los campos
update Empleados set activo = 'Si';

--Actualización de varios campos
update Empleados set telefono = 0123456789
where id in(4,5,6,7,8);

select * from Empleados where edad in(25, 26, 31);

delete from Empleados where id in(5,7,9);