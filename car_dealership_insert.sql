-- CREATE FUNCTION add_salesperson(_first_name VARCHAR, _last_name VARCHAR)
-- RETURNS void
-- AS $MAIN$
-- BEGIN
-- 	INSERT INTO salesperson(first_name, last_name)
-- 	VALUES(_first_name, _last_name);
-- END;
-- $MAIN$
-- LANGUAGE plpgsql;

-- SELECT add_salesperson('Taeho', 'Kim');
-- SELECT add_salesperson('Not', 'Taeho');

INSERT INTO customer(
	customer_id,
	first_name,
	last_name
)VALUES(
	1,
	'Maybe',
	'Taeho'
);

INSERT INTO customer(
	customer_id,
	first_name,
	last_name
)VALUES(
	2,
	'Kim',
	'Possible'
);

INSERT INTO vehicles(
	vehicle_id,
	model,
	make
)VALUES(
	1,
	'Prius',
	'Toyota'
);

INSERT INTO vehicles(
	vehicle_id,
	model,
	make
)VALUES(
	2,
	'Honda',
	'Toyota'
);

INSERT INTO mechanics(
	mechanic_id,
	first_name,
	last_name
)VALUES(
	1,
	'Elon',
	'Musk'
);

INSERT INTO mechanics(
	mechanic_id,
	first_name,
	last_name
)VALUES(
	2,
	'Robot',
	'Alive'
);

INSERT INTO service_ticket(
	service_id,
	amount,
	customer_id,
	mechanic_id
)VALUES(
	1,
	530.00,
	1,
	1
);

INSERT INTO service_ticket(
	service_id,
	amount,
	customer_id,
	mechanic_id
)VALUES(
	2,
	670.00,
	2,
	2
);

INSERT INTO sales_invoice(
	sales_id,
	amount,
	customer_id,
	employee_id,
	vehicle_id
	
)VALUES(
	1,
	10000.00,
	1,
	1,
	1
);

INSERT INTO sales_invoice(
	sales_id,
	amount,
	customer_id,
	employee_id,
	vehicle_id
	
)VALUES(
	2,
	35000.00,
	2,
	2,
	2
);

INSERT INTO car_dealership(
	service_id,
	sales_id
	
)VALUES(
	1,
	1
);

INSERT INTO car_dealership(
	service_id,
	sales_id
	
)VALUES(
	2,
	2
);

INSERT INTO parts(
	part_id,
	part_name,
	part_price,
	service_id
	
)VALUES(
	1,
	'engine',
	5000,
	1
);

INSERT INTO parts(
	part_id,
	part_name,
	part_price,
	service_id
	
)VALUES(
	2,
	'windshield',
	200,
	2
);