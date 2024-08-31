rem 
rem UCEVA 
rem Author  : DIANA CAROLINA GOMEZ GONZALEZ
rem 

rem 
rem En este script se crea un esquema relacional del usuario airbnb
rem 

rem
rem Inicialmente se crea la tabla Place
rem

CREATE TABLE PLACE
( 
    id VARCHAR(10),
    updated_at DATE,
    created_at DATE,
    customer_id VARCHAR(15),
    name VARCHAR(15),
    city_id VARCHAR(15),
    description VARCHAR(40),
    number_rooms NUMBER(5),
    number_bathrooms NUMBER(5),
    max_guest NUMBER(5),
    price_by_night NUMBER(10),
    latitude FLOAT(5),
    longitude FLOAT(5)

);
rem
rem Creacion de la tabla Review
rem
CREATE TABLE REVIEW
( 
    id VARCHAR(10),
    updated_at DATE,
    created_at DATE,
    customer_id VARCHAR(15),
    place_id VARCHAR(15),
    text VARCHAR(40)  

);
rem
rem Creacion de la tabla customers
rem
CREATE TABLE CUSTOMER
( 
    id VARCHAR(10),
    updated_at DATE,
    created_at DATE,
    email VARCHAR(30),
    password VARCHAR(15),
    first_name VARCHAR(30),
    last_name VARCHAR(30)  

);
rem
rem Creacion de la tabla amenity 
rem
CREATE TABLE AMENITY
( 
    id VARCHAR(10),
    updated_at DATE,
    created_at DATE,
    name VARCHAR(15)
);
rem
rem Creacion de la tabla placeamenity
rem
CREATE TABLE PLACEAMENITY
( 
    amenity_id VARCHAR(15),
    place_id VARCHAR(15)
);
rem
rem Creacion de la tabla state
rem
CREATE TABLE STATE
( 
    id VARCHAR(10),
    updated_at DATE,
    created_at DATE,
    name VARCHAR(15)
);
rem
rem Creacion de la tabla city
rem
CREATE TABLE CITY
( 
    id VARCHAR(10),
    updated_at DATE,
    created_at DATE,
    state_id VARCHAR(15),
    name VARCHAR(15)
);




  