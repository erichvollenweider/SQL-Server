-- Practico 3
-- Ejercicio 3
-- a)
-- Seleccion, Proyeccion y Join
-- selecciono el nombre y apellido de los alumnos que realizaron un taller que dura mas de 14hs
select alumno.nombre, alumno.apellido
from alumno inner join realiza
on alumno.nro_alumno = realiza.nro_alumno
inner join taller
on realiza.codigo_taller = taller.codigo_taller
where taller.duracion >= 15;

