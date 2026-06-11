CREATE TABLE Home_remedies(
		ID_num SERIAL PRIMARY KEY, 
		Customer_name VARCHAR(30) NOT NULL,
		Green_veg VARCHAR(25) NOT NULL,
		Dry_fruits VARCHAR(50),
		Cosmetic_product VARCHAR(20),
		Number_of_items INT NOT NULL,
		Customer_email VARCHAR(30) UNIQUE,
		Phone_number VARCHAR(10) UNIQUE
);

SELECT * FROM Home_remedies;

