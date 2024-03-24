select * from Empleados;
--Para buscar algo en particular en la tabla
select * from Empleados where nombre = 'Erich';
select * from Empleados where edad = 29;
select edad from Empleados where edad = 29;
--Para eliminar todos los registros de la tabla
truncate table Empleados;
delete from Empleados;
--Para eliminar una persona de la tabla
delete from Empleados where idempleado = 1