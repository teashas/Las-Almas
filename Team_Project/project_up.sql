-- Distribution

-- creates table: dis_manager
-- manager_id: unique ID of manager
-- runner_id: unique ID of runner

CREATE TABLE dis_manager(manager_id INT(5), runner_id INT(5));

-- creates table: dis_runner_out
-- runner_id: unique ID of runner
-- date_out: runner start shift 
-- method: how was the product sent
-- quantity: amount of product ordered
-- product_type: type of product
-- market_value: selling price

CREATE TABLE dis_runner_out(runner_id INT(5), date_out DATETIME, method VARCHAR(20), quantity INT(2), product_type VARCHAR(20), market_value INT(3));

-- creates table: dis_runner_in
-- runner_id: unique ID of runner
-- date_in: runner end shift 
-- collected: money collected [USD]
-- losses: products lost

CREATE TABLE dis_runner_in(runner_id INT(5), date_in DATETIME, collected INT(7), losses INT(2));

-- inserts data into dis_manager table 

INSERT INTO dis_manager VALUES (30001, 40001);
INSERT INTO dis_manager VALUES (30002, 40002);
INSERT INTO dis_manager VALUES (30003, 40003);
INSERT INTO dis_manager VALUES (30004, 40004);
INSERT INTO dis_manager VALUES (30005, 40005);

-- insert data into dis_runner_out table 

INSERT INTO dis_runner_out VALUES (40001, '2001-01-28 00:00:00', 'car', 2, 'Cannabis', 50);
INSERT INTO dis_runner_out VALUES (40005, '2011-02-20 19:00:00', 'plane', 1, 'Cannabis', 40);
INSERT INTO dis_runner_out VALUES (40002, '2022-12-01 02:00:00', 'car', 9, 'Heroin', 150);
INSERT INTO dis_runner_out VALUES (40003, '2005-03-31 07:00:00', 'plane', 14, 'LSD Acid', 200);
INSERT INTO dis_runner_out VALUES (40004, '2018-06-19 12:00:00', 'plane', 22, 'PCP', 40);
INSERT INTO dis_runner_out VALUES (40001, '2018-06-19 12:00:00', 'plane', 3, 'Heroin', 150);
INSERT INTO dis_runner_out VALUES (40005, '2011-02-11 19:00:00', 'car', 5, 'MDMA', 70);

-- insert data into dis_runner_in table

INSERT INTO dis_runner_in VALUES (40001, '2001-01-28 03:00:00', 200, '0');
INSERT INTO dis_runner_in VALUES (40005, '2011-02-20 05:00:00', 40, '0');
INSERT INTO dis_runner_in VALUES (40001, '2018-06-20 08:00:00', 450, '0');
INSERT INTO dis_runner_in VALUES (40002, '2022-12-01 04:00:00', 1200, '0');
INSERT INTO dis_runner_in VALUES (40003, '2005-04-01 00:00:00', 4500, '0');
INSERT INTO dis_runner_in VALUES (40004, '2018-06-21 17:00:00', 5800, '0');
INSERT INTO dis_runner_in VALUES (40005, '2011-02-11 22:00:00', 600, '0');

-- Influence

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

CREATE TABLE inf_manager(manager_id INT(5), customer_id INT(5), product_id INT(5));

-- inserts data into inf_cutomer table 

INSERT INTO inf_customer VALUES (00001, 'Liam', 'Williams', '3173 Hulk Street', 2839137281);
INSERT INTO inf_customer VALUES (00002, 'Noah', 'Smith', '3718 Penn Avenue', 3716273638);
INSERT INTO inf_customer VALUES (00003, 'William', 'Brown', '4726 County Street', 1637283629);
INSERT INTO inf_customer VALUES (00004, 'Henry', 'Jones', '4728 Taling Drive', 2847193457);
INSERT INTO inf_customer VALUES (00005, 'Levi', 'Garcia', '2752 Yellow Drive', 2734913674);

-- insert data into inf_product table 

