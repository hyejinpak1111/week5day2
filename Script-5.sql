-- CREATE customer info

CREATE TABLE customer (
	customer_id serial PRIMARY KEY,
	first_name varchar (255) NOT NULL,
	last_name varchar (255) NOT NULL,
	address varchar (255) NOT NULL,
	billing_info varchar (255) NOT NULL
);

CREATE TABLE movie (
	movie_id serial PRIMARY KEY,
	movie_title varchar (255) NOT NULL,
	movie_description varchar (1020) NOT NULL,
	movie_legth time (255) NOT NULL,
	movie_genre varchar (255) NOT null
);

CREATE TABLE ticket (
	ticket_id serial PRIMARY KEY,
	price money NOT NULL,
	customer_id serial REFERENCES customer(customer_id),
	movie_id serial REFERENCES movie(movie_id)
);

CREATE TABLE concessions (
	concession_id serial PRIMARY KEY,
	conession_name varchar (255) NOT NULL,
	customer_id serial REFERENCES customer(customer_id),
	price money
)
