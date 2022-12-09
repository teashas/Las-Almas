-- creates table: prod_products
-- product_id: unique ID of product
-- product_name: product name
-- market_value: selling price [USD]
-- quantity: number of products in storage
-- daily_production: yes (1) or no (0)
-- biweekly_production: yes (1) or no (0)

CREATE TABLE prod_products(product_id INT(5), product_name VARCHAR(15), market_value INT(3), quantity INT(3), daily_production INT(1), biweekly_production INT(1));

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

INSERT INTO prod_products VALUES (20001, 'Cannabis', 50, 100, '1', '0');
INSERT INTO prod_products VALUES (20002, 'Heroin', 150, '500', '0', '1');
INSERT INTO prod_products VALUES (20003, 'LSD Acid', 150, '250', '0', '1');
INSERT INTO prod_products VALUES (20004, 'PCP', 40, 63, '1', '0');
INSERT INTO prod_products VALUES (20005, 'MDMA', 70, 700, '1', '0'); 

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

-- Return on Investment
DELIMITER //
CREATE PROCEDURE return_on_investment()
BEGIN
SELECT market_value-production_cost AS ROI 
FROM prod_products;
END //
DELIMITER;
