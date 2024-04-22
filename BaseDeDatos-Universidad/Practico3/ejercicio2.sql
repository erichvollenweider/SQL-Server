use ejercicio2;

-- Practica 3
-- Ejercicio 2
-- a)
select * from competencia;
select * from competencia where categoria > 2;

-- b)
SELECT *
FROM club
INNER JOIN participacion ON club.nro_club = participacion.nro_club
INNER JOIN competencia ON participacion.nro_competencia = competencia.nro_competencia
WHERE competencia.categoria = 2;

-- c)
SELECT nombre_club
FROM club
INNER JOIN participacion ON club.nro_club = participacion.nro_club
INNER JOIN competencia ON participacion.nro_competencia = competencia.nro_competencia
WHERE competencia.categoria = 2;