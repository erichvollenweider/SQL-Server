-- Practica 3
-- Ejercicio 4
-- a)
select nombre from competidor
inner join deporte
on competidor.cod_deporte = deporte.cod_deporte
where deporte.denominacion = "futbol";

-- b)
select pais from medalla where cantidad = 0;