INSERT INTO inf_product VALUES (20001, 'drug 1', 200, '2001-10-10 00:00:00');
INSERT INTO inf_product VALUES (20002, 'drug 2', 200, '2014-12-13 04:00:00');
INSERT INTO inf_product VALUES (20003, 'drug 4', 199, '1989-04-20 09:00:00');
INSERT INTO inf_product VALUES (20004, 'drug 3', 500, '1999-10-08 19:00:00');
INSERT INTO inf_product VALUES (20005, 'drug 5', 600, '2006-10-18 13:00:00');

-- insert data into inf_manager table

INSERT INTO inf_manager VALUES (10001, 00001, 20001);
INSERT INTO inf_manager VALUES (10002, 00002, 20002);
INSERT INTO inf_manager VALUES (10003, 00003, 20003);
INSERT INTO inf_manager VALUES (10004, 00004, 20004);
INSERT INTO inf_manager VALUES (10005, 00005, 20005);

-- Production

-- creates table: prod_products
-- product_id: unique ID of product
-- product_name: product name
-- market_value: selling price [USD]
-- quantity: number of products in storage
-- daily_production: yes (1) or no (0)
-- biweekly_production: yes (1) or no (0)

CREATE TABLE prod_products(product_id INT(5), product_name VARCHAR(15), market_value INT(3), production_cost INT(3), quantity INT(3), daily_production INT(1), biweekly_production INT(1));

-- creates table: prod_manager
-- manager_id: unique ID of manager
-- last_name: manager last name
-- first_name: manager first name
-- DOB: date of birth

CREATE TABLE prod_manager(manager_id INT(5), product_id INT(5), employee_id INT(5), supply_id INT(5));

-- creates table: prod_staff
-- employee_id: unique ID of staff
-- salary: staff salary
-- start_date: employment date

CREATE TABLE prod_staff(employee_id INT(5), salary INT(3), start_date  DATE);

-- creates table: prod_location
-- product_id: unique ID of product
-- location: product location
-- quantity: number of products in storage

CREATE TABLE prod_location(product_id INT(5), location VARCHAR(60), quantity INT(3));

-- creates table: prod_supply
-- supply_id: unique ID of supply
-- product_id: unique ID of product
-- supply_amount: number of supplies in storage
-- product_quantity: number of products in storage

CREATE TABLE prod_supply(supply_id INT(5), product_id INT(5), supply_amount INT(3), product_quantity INT(3));       

-- insert data into prod_products table      

INSERT INTO prod_products VALUES (20001, 'Cannabis', 50, 20, 100, '1', '0');
INSERT INTO prod_products VALUES (20002, 'Heroin', 150, 70, 500, '0', '1');
INSERT INTO prod_products VALUES (20003, 'LSD Acid', 150, 70, 250, '0', '1');
INSERT INTO prod_products VALUES (20004, 'PCP', 40, 63, 600, '1', '0');
INSERT INTO prod_products VALUES (20005, 'MDMA', 70, 25, 70, '1', '0'); 

-- insert data into prod_manager table  

INSERT INTO prod_manager VALUES (30001, 20001, 40001, 50001); 
INSERT INTO prod_manager VALUES (30002, 20002, 40002, 50002); 
INSERT INTO prod_manager VALUES (30003, 20003, 40003, 50003); 
INSERT INTO prod_manager VALUES (30004, 20004, 40004, 50004); 
INSERT INTO prod_manager VALUES (30005, 20005, 40005, 50005); 

-- insert data into prod_staff table 

INSERT INTO prod_staff VALUES (40001, 40, '2001-10-10'); 
INSERT INTO prod_staff VALUES (40002, 35, '2017-12-06'); 
INSERT INTO prod_staff VALUES (40003, 50, '1985-11-01'); 
INSERT INTO prod_staff VALUES (40004, 35, '1995-10-31'); 
INSERT INTO prod_staff VALUES (40005, 70, '1988-08-27'); 

-- insert data into prod_location table 

INSERT INTO prod_location VALUES (20001, 'Arizona', 98); 
INSERT INTO prod_location VALUES (20002, 'California', 100); 
INSERT INTO prod_location VALUES (20003, 'Arizona', 150); 
INSERT INTO prod_location VALUES (20004, 'Arizona', 20); 
INSERT INTO prod_location VALUES (20005, 'Florida', 700); 

