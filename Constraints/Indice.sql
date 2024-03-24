select * from Empleados;

create clustered index I_idempleado
on empleados(id);

create nonclustered index I_edadempleado
on empleados(edad);

--Para cambiar el nombre del indice
exec sp_rename 'Empleados.I_idempleado', 'I_id', 'INDEX';

--Para borrar un indice
drop index I_id on Empleados;

--
create clustered index I_id_sal
on empleados(id, salario);