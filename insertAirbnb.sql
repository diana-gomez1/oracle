rem 
rem UCEVA 
rem Author  : DIANA CAROLINA GOMEZ GONZALEZ
rem 

rem 
rem En este script se insertan datos del esquema creado
rem 

rem 
rem Eliminar todos los datos de cada tabla 
rem 
rem DELETE FROM PlaceAmenity;
rem DELETE FROM Review;
rem DELETE FROM Place;
rem DELETE FROM City;
rem DELETE FROM State;
rem DELETE FROM customer;
rem DELETE FROM Amenity;
rem 


rem
rem Insertar datos en State
rem
INSERT INTO state (id, updated_at, created_at, name) VALUES
('state1', SYSDATE, SYSDATE, 'California'),
('state2', SYSDATE, SYSDATE, 'Texas');

rem
rem Insertar datos en City
rem
INSERT INTO city (id, updated_at, created_at, state_id, name) VALUES
('city1', SYSDATE, SYSDATE, 'state1', 'Los Angeles'),
('city2', SYSDATE, SYSDATE, 'state1', 'San Francisco'),
('city3', SYSDATE, SYSDATE, 'state2', 'Dallas');

rem
rem Insertar datos en customer
rem
INSERT INTO customer (id, updated_at, created_at, email, password, first_name, last_name) VALUES
('customer1', SYSDATE, SYSDATE, 'fran@gmail.com', 'password123', 'Fran', 'Caicedo'),
('customer2', SYSDATE, SYSDATE, 'bob@gmail.com', 'password456', 'Bob', 'Guzman');

rem
rem Insertar datos en place
rem
INSERT INTO place (id, updated_at, created_at, customer_id, name, city_id, description, number_rooms, number_bathrooms, max_guest, price_by_night, latitude, longitude) VALUES
('place1', SYSDATE, SYSDATE, 'customer1', 'L Villa', 'city1', 'Se disfruta la villa de  Los Angeles.', 3, 2, 6, 150, 34.0522, -118.2437),
('place2', SYSDATE, SYSDATE, 'customer2', 'C Apartment', 'city2', 'Es agradable la C apartment.', 2, 1, 4, 100,33.0612,-117.2547);

rem
rem Insertar datos en review
rem
INSERT INTO review (id, updated_at, created_at, customer_id, place_id, text) VALUES
('review1', SYSDATE, SYSDATE, 'customer1', 'place2', 'Gran lugar, muy comodo!'),
('review2', SYSDATE, SYSDATE, 'customer2', 'place1', 'La villa es hermosa y bien situada.');

rem
rem Insertar datos en amenity
rem
INSERT INTO amenity (id, updated_at, created_at, name) VALUES
('amenity1', SYSDATE, SYSDATE, 'WiFi'),
('amenity2', SYSDATE, SYSDATE, 'Pool'),
('amenity3', SYSDATE, SYSDATE, 'Parking');

rem
rem Insertar datos en placeamenity
rem
INSERT INTO placeamenity (amenity_id, place_id) VALUES
('amenity1', 'place1'),
('amenity2', 'place2'),
('amenity3', 'place2');



