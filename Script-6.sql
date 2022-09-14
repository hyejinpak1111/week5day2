INSERT INTO customer (first_name, last_name, address, billing_info)
VALUES
	('John', 'Doe', '123 Main St', '12312312312'),
	('Justin', 'Beaver', '124 Beaver Ave', '5558522414');

INSERT INTO movie (movie_title, movie_description, movie_legth, movie_genre)
VALUES
	('John Wick', 'Man seeks revenge and goes on a rampage', '2:00', 'action');
	
-- create 2 tickets
INSERT INTO ticket (price, customer_id, movie_id)
VALUES
	('12.99', (1), (1)),
	('16.99', (2), (1));
	
-- create concession
INSERT INTO concessions(conession_name, customer_id, price)
VALUES
	('popcorn', (1), '10.99'),
	('soda', (2), '4.99');