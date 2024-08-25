rem 
rem UCEVA 
rem Author  : DIANA CAROLINA GOMEZ GONZALEZ
rem 

rem
rem Eliminar las restricciones 
rem
rem ALTER TABLE placeamenity DROP CONSTRAINT fk_placeamenity_place;
rem ALTER TABLE placeamenity DROP CONSTRAINT fk_placeamenity_amenity;
rem ALTER TABLE review DROP CONSTRAINT fk_review_place;
rem ALTER TABLE review DROP CONSTRAINT fk_review_customer;
rem ALTER TABLE place DROP CONSTRAINT fk_place_city;
rem ALTER TABLE place DROP CONSTRAINT fk_place_customer;
rem ALTER TABLE city DROP CONSTRAINT fk_city_state;
rem
rem Eliminar todas las  tablas
rem
rem DROP TABLE PLACEAMENITY;
rem DROP TABLE REVIEW;
rem DROP TABLE PLACE;
rem DROP TABLE CITY;
rem DROP TABLE STATE;
rem DROP TABLE CUSTOMER;
rem DROP TABLE AMENITY;

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
rem 
rem Se pasa a realizar los CONSTRAINTS o restricciones que tiene cada tabla del esquema 
rem 

    
rem
rem se realiza la restriccion de primary key de la tabla customer
rem   
ALTER TABLE customer ADD CONSTRAINT pk_customer PRIMARY KEY(id);

rem
rem se coloca la restriccion de primary key de la tabla place
rem
ALTER TABLE place ADD CONSTRAINT pk_place PRIMARY KEY(id);
rem
rem se realiza la restriccion de primary key de la tabla review
rem
ALTER TABLE review ADD CONSTRAINT pk_review PRIMARY KEY(id);

rem
rem se realiza la restriccion de primary key de la tabla amenity
rem  
ALTER TABLE amenity ADD CONSTRAINT pk_amenity PRIMARY KEY(id);

rem
rem se realiza la restriccion de primary key de la tabla state
rem  
ALTER TABLE state ADD CONSTRAINT pk_state PRIMARY KEY(id);
rem
rem se realiza la restriccion de primary key de la tabla city
rem 
ALTER TABLE city ADD CONSTRAINT pk_city PRIMARY KEY (id);
rem
rem se coloca la restriccion de foreign key de la tabla place que se apunta a la primary key de la tabla customer
rem
ALTER TABLE place ADD CONSTRAINT fk_place_customer
    FOREIGN KEY (customer_id) REFERENCES customer(id);  
rem
rem se coloca la restriccion de foreign key de la tabla place que se apunta a la primary key de la tabla city
rem    
ALTER TABLE place ADD CONSTRAINT fk_place_city 
    FOREIGN KEY (city_id) REFERENCES city(id);
rem
rem se modifica la tabla place restringiendo algunos campos que por defecto son cero
rem
ALTER TABLE place MODIFY (
    number_rooms DEFAULT 0,
    number_bathrooms DEFAULT 0,
    max_guest DEFAULT 0,
    price_by_night DEFAULT 0
   
);

rem
rem se realiza la restriccion de foreign key de la tabla review que apunta la primary key de la tabla customer
rem
ALTER TABLE review ADD CONSTRAINT fk_review_customer
    FOREIGN KEY (customer_id) REFERENCES customer(id);
rem
rem se realiza la restriccion de foreign key de la tabla review que apunta la primary key de la tabla place
rem    
ALTER TABLE review ADD CONSTRAINT fk_review_place
    FOREIGN KEY (place_id) REFERENCES place(id);

rem
rem se realiza la restriccion de foreign key de la tabla amenityplace que apunta a la primary key de la tabla amenity
rem
ALTER TABLE placeamenity ADD CONSTRAINT fk_placeamenity_amenity
    FOREIGN KEY (amenity_id) REFERENCES amenity(id);
rem
rem se realiza la restriccion de foreign key de la tabla amenityplace que apunta a la primary key de la tabla place
rem    
ALTER TABLE placeamenity ADD CONSTRAINT fk_placeamenity_place
    FOREIGN KEY (place_id) REFERENCES place(id);

rem
rem se realiza la restriccion de foreign key de la tabla city que apunta a la primary key de la tabla state
rem      
ALTER TABLE city ADD CONSTRAINT fk_city_state
    FOREIGN KEY (state_id) REFERENCES state(id);
 

    
