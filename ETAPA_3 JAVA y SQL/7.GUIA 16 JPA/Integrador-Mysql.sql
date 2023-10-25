-- CANDADO A
-- Teniendo el máximo de asistencias por partido, muestre cuantas veces se logró dicho máximo.
SELECT COUNT(Asistencias_por_partido) FROM estadisticas
WHERE Asistencias_por_partido = (SELECT MAX(Asistencias_por_partido) FROM estadisticas);
SELECT Asistencias_por_partido from estadisticas order by Asistencias_por_partido desc; 
-- Verifico que cantidad de veces se repite la asistencia mas alta.
-- Posicion del candado A es 2

-- Muestre la suma total del peso de los jugadores, donde la conferencia sea Este y la posición sea
-- centro o esté comprendida en otras posiciones.
SELECT Conferencia from equipos;
SELECT Posicion from jugadores;
SELECT sum(J.Peso) FROM jugadores j JOIN equipos e ON j.Nombre_equipo = e.Nombre
WHERE e.Conferencia = 'East' and j.posicion LIKE '%C%';
-- La CLAVE del candado A es 14043

-- CANDADO B
-- Muestre la cantidad de jugadores que poseen más asistencias por partidos, que el numero de
-- jugadores que tiene el equipo Heat.
SELECT count(Nombre_equipo) from jugadores where Nombre_equipo = 'Heat'; -- 16
SELECT COUNT(Asistencias_por_partido) FROM estadisticas
WHERE Asistencias_por_partido > (SELECT count(Nombre_equipo) from jugadores where Nombre_equipo = 'Heat'); 
-- Posicion Candado B = 3
    
-- La clave será igual al conteo de partidos jugados durante las temporadas del año 1999.
SELECT * from partidos ;
SELECT COUNT(temporada) FROM partidos WHERE temporada like '%99%'; 
-- CLAVE 3480

-- CANDADO C
-- La posición del código será igual a la cantidad de jugadores que proceden de Michigan y forman
-- parte de equipos de la conferencia oeste. // 2
-- Al resultado obtenido lo dividiremos por la cantidad de jugadores cuyo peso es mayor o igual a
-- 195, y a eso le vamos a sumar 0.9945.
SELECT count(j.Nombre_equipo) from jugadores j JOIN equipos e ON j.Nombre_equipo = e.Nombre
WHERE e.Conferencia LIKE '%West%' and j.Procedencia = 'Michigan';
Select count(codigo) from jugadores where peso>=195; -- 362
-- Entonces calculamos 2 / 362 + 0.9945 = 1
-- La posicion del candado C es 1

-- Para obtener el siguiente código deberás redondear hacia abajo el resultado que se devuelve de
-- sumar: el promedio de puntos por partido, el conteo de asistencias por partido, y la suma de
-- tapones por partido. Además, este resultado debe ser, donde la división sea central.
select (avg(es.Puntos_por_partido)) from estadisticas es 
join jugadores j on es.jugador=j.codigo
join equipos eq on j.Nombre_equipo=eq.Nombre
WHERE eq.Division like '%Central%'; -- 9.699348967522383
select (count(Asistencias_por_partido)) from estadisticas es 
join jugadores j on es.jugador=j.codigo
join equipos eq on j.Nombre_equipo=eq.Nombre
WHERE eq.Division like '%Central%'; -- 384
select (sum(Tapones_por_partido)) from estadisticas es 
join jugadores j on es.jugador=j.codigo
join equipos eq on j.Nombre_equipo=eq.Nombre
WHERE eq.Division like '%Central%'; -- 237.64000104740262
-- Calculo la suma de los resultados. 9.699348967522383 + 384 + 237.64000104740262 = 631 (redondeado)
-- La Clave del candado c es 631

-- CANDADO D
-- Muestre los tapones por partido del jugador Corey Maggette durante la temporada 00/01. Este
-- resultado debe ser redondeado. Nota: el resultado debe estar redondeado
select round(es.Tapones_por_partido) from estadisticas es join jugadores j on es.jugador=j.codigo
where j.nombre = 'Corey Maggette' and es.temporada = '00/01';
-- Posicion 4

-- Para obtener el siguiente código deberás redondear hacia abajo, la suma de puntos por partido
-- de todos los jugadores de procedencia argentina.
SELECT round(sum(es.Puntos_por_partido)) from estadisticas es join jugadores j on es.jugador=j.codigo
where Procedencia = 'Argentina';
-- Clave de candado D = 191


SELECT 
    (SELECT 
            COUNT(*)         FROM
            estadisticas
        WHERE
            asistencias_por_partido = (SELECT 
                    MAX(asistencias_por_partido)
                FROM
                    estadisticas)) AS Posicion_Candado_A,
    (SELECT 
            SUM(peso) FROM
            jugadores
        WHERE
            posicion LIKE '%C%'
                AND nombre_equipo IN (SELECT 
                    nombre
                FROM
                    equipos
                WHERE
                    conferencia = 'East')) AS Clave_Candado_A
FROM
    estadisticas
LIMIT 1;

-- ---------- CANDADO B

SELECT 
    (SELECT 
            COUNT(*) AS posicion_candado_B
        FROM
            estadisticas
        WHERE
            asistencias_por_partido > (SELECT 
                    COUNT(*)
                FROM
                    jugadores
                WHERE
                    nombre_equipo = 'Heat')) AS Posicion_Candado_B,
    (SELECT 
            COUNT(*)
        FROM
            partidos
        WHERE
            temporada LIKE '%99%') AS clave_Candado_B
FROM
    partidos
LIMIT 1;

-- ---------- CANDADO C
SELECT 
    (SELECT 
            ROUND((((SELECT 
                                COUNT(*)
                            FROM
                                jugadores j
                                    INNER JOIN
                                equipos e ON j.nombre_equipo = e.nombre
                            WHERE
                                j.procedencia = 'Michigan'
                                    AND e.conferencia = 'West') / (SELECT 
                                COUNT(*)
                            FROM
                                jugadores
                            WHERE
                                peso >= 195)) + 0.9945))
        FROM
            jugadores
        LIMIT 1) AS posicion_candado_C,
    (SELECT 
            ROUND(AVG(puntos_por_partido) + COUNT(asistencias_por_partido) + SUM(tapones_Por_partido))
        FROM
            estadisticas
        WHERE
            jugador IN (SELECT 
                    j.codigo
                FROM
                    jugadores AS j
                        INNER JOIN
                    equipos e ON e.nombre = j.nombre_Equipo
                WHERE
                    e.Division = 'Central')) AS clave_candado_C
FROM
    equipos
LIMIT 1;

-- ---------- CANDADO D
SELECT 
    (SELECT 
            ROUND(SUM(tapones_por_partido)) AS posicion_Candado_D
        FROM
            estadisticas
        WHERE
            jugador = (SELECT 
                    codigo
                FROM
                    jugadores
                WHERE
                    nombre = 'Corey Maggette')
                AND temporada = '00/01') AS pocision_candado_D,
    (SELECT 
            ROUND(SUM(puntos_por_partido))
        FROM
            estadisticas e
                RIGHT JOIN
            jugadores j ON j.codigo = e.jugador
        WHERE
            j.procedencia = 'Argentina') AS clave_candado_D
FROM
    estadisticas
LIMIT 1;