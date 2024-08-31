rem 
rem UCEVA 
rem Author  : DIANA CAROLINA GOMEZ GONZALEZ
rem 

rem 
rem En este script se crea un usuario  airbnb
rem 

rem
rem Cleaning
DROP USER airbnb CASCADE;
rem
rem user creation
rem 

CREATE USER airbnb IDENTIFIED BY airbnb;

rem
rem Giving privileges
rem
GRANT CREATE SESSION, CREATE TABLE , CREATE VIEW, CREATE SEQUENCE,CREATE SYNONYM
TO airbnb ;

rem
rem A number of gigabytes is assigned
rem
ALTER USER airbnb QUOTA 10G ON USERS;
rem
rem The session is altered and a schema is created with its user other than sys
rem
ALTER SESSION SET CURRENT_SCHEMA=airbnb;
rem
rem 
rem En el siguiente script airbnb es donde se crea una las tablas correspondiente al schema relacional 
rem 
@@airbnb.sql

rem 
rem En el siguiente script airbnb Se pasa a realizar los CONSTRAINTS o restricciones que tiene cada tabla del esquema 
rem 

@@Constraints.sql
rem
rem 
rem En este script insertAirbnb es donde se colocan datos de prueba para verificar que las tablas estes correctas con sus restricciones 
rem 
@@insertAirbnb.sql

rem
rem Fin del script!!
rem