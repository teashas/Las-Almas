-- creates table: prod_products
-- product_id: unique ID of product
-- product_name: product name
-- market_value: selling price [USD]
-- quantity: number of products in storage
-- daily_production: yes (1) or no (0)
-- biweekly_production: yes (1) or no (0)

CREATE TABLE prod_products(product_id INT(5), product_name INT(5), market_value INT(3), quantity INT(3), daily_production INT(1), biweekly_production INT(1));

-- creates table: prod_manager
-- manager_id: unique ID of manager
-- last_name: manager last name
-- first_name: manager first name
-- DOB: date of birth

CREATE TABLE prod_manager(manager_id INT(5), last_name VARCHAR(15), first_name VARCHAR(15), DOB DATE);

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
