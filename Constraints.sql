rem 
rem UCEVA 
rem Author  : DIANA CAROLINA GOMEZ GONZALEZ
rem 

rem 
rem En este script se realiza las restricciones de las tablas anteriormente creadas
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
 

    
