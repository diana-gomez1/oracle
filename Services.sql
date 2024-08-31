rem 
rem UCEVA 
rem Author  : DIANA CAROLINA GOMEZ GONZALEZ
rem 

rem 
rem Este es un script de de servicio en el que se puede borrar todos los datos de tablas y las diferentes restricciones
rem 

rem 
rem Eliminar todos los datos de cada tabla 
rem
DELETE FROM PlaceAmenity;
DELETE FROM Review;
DELETE FROM Place;
DELETE FROM City;
DELETE FROM State;
DELETE FROM customer;
DELETE FROM Amenity;


rem
rem Eliminar las restricciones 
rem
ALTER TABLE placeamenity DROP CONSTRAINT fk_placeamenity_place;
ALTER TABLE placeamenity DROP CONSTRAINT fk_placeamenity_amenity;
ALTER TABLE review DROP CONSTRAINT fk_review_place;
ALTER TABLE review DROP CONSTRAINT fk_review_customer;
ALTER TABLE place DROP CONSTRAINT fk_place_city;
ALTER TABLE place DROP CONSTRAINT fk_place_customer;
ALTER TABLE city DROP CONSTRAINT fk_city_state;

rem
rem Eliminar todas las  tablas
rem
DROP TABLE PLACEAMENITY;
DROP TABLE REVIEW;
DROP TABLE PLACE;
DROP TABLE CITY;
DROP TABLE STATE;
DROP TABLE CUSTOMER;
DROP TABLE AMENITY;
