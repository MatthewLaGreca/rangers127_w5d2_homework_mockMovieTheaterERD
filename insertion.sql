INSERT INTO customer(
	first_name,
	last_name,
	address,
	phone,
	email,
	state,
	zip_code
)VALUES(
	'Matt',
	'LaGreca',
	'Wouldnt you like to know?',
	'420-369-4842',
	'yungz0rk@gmail.com',
	'Illinois',
	'60000'
);

SELECT *
FROM customer;

INSERT INTO payment(
	customer_id,
	card_type,
	card_number,
	expiration_date,
	billing_shipping,
	cvv,
	saved_info
)VALUES(
	1,
	'Chase Sapphire Reserve',
	'4209-1234-5678-9012',
	'2028-10-10',
	true,
	687,
	true
);

SELECT *
FROM payment;

INSERT INTO concessions(
	name,
	price,
	calories,
	inventory
)VALUES(
	'Nachos',
	7.99,
	600,
	200
);

SELECT *
FROM concessions;

INSERT INTO orders(
	customer_id,
	snack_id,
	snack_quantity
)VALUES(
	1,
	1,
	2
);

SELECT *
FROM orders;

INSERT INTO showtimes(
	time,
	date
)VALUES(
	CURRENT_TIMESTAMP,
	'2024-10-10'
);

SELECT *
FROM showtimes;

INSERT INTO movies(
	name,
	rating,
	runtime,
	description,
	showtime_id
)VALUES(
	'Good Will Hunting',
	'Great',
	126.00,
	'*Insert Good Will Huntings description here*',
	1
);

SELECT *
FROM movies;

INSERT INTO theater(
	number,
	seats,
	screen,
	recliners
)VALUES(
	1,
	100,
	'IMAX',
	true
);

SELECT *
FROM theater;

INSERT INTO tickets(
	type,
	price,
	customer_id,
	seat_number,
	theater_id,
	showtime_id
)VALUES(
	'Adult',
	15.99,
	1,
	40,
	1,
	1
);

SELECT *
FROM tickets;