CREATE TABLE salesperson(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE vehicles(
	vehicle_id SERIAL PRIMARY KEY,
	model VARCHAR(50),
	make VARCHAR(50)
);

CREATE TABLE mechanics(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE service_ticket(
	service_id SERIAL PRIMARY KEY,
	amount NUMERIC(8,2),
	customer_id INTEGER NOT NULL,
	mechanic_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(mechanic_id) REFERENCES mechanics(mechanic_id)
);

CREATE TABLE sales_invoice(
	sales_id SERIAL PRIMARY KEY,
	amount NUMERIC(8,2),
	employee_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	vehicle_id INTEGER NOT NULL,
	FOREIGN KEY(employee_id) REFERENCES salesperson(employee_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(vehicle_id) REFERENCES vehicles(vehicle_id)
);

CREATE TABLE car_dealership(
	service_id INTEGER NOT NULL,
	sales_id INTEGER NOT NULL,
	FOREIGN KEY(service_id) REFERENCES service_ticket(service_id),
	FOREIGN KEY(sales_id) REFERENCES sales_invoice(sales_id)
);

CREATE TABLE parts(
	part_id SERIAL PRIMARY KEY,
	part_name VARCHAR(100),
	part_price NUMERIC(8,2),
	service_id INTEGER NOT NULL,
	FOREIGN KEY(service_id) REFERENCES service_ticket(service_id)
);