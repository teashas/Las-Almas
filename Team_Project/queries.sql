-- Distribution
DELIMITER //
CREATE PROCEDURE runner_in()
BEGIN
SELECT dis_runner_in.runner_id, date_out, date_in, method, product_type, collected, quantity 
FROM dis_runner_in JOIN dis_runner_out ON dis_runner_out.runner_id = dis_runner_in.runner_id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE runner_out(id INT(5))
BEGIN
SELECT quantity, product_type, method, quantity*market_value AS collect 
FROM dis_runner_out WHERE id = runner_id;
END //
DELIMITER ;

-- Influence
DELIMITER //
CREATE PROCEDURE viewProducts(id INT(5))
BEGIN
SELECT inf_product.product_id, name, quantity, production_date, manager_id,
inf_customer.customer_id, first_name, last_name, address, phone_number FROM inf_product
JOIN inf_manager ON inf_product.product_id = inf_manager.product_id
JOIN inf_customer ON inf_manager.customer_id = inf_customer.customer_id
WHERE manager_id = id;
END // 
DELIMITER ; 

DELIMITER //
CREATE PROCEDURE insertCustomer(cid INT(5), fname VARCHAR(15), lname VARCHAR(15), addy VARCHAR(60), phone INT(10))
BEGIN
INSERT INTO inf_customer VALUES (cid, fname, lname, addy, phone);
SELECT * FROM inf_customer
WHERE customer_id = cid;
END //
DELIMITER ; 

-- Production
DELIMITER //
CREATE PROCEDURE return_on_investment()
BEGIN
SELECT product_id, product_name, market_value-production_cost AS ROI FROM prod_products;
END //
DELIMITER ;

-- Security
DELIMITER //
CREATE PROCEDURE viewWeapon(id INT(5))
BEGIN
SELECT sec_security.employee_id, sec_weapons.service_weapon, ammo_type, ammo_pool FROM sec_weapons
JOIN sec_security ON sec_weapons.employee_id = sec_security.employee_id
WHERE sec_security.employee_id = id;
END // 
DELIMITER ; 