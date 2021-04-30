--Table: person

--1
CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    age INTEGER,
    height INTEGER,
    city VARCHAR(200),
    favorite_color VARCHAR(200) );


--2
INSERT INTO person (name, favorite_color, city, height, age) VALUES ('Carson', 'Blue', 'Orem', 3, 21);
INSERT INTO person (name, favorite_color, city, height, age) VALUES ('Danielle', 'Yellow', 'Omaha', 4, 18);
INSERT INTO person (name, favorite_color, city, height, age) VALUES ('Amber', 'Pink', 'Great Falls', 2000, 46);
INSERT INTO person (name, favorite_color, city, height, age) VALUES ('Seth', 'Green', 'Detroit', 1, 49);
INSERT INTO person (name, favorite_color, city, height, age) VALUES ('Mykenzie', 'Black', 'Dallas', 5, 381);

--3
SELECT * FROM person ORDER BY height DESC;

--4
SELECT * FROM person ORDER BY height ASC;

--5
SELECT * FROM person ORDER BY age DESC;

--6
SELECT * FROM person WHERE age > 20;

--7
SELECT * FROM person WHERE age = 18;

--8
SELECT * FROM person WHERE age BETWEEN 20 AND 30;

--9
SELECT * FROM person WHERE age != 27;

--10
SELECT * FROM person WHERE favorite_color != 'Red';

--11
SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

--12
SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

--13
SELECT * FROM person WHERE favorite_color IN ('Orange','Green', 'Blue');

--14
SELECT * FROM person WHERE favorite_color IN ('Yellow','Purple');


--Table: orders

--1
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(200),
    product_price NUMERIC,
    quantity INTEGER
);

--2
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (0427, 'FlexSeal', 13.68, 3);
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (0427, 'FlexTape', 5.89, 57);
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (2698, 'Snow Cone Machine', 357, 1);
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (7932, 'Baseball Mitt', 47.47, 100);
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (5555, 'Picture Frame', 0.87, 23);

--3 
SELECT * FROM orders;

--4
SELECT sum(quantity) FROM orders;

--5
SELECT sum(product_price * quantity) FROM orders;

--6
SELECT sum(product_price * quantity) FROM orders WHERE person_id = 0427;


--Table: artist

--1
INSERT INTO artist (name, artist_id) VALUES ('DaBaby', 42069);
INSERT INTO artist (name, artist_id) VALUES ('Cardi B', 66642);

--2
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

--3
SELECT * FROM artist ORDER BY name ASC LIMIT 5;

--4
SELECT * from artist WHERE name LIKE 'Black%';

--5
SELECT * from artist WHERE name LIKE '%Black%';


--Table: employee

--1
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

--2
SELECT max(birth_date) FROM employee;

--3
SELECT min(birth_date) FROM employee;

--4
SELECT employee_id FROM employee where first_name = 'Nancy' AND  last_name = 'Edwards';
SELECT * FROM employee WHERE reports_to = 2;

--5
SELECT count(employee_id) from employee WHERE city ='Lethbridge';

--Table: invoice

--1
SELECT count(*) from invoice WHERE billing_country = 'USA';

--2
SELECT max(total) FROM invoice;

--3
SELECT max(total) FROM invoice;

--4
SELECT * FROM invoice WHERE total > 5;

--5
SELECT count(*) from invoice WHERE total < 5;

--6
SELECT count(*) from invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

--7
SELECT avg(total) FROM invoice;

--8
SELECT sum(total) FROM invoice;