CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  address VARCHAR(100),
  phone VARCHAR(15),
  email VARCHAR(50),
  state VARCHAR(25),
  zip_code VARCHAR(25)
);

CREATE TABLE concessions (
  snack_id SERIAL PRIMARY KEY,
  name VARCHAR(25),
  price NUMERIC(5,2),
  calories INTEGER,
  inventory INTEGER
);

CREATE TABLE showtimes (
  showtime_id SERIAL PRIMARY KEY,
  time TIMESTAMP,
  date DATE
);

CREATE TABLE theater (
  theater_id SERIAL PRIMARY KEY,
  number INTEGER,
  movie_id INTEGER,
  seats INTEGER,
  screen VARCHAR(50),
  recliners BOOLEAN
);

CREATE TABLE payment (
  payment_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  card_type VARCHAR(30),
  card_number VARCHAR(20),
  expiration_date DATE,
  billing_shipping BOOLEAN,
  cvv INTEGER,
  saved_info BOOLEAN,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE movies (
  movie_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  rating VARCHAR(5),
  runtime NUMERIC(5,2),
  description VARCHAR(500),
  ticket_id INTEGER,
  showtime_id INTEGER,
  FOREIGN KEY (showtime_id) REFERENCES showtimes(showtime_id)
);

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  snack_id INTEGER,
  snack_quantity INTEGER,
  FOREIGN KEY (snack_id) REFERENCES concessions(snack_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE tickets (
  ticket_id SERIAL PRIMARY KEY,
  type VARCHAR(8),
  price NUMERIC(5,2),
  customer_id INTEGER,
  seat_number INTEGER,
  theater_id INTEGER,
  showtime_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (theater_id) REFERENCES theater(theater_id),
  FOREIGN KEY (showtime_id) REFERENCES showtimes(showtime_id)
);


