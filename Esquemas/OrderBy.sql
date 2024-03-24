--Order by: es una funcionalidad del lenguaje sql para organizar nuestras consultas por un campo especifico
---ya sean en valores ascendentes o descendentes

use Principal;

select * from Empleados order by edad;

select * from Empleados order by id asc;

select * from Empleados order by id desc;

select * from Empleados
where edad > 25 order by edad;

select nombre, apellido, edad, apellido from Empleados order by nombre, edad;