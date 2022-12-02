-- creates table: inf_customer
-- customer_id: unique ID of customer
-- first_name: customer first name
-- last_name: customer last name
-- address: customer address
-- phone_number: customer phone number 

CREATE TABLE inf_customer(customer_id INT(5), first_name VARCHAR(15), last_name VARCHAR(15), address VARCHAR(60), phone_number int(10));

-- creates table: inf_product
-- product_id: influence product ID
-- name: name of product 
-- quantity: number of products in storage
-- production_date: creation of product

CREATE TABLE inf_product(product_id INT(5), name VARCHAR(15), quantity INT(3), production_date DATETIME);

-- creates table: inf_manager
-- manager_id: influence manager ID
-- last_name: manager last name
-- first_name: manager first name
-- DOB: date of birth

CREATE TABLE inf_manager(manager_id INT(5), last_name VARCHAR(15), first_name VARCHAR(15), DOB DATE);

-- inserts data into inf_cutomer table 

INSERT INTO inf_customer VALUES ('00001', 'Liam', 'Williams', '3173 Hulk Street', '2839137281');
INSERT INTO inf_customer VALUES ('00002', 'Noah', 'Smith', '3718 Penn Avenue', '3716273638');
INSERT INTO inf_customer VALUES ('00003', 'William', 'Brown', '4726 County Street', '1637283629');
INSERT INTO inf_customer VALUES ('00004', 'Henry', 'Jones', '4728 Taling Drive', '2847193457');
INSERT INTO inf_customer VALUES ('00005', 'Levi', 'Garcia', '2752 Yellow Drive', '2734913674');

-- insert data into inf_product table 

INSERT INTO inf_product VALUES ('20001', 'drug 1', '200', '2001-10-10 00:00:00');
INSERT INTO inf_product VALUES ('20002', 'drug 2', '200', '2014-12-13 04:00:00');
INSERT INTO inf_product VALUES ('20003', 'drug 4', '199', '1989-04-20 09:00:00');
INSERT INTO inf_product VALUES ('20004', 'drug 3', '500', '1999-10-08 19:00:00');
INSERT INTO inf_product VALUES ('20005', 'drug 5', '600', '2006-10-18 13:00:00');

-- insert data into inf_manager table

INSERT INTO inf_manager VALUES ('10001', 'Miller', 'Jackson', '2000-01-18');
INSERT INTO inf_manager VALUES ('10002', 'Davis', 'Ben', '1967-10-26');
INSERT INTO inf_manager VALUES ('10003', 'Rodriguez', 'Mateo', '1970-04-30');
INSERT INTO inf_manager VALUES ('10004', 'Martinez', 'Daniel', '1988-03-03');
INSERT INTO inf_manager VALUES ('10005', 'Hernandez', 'Logan', '1990-06-11');