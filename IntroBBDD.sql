-- =============================================================================
-- PROYECTO 4: SQL - EXTRACCIÓN DE DATOS Y OPERACIONES DE LECTURA
-- Base de Datos: Bookings Demo DB (PostgreSQL)
-- =============================================================================

-- =============================================================================
-- EJERCICIOS OBLIGATORIOS
-- =============================================================================

-- -----------------------------------------------------------------------------
-- EJERCICIO 1
-- Enunciado: Escribe una consulta que recupere los Vuelos (flights) y su 
-- identificador que figuren con status 'On Time'.
-- -----------------------------------------------------------------------------

SELECT flight_id FROM flights  WHERE status = 'On Time';

-- -----------------------------------------------------------------------------
-- EJERCICIO 2
-- Enunciado: Escribe una consulta que extraiga todas las columnas de la tabla 
-- bookings y refleje todas las reservas que han supuesto una cantidad total 
-- mayor a 1.000.000 unidades monetarias (Rublos).
-- -----------------------------------------------------------------------------

SELECT * FROM bookings WHERE total_amount > 1000000;

-- -----------------------------------------------------------------------------
-- EJERCICIO 3
-- Enunciado: Escribe una consulta que extraiga todas las columnas de los datos 
-- de los modelos de aviones disponibles (aircraft_data o aircrafts_data).
-- -----------------------------------------------------------------------------

SELECT * FROM aircraft_data;

-- -----------------------------------------------------------------------------
-- EJERCICIO 4
-- Enunciado: Con el resultado anterior visualizado previamente, escribe una 
-- consulta que extraiga los identificadores de vuelo que han volado con un 
-- Boeing 737. (Código Modelo Avión = 733).
-- -----------------------------------------------------------------------------

SELECT flight_id FROM flights WHERE aircraft_code = '733';

-- -----------------------------------------------------------------------------
-- EJERCICIO 5
-- Enunciado: Escribe una consulta que te muestre la información detallada de 
-- los tickets que han comprado las personas que se llaman Irina.
-- -----------------------------------------------------------------------------

SELECT * FROM tickets WHERE passenger_name LIKE '%IRINA%'


-- =============================================================================
-- EJERCICIOS OPCIONALES (PRÁCTICA ADICIONAL)
-- =============================================================================

-- -----------------------------------------------------------------------------
-- EJERCICIO 6
-- Enunciado: Mostrar las ciudades con más de un aeropuerto.
-- -----------------------------------------------------------------------------

SELECT city FROM Airports GROUP BY city HAVING COUNT(*) > 1;

-- -----------------------------------------------------------------------------
-- EJERCICIO 7
-- Enunciado: Mostrar el número de vuelos por modelo de avión.
-- -----------------------------------------------------------------------------

SELECT aircraft_code, COUNT(*) FROM flights GROUP BY aircraft_code;

-- -----------------------------------------------------------------------------
-- EJERCICIO 8
-- Enunciado: Reservas con más de un billete (varios pasajeros).
-- -----------------------------------------------------------------------------



-- -----------------------------------------------------------------------------
-- EJERCICIO 9
-- Enunciado: Vuelos con retraso de salida superior a una hora.
-- -----------------------------------------------------------------------------


-- =============================================================================
-- FIN DE LOS EJERCICIOS - IntroBBDD.sql
-- =============================================================================