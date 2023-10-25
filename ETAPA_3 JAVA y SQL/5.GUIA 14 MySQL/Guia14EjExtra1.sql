-- 1. Mostrar el nombre de todos los jugadores ordenados alfabéticamente.
SELECT Nombre FROM jugadores ORDER BY Nombre ASC;

-- 2. Mostrar el nombre de los jugadores que sean pivots (‘C’) y que pesen más de 200 libras, ordenados por nombre alfabéticamente.
SELECT Nombre FROM jugadores WHERE Posicion LIKE '%C%' AND Peso>200 ORDER BY Nombre ASC;

-- 3. Mostrar el nombre de todos los equipos ordenados alfabéticamente.
SELECT Nombre FROM equipos ORDER BY Nombre ASC;

-- 4. Mostrar el nombre de los equipos del este (East).
SELECT Nombre FROM equipos WHERE Conferencia = 'East';

-- 5. Mostrar los equipos donde su ciudad empieza con la letra ‘c’, ordenados por nombre.
SELECT Nombre FROM equipos WHERE Ciudad LIKE 'C%' ORDER BY Nombre;

-- 6. Mostrar todos los jugadores y su equipo ordenados por nombre del equipo.
SELECT Nombre, Nombre_equipo FROM jugadores ORDER BY Nombre_equipo ASC;

-- 7. Mostrar todos los jugadores del equipo “Raptors” ordenados por nombre.
SELECT Nombre as 'jugadores de Raptors' FROM jugadores WHERE Nombre_equipo = 'Raptors' ORDER BY Nombre ASC;

-- 8. Mostrar los puntos por partido del jugador ‘Pau Gasol’.
SELECT Puntos_por_partido AS 'Puntos de Pau Gasol'FROM estadisticas WHERE jugador = (SELECT codigo FROM jugadores WHERE Nombre = 'Pau Gasol');

-- 9. Mostrar los puntos por partido del jugador ‘Pau Gasol’ en la temporada ’04/05′.
SELECT Puntos_por_partido AS 'Puntos de Pau Gasol'FROM estadisticas WHERE jugador = (SELECT codigo FROM jugadores WHERE Nombre = 'Pau Gasol') AND temporada='04/05';

-- 10. Mostrar el número de puntos de cada jugador en toda su carrera.
SELECT jugadores.Nombre, ROUND((sum(estadisticas.Puntos_por_partido)),2) AS 'Numero de puntos'
FROM jugadores JOIN estadisticas ON jugadores.codigo = estadisticas.jugador
GROUP BY estadisticas.jugador;

-- 11. Mostrar el número de jugadores de cada equipo.
SELECT Nombre_equipo, COUNT(Nombre_equipo) as 'Numero de jugadores' FROM jugadores GROUP BY Nombre_equipo;

-- 12. Mostrar el jugador que más puntos ha realizado en toda su carrera.
SELECT jugadores.Nombre as 'Jugador con mas puntos', estadisticas.Puntos_por_partido FROM jugadores JOIN estadisticas
ON jugadores.codigo = estadisticas.jugador
WHERE estadisticas.Puntos_por_partido = (SELECT MAX(Puntos_por_partido) FROM estadisticas);
-- el jugador que hizo el mejor puntaje
SELECT jugadores.Nombre as 'Jugador con mas puntos', round(sum(estadisticas.Puntos_por_partido),2) as puntos FROM jugadores inner JOIN estadisticas
ON jugadores.codigo = estadisticas.jugador
group by jugadores.Nombre
order by puntos desc
limit 1;
-- el jugador que sumo mas puntos en su carrera

-- 13. Mostrar el nombre del equipo, conferencia y división del jugador más alto de la NBA.
SELECT Nombre,Conferencia,Division FROM equipos WHERE Nombre = (SELECT Nombre_equipo FROM jugadores WHERE Altura = (SELECT MAX(Altura) FROM jugadores));

-- 14. Mostrar la media de puntos en partidos de los equipos de la división Pacific.
SELECT jugadores.Nombre_equipo as Equipo, ROUND(AVG(estadisticas.Puntos_por_partido),2) as MEDIA FROM estadisticas JOIN jugadores 
ON estadisticas.jugador = jugadores.codigo
WHERE jugadores.Nombre_equipo in (SELECT Nombre FROM equipos WHERE Division = 'Pacific')
GROUP BY jugadores.Nombre_equipo;
select *from estadisticas JOIN jugadores 
ON estadisticas.jugador = jugadores.codigo
where jugadores.Nombre_equipo in (SELECT Nombre FROM equipos WHERE Nombre = 'Kings');

SELECT AVG((e.Puntos_por_partido))  media_puntos
FROM estadisticas e
INNER JOIN jugadores j 
on e.jugador = j.codigo
where j.Nombre_equipo in (select nombre from equipos where Division = 'pacific')
group by j.Nombre_equipo;

-- 15. Mostrar el partido o partidos (equipo_local, equipo_visitante y diferencia) con mayor diferencia de puntos.
SELECT equipo_local, equipo_visitante, ABS(puntos_local-puntos_visitante) AS Diferencia FROM partidos
WHERE ABS(puntos_local-puntos_visitante) = (SELECT MAX(ABS(puntos_local-puntos_visitante)) FROM partidos);

-- 16. Mostrar la media de puntos en partidos de los equipos de la división Pacific. (repetido)
-- 17. Mostrar los puntos de cada equipo en los partidos, tanto de local como de visitante.
SELECT codigo as Partido, equipo_local, puntos_local, equipo_visitante, puntos_visitante FROM partidos;

-- 18. Mostrar quien gana en cada partido (codigo, equipo_local, equipo_visitante,
-- equipo_ganador), en caso de empate sera null.
SELECT partidos.codigo, partidos.equipo_local, partidos.equipo_visitante, equipos.Nombre as 'Equipo ganador'
FROM partidos JOIN equipos ON partidos.codigo = equipos.Nombre
WHERE equipos.Nombre = ((SELECT equipo_local FROM equipos WHERE puntos_local> puntos_visitante),(SELECT equipo_visitante FROM equipos WHERE puntos_local< puntos_visitante));