-- insert data into prod_supply table 

INSERT INTO prod_supply VALUES (50001, 20001, 170, 98);       
INSERT INTO prod_supply VALUES (50002, 20002, 400, 200);       
INSERT INTO prod_supply VALUES (50003, 20003, 500, 60);       
INSERT INTO prod_supply VALUES (50004, 20004, 800, 12);       
INSERT INTO prod_supply VALUES (50005, 20005, 200, 150);    

-- Security

-- creates table: sec_security
-- employee_id: security ID
-- start_date: shift start
-- end_date: shift end
-- confirmed_kills: number of kills during shift 

CREATE TABLE sec_security(employee_id INT(5), start_date DATETIME, end_date DATETIME, confirmed_kills INT(3), service_weapon VARCHAR(20));

-- creates table: sec_weapons
-- employee_id: security ID
-- service_weapon: type of weapon
-- ammo_type: type of ammo
-- ammo_pool: amount of ammo

CREATE TABLE sec_weapons(employee_id INT(5), service_weapon VARCHAR(20), ammo_type VARCHAR(20), ammo_pool INT(3));

-- creates table: sec_training
-- employee_id: security ID
-- cost: cost of training
-- training_hours: amount of hours to train
-- personnel: trainer

CREATE TABLE sec_training(employee_id INT(5), cost INT(5), training_hours INT(3), personnel VARCHAR(15));

-- creates table: sec_recruiting
-- employee_id: security ID
-- cost: cost of recruiting
-- location: recruitment state
-- start_date: time and date of recruitment

CREATE TABLE sec_recruiting(employee_id INT(5), cost INT(5), location VARCHAR(20), start_date DATE);

-- inserts data into sec_security table 

INSERT INTO sec_security VALUES (21762, '2001-01-11 00:00:00', '2001-01-13 00:00:00', 2, 'AK47');
INSERT INTO sec_security VALUES (23717, '2001-02-07 06:00:00', '2001-02-23 23:59:00', 5, 'G18');
INSERT INTO sec_security VALUES (37152, '2012-11-21 15:44:00', '2012-11-22 01:00:00', 0, 'MP5');
INSERT INTO sec_security VALUES (21937, '2011-09-29 17:35:45', '2011-12-03 01:00:00', 11, 'AK47');
INSERT INTO sec_security VALUES (27123, '2005-07-20 22:00:00', '2005-07-30 00:00:00', 3, 'G18');
-- insert data into sec_weapons table 

INSERT INTO sec_weapons VALUES (21762, 'M1911', '45 ACP', 2);
INSERT INTO sec_weapons VALUES (23717, 'G18', '9mm', 5);
INSERT INTO sec_weapons VALUES (37152, 'MP5', '9mm', 10);
INSERT INTO sec_weapons VALUES (21937, 'AK47', '7.62mm', 11);
INSERT INTO sec_weapons VALUES (27123, 'MP7', '9mm', 7);

-- insert data into sec_training table

INSERT INTO sec_training VALUES (21762, 100, 21, 'David Johnson');
INSERT INTO sec_training VALUES (23717, 235, 128, 'Mira Joel');
INSERT INTO sec_training VALUES (37152, 162, 72, 'Jessica Cat');
INSERT INTO sec_training VALUES (21937, 128, 61, 'Price Loel');
INSERT INTO sec_training VALUES (27123, 102, 57, 'Carl Power');

-- insert data into sec_recruiting table

INSERT INTO sec_recruiting VALUES (21762, 50, 'AZ', '1989-12-13');
INSERT INTO sec_recruiting VALUES (23717, 50, 'NV', '1999-09-29');
INSERT INTO sec_recruiting VALUES (37152, 100, 'CA', '2008-12-31');
INSERT INTO sec_recruiting VALUES (21937, 90, 'CA', '2010-01-01');
INSERT INTO sec_recruiting VALUES (27123, 80, 'AZ', '2000-05-07');

--  The security manager will then check the employee’s weapon to ensure adequate ammo is in the warehouse needed for the security on shift