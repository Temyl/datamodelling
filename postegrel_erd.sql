CREATE TABLE "transactions"(
    "id" BIGINT NOT NULL,
    "car_cost_price" BIGINT NOT NULL,
    "price_per_hour" BIGINT NOT NULL,
    "total_rental_hours" BIGINT NOT NULL
);
ALTER TABLE
    "transactions" ADD PRIMARY KEY("id");
CREATE TABLE "customers"(
    "id" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "phone_number" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "customers" ADD PRIMARY KEY("id");
CREATE TABLE "rental_stat"(
    "id" BIGINT NOT NULL,
    "car_model" BIGINT NOT NULL,
    "car_cost_price" BIGINT NOT NULL,
    "price_per_hour" BIGINT NOT NULL,
    "rate" BIGINT NOT NULL,
    "dates" BIGINT NOT NULL,
    "transactions_id" BIGINT NOT NULL,
    "column_8" BIGINT NOT NULL
);
ALTER TABLE
    "rental_stat" ADD PRIMARY KEY("id");
CREATE TABLE "rental_status"(
    "id" BIGINT NOT NULL,
    "rating" BIGINT NOT NULL,
    "is_car_available" BIGINT NOT NULL,
    "return_status" BIGINT NOT NULL
);
ALTER TABLE
    "rental_status" ADD PRIMARY KEY("id");
CREATE TABLE "date"(
    "dates" BIGINT NOT NULL,
    "years" BIGINT NOT NULL,
    "months" BIGINT NOT NULL,
    "day" BIGINT NOT NULL
);
ALTER TABLE
    "date" ADD PRIMARY KEY("dates");
ALTER TABLE
    "rental_stat" ADD CONSTRAINT "rental_stat_car_model_foreign" FOREIGN KEY("car_model") REFERENCES "rental_status"("id");
ALTER TABLE
    "rental_stat" ADD CONSTRAINT "rental_stat_transactions_id_foreign" FOREIGN KEY("transactions_id") REFERENCES "transactions"("id");
ALTER TABLE
    "rental_stat" ADD CONSTRAINT "rental_stat_dates_foreign" FOREIGN KEY("dates") REFERENCES "date"("dates");
ALTER TABLE
    "rental_stat" ADD CONSTRAINT "rental_stat_id_foreign" FOREIGN KEY("id") REFERENCES "customers"("id");