--Selecciona los primeros 5
select top 5 * from Empleados;

--Selecciona un porcentaje de la tabla
select top 50 percent * from Empleados;

--Selecciona los primeros 5 que cumplan cierta propiedad
select top 5 * from Empleados
where edad = 30;