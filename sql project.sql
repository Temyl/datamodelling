create table customers (
	id int primary key not null
	, name varchar
	, email varchar
	, phone_number varchar
)

create table transactions (
	car_model varchar references rental_status(car_model)
	, id int references customers(id)
	, cars_cost_price bigint
	, price_per_hour bigint
	, total_rental_hours bigint
)

create table rental_status (
	car_model varchar primary key not null
	, rating int
	, is_car_available varchar
	, return_status varchar
)

create table rental_date (
	id int references customers(id)
	, car_model varchar references rental_status(car_model)
	, pick_up_date date
	, return_date date
)

alter table transactions add transactions_id int