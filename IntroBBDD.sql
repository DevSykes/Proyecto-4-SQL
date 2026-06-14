-- -----------------------------------------------------------------------------
-- EJERCICIO 1:
-- Escribe una consulta que recupere los Vuelos (flights) y su 
-- identificador que figuren con status 'On Time'.
-- -----------------------------------------------------------------------------

SELECT flight_id, flight_no 
FROM flights 
WHERE status = 'On Time';

-- -----------------------------------------------------------------------------
-- EJERCICIO 2:
-- Escribe una consulta que extraiga todas las columnas de la tabla 
-- bookings y refleje todas las reservas que han supuesto una cantidad total 
-- mayor a 1.000.000 unidades monetarias (Rublos).
-- -----------------------------------------------------------------------------

SELECT * FROM bookings 
WHERE total_amount > 1000000;

-- -----------------------------------------------------------------------------
-- EJERCICIO 3:
-- Escribe una consulta que extraiga todas las columnas de los datos 
-- de los modelos de aviones disponibles (aircraft_data o aircrafts_data).
-- -----------------------------------------------------------------------------

SELECT * FROM aircrafts_data;

-- -----------------------------------------------------------------------------
-- EJERCICIO 4:
-- Con el resultado anterior visualizado previamente, escribe una 
-- consulta que extraiga los identificadores de vuelo que han volado con un 
-- Boeing 737. (Código Modelo Avión = 733).
-- -----------------------------------------------------------------------------

SELECT flight_id 
FROM flights 
WHERE aircraft_code = '733';

-- -----------------------------------------------------------------------------
-- EJERCICIO 5:
-- Escribe una consulta que te muestre la información detallada de 
-- los tickets que han comprado las personas que se llaman Irina.
-- -----------------------------------------------------------------------------

SELECT * FROM tickets 
WHERE UPPER(passenger_name) LIKE '%IRINA%';

-- -----------------------------------------------------------------------------
-- EJERCICIO 6:
-- Mostrar las ciudades con más de un aeropuerto.
-- -----------------------------------------------------------------------------

SELECT city->>'en' AS ciudad 
FROM airports_data 
GROUP BY city->>'en' 
  HAVING COUNT(*) > 1
ORDER BY ciudad;

-- -----------------------------------------------------------------------------
-- EJERCICIO 7:
-- Mostrar el número de vuelos por modelo de avión.
-- -----------------------------------------------------------------------------

SELECT aircraft_code, COUNT(*) AS total_vuelos 
FROM flights 
GROUP BY aircraft_code;

-- -----------------------------------------------------------------------------
-- EJERCICIO 8:
-- Reservas con más de un billete (varios pasajeros).
-- -----------------------------------------------------------------------------

SELECT book_ref, COUNT(*) AS numero_billetes 
FROM tickets 
GROUP BY book_ref 
  HAVING COUNT(*) > 1;

-- -----------------------------------------------------------------------------
-- EJERCICIO 9:
-- Vuelos con retraso de salida superior a una hora.
-- -----------------------------------------------------------------------------

SELECT flight_id 
FROM flights 
WHERE actual_departure > scheduled_departure + INTERVAL '1 hour'
  AND actual_departure IS NOT NULL;
