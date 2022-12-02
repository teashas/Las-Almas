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

INSERT INTO sec_security VALUES ('21762', '2001-01-11 00:00:00', '2001-01-13 00:00:00', '2', 'weapon');
INSERT INTO sec_security VALUES ('23717', '2001-02-07 06:00:00', '2001-02-23 23:59:00', '5', 'weapon');
INSERT INTO sec_security VALUES ('37152', '2012-11-21 15:44:00', '2012-11-22 01:00:00', '0', 'weapon');
INSERT INTO sec_security VALUES ('21937', '2011-09-29 17:35:45', '2011-12-03 01:00:00', '11', 'weapon');
INSERT INTO sec_security VALUES ('27123', '2005-07-20 22:00:00', '2005-07-30 00:00:00', '3', 'weapon');

-- insert data into sec_weapons table 

INSERT INTO sec_weapons VALUES ('21762', 'weapon', 'ammo type', '2');
INSERT INTO sec_weapons VALUES ('23717', 'weapon', 'ammo type', '5');
INSERT INTO sec_weapons VALUES ('37152', 'weapon', 'ammo type', '10');
INSERT INTO sec_weapons VALUES ('21937', 'weapon', 'ammo type', '11');
INSERT INTO sec_weapons VALUES ('27123', 'weapon', 'ammo type', '7');

-- insert data into sec_training table

INSERT INTO sec_training VALUES ('21762', '100', 'AZ', 'David Johnson');
INSERT INTO sec_training VALUES ('23717', '235', '128', 'Mira Joel');
INSERT INTO sec_training VALUES ('37152', '162', '72', 'Jessica Cat');
INSERT INTO sec_training VALUES ('21937', '128', '61', 'Price Loel');
INSERT INTO sec_training VALUES ('27123', '102', '57', 'Carl Power');

-- insert data into sec_recruiting table

INSERT INTO sec_recruiting VALUES ('21762', '50', 'AZ', '1989-12-13');
INSERT INTO sec_recruiting VALUES ('23717', '50', 'NV', '1999-09-29');
INSERT INTO sec_recruiting VALUES ('37152', '100', 'CA', '2008-12-31');
INSERT INTO sec_recruiting VALUES ('21937', '90', 'CA', '2010-01-01');
INSERT INTO sec_recruiting VALUES ('27123', '80', 'AZ', '2000-05-07');
