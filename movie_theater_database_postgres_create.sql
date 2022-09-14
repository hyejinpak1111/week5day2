CREATE TABLE "public.customer" (
	"customer_id" integer NOT NULL,
	"first_name" varchar(255) NOT NULL,
	"last_name" varchar(255) NOT NULL,
	"address" varchar(255) NOT NULL,
	"billing_info" varchar(255) NOT NULL,
	CONSTRAINT "customer_pk" PRIMARY KEY ("customer_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.movies" (
	"movies_id" integer NOT NULL,
	"movies_title" varchar(255) NOT NULL,
	"movies_description" varchar(1020) NOT NULL,
	"movies_length" TIME(255) NOT NULL,
	"movies_genre" integer(255) NOT NULL,
	CONSTRAINT "movies_pk" PRIMARY KEY ("movies_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.tickets" (
	"tickets_id" integer NOT NULL,
	"tickets_price" money NOT NULL,
	"movie_id" integer NOT NULL,
	CONSTRAINT "tickets_pk" PRIMARY KEY ("tickets_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.concession" (
	"concession_id" integer NOT NULL,
	"concession_name" varchar(255) NOT NULL,
	"customer_id" varchar(255) NOT NULL,
	"price" money NOT NULL,
	CONSTRAINT "concession_pk" PRIMARY KEY ("concession_id")
) WITH (
  OIDS=FALSE
);





ALTER TABLE "tickets" ADD CONSTRAINT "tickets_fk0" FOREIGN KEY ("tickets_price") REFERENCES "customer"("customer_id");
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_fk1" FOREIGN KEY ("movie_id") REFERENCES "movies"("movies_id");

ALTER TABLE "concession" ADD CONSTRAINT "concession_fk0" FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id");





