-- creating the table 
CREATE TABLE sales (
	product_id INT PRIMARY KEY,
	product_name VARCHAR(100) NOT NULL,
	category VARCHAR(50),
	price NUMERIC(10, 2) NOT NULL CHECK (price >= 0),
	quantity INT NOT NULL CHECK (quantity >= 0),
	added_date DATE DEFAULT CURRENT_DATE,
	discount_rate NUMERIC(5, 2) CHECK (discount_rate BETWEEN 0 AND 100),
	discount_price NUMERIC(10, 2) CHECK (discount_price >= 0)
);

-- inserting the table data 
INSERT INTO sales (product_id, product_name, category, price, quantity, added_date, discount_rate, discount_price) VALUES
(11, 'Tablet Z10', 'Electronics', 22000.00, 12, '2025-02-06', 8.00, 20240.00),
(12, 'Smartwatch Fit', 'Electronics', 7500.00, 18, '2025-02-07', 5.00, 7125.00),
(13, 'Gaming Keyboard', 'Electronics', 4500.00, 25, '2025-02-08', 12.00, 3960.00),
(14, 'LED TV 42inch', 'Electronics', 38000.00, 6, '2025-02-09', 10.00, 34200.00),
(15, 'Bluetooth Speaker', 'Electronics', 3200.00, 20, '2025-02-10', 15.00, 2720.00),
(16, 'Casual T-Shirt', 'Clothing', 900.00, 40, '2025-02-11', 10.00, 810.00),
(17, 'Winter Jacket', 'Clothing', 5500.00, 10, '2025-02-12', 20.00, 4400.00),
(18, 'Sneakers Sport', 'Clothing', 3800.00, 15, '2025-02-13', 12.00, 3344.00),
(19, 'Kurta Traditional', 'Clothing', 2500.00, 22, '2025-02-14', 8.00, 2300.00),
(20, 'Formal Trousers', 'Clothing', 2100.00, 28, '2025-02-15', 10.00, 1890.00),
(21, 'Cooking Oil 5L', 'Grocery', 1200.00, 30, '2025-02-16', 5.00, 1140.00),
(22, 'Sugar 10kg', 'Grocery', 550.00, 50, '2025-02-17', 6.00, 517.00),
(23, 'Wheat Flour 10kg', 'Grocery', 480.00, 45, '2025-02-18', 5.00, 456.00),
(24, 'Green Tea Pack', 'Grocery', 350.00, 60, '2025-02-19', 10.00, 315.00),
(25, 'Almonds 1kg', 'Grocery', 850.00, 35, '2025-02-20', 12.00, 748.00),
(26, 'Smartphone Y', 'Electronics', 42000.00, 9, '2025-02-21', 7.00, 39060.00),
(27, 'Wireless Earbuds', 'Electronics', 2800.00, 30, '2025-02-22', 10.00, 2520.00),
(28, 'Power Bank 20000mAh', 'Electronics', 3200.00, 18, '2025-02-23', 8.00, 2944.00),
(29, 'DSLR Camera', 'Electronics', 55000.00, 5, '2025-02-24', 15.00, 46750.00),
(30, 'Printer LaserJet', 'Electronics', 18500.00, 7, '2025-02-25', 10.00, 16650.00),
(31, 'Cotton Saree', 'Clothing', 3200.00, 14, '2025-02-26', 12.00, 2816.00),
(32, 'Leather Belt', 'Clothing', 950.00, 25, '2025-02-27', 10.00, 855.00),
(33, 'Sports Shorts', 'Clothing', 1200.00, 30, '2025-02-28', 8.00, 1104.00),
(34, 'Woolen Sweater', 'Clothing', 2800.00, 20, '2025-03-01', 15.00, 2380.00),
(35, 'Denim Jacket', 'Clothing', 4500.00, 12, '2025-03-02', 10.00, 4050.00),
(36, 'Cashew Nuts 500g', 'Grocery', 480.00, 40, '2025-03-03', 5.00, 456.00),
(37, 'Pistachios 1kg', 'Grocery', 1100.00, 25, '2025-03-04', 10.00, 990.00),
(38, 'Honey 1kg', 'Grocery', 650.00, 30, '2025-03-05', 8.00, 598.00),
(39, 'Coffee Powder 500g', 'Grocery', 420.00, 35, '2025-03-06', 12.00, 369.60),
(40, 'Organic Spices Pack', 'Grocery', 1500.00, 20, '2025-03-07', 10.00, 1350.00);

SELECT * FROM sales;


-- insert the 20 more 
INSERT INTO sales (product_id, product_name, category, price, quantity, added_date, discount_rate, discount_price) VALUES
(41, 'LED Desk Lamp', 'Electronics', 1800.00, 25, '2025-03-08', 10.00, 1620.00),
(42, 'USB-C Charger', 'Electronics', 1200.00, 40, '2025-03-09', 8.00, 1104.00),
(43, 'Noise Cancelling Headset', 'Electronics', 6200.00, 12, '2025-03-10', 15.00, 5270.00),
(44, 'Smart Home Plug', 'Electronics', 2500.00, 18, '2025-03-11', 10.00, 2250.00),
(45, 'Fitness Tracker Band', 'Electronics', 3200.00, 22, '2025-03-12', 12.00, 2816.00),
(46, 'Cotton Kurti', 'Clothing', 1600.00, 30, '2025-03-13', 10.00, 1440.00),
(47, 'Denim Jeans', 'Clothing', 2400.00, 20, '2025-03-14', 15.00, 2040.00),
(48, 'Formal Blazer', 'Clothing', 5200.00, 10, '2025-03-15', 20.00, 4160.00),
(49, 'Silk Dupatta', 'Clothing', 1100.00, 35, '2025-03-16', 8.00, 1012.00),
(50, 'Track Pants', 'Clothing', 1400.00, 28, '2025-03-17', 10.00, 1260.00),
(51, 'Toor Dal 1kg', 'Grocery', 120.00, 60, '2025-03-18', 5.00, 114.00),
(52, 'Sunflower Oil 1L', 'Grocery', 160.00, 50, '2025-03-19', 6.00, 150.40),
(53, 'Salt 1kg', 'Grocery', 25.00, 100, '2025-03-20', 4.00, 24.00),
(54, 'Green Peas Frozen', 'Grocery', 180.00, 40, '2025-03-21', 10.00, 162.00),
(55, 'Instant Noodles Pack', 'Grocery', 45.00, 80, '2025-03-22', 5.00, 42.75),
(56, 'Laptop Backpack', 'Electronics', 2800.00, 15, '2025-03-23', 10.00, 2520.00),
(57, 'Wireless Router', 'Electronics', 3600.00, 10, '2025-03-24', 12.00, 3168.00),
(58, 'Portable SSD 1TB', 'Electronics', 8500.00, 8, '2025-03-25', 15.00, 7225.00),
(59, 'Bluetooth Keyboard', 'Electronics', 2100.00, 20, '2025-03-26', 10.00, 1890.00),
(60, 'LED Monitor 24"', 'Electronics', 12500.00, 6, '2025-03-27', 10.00, 11250.00);

SELECT * FROM  sales;

/*

-----------------------------------------------------------------------------------------------------------
We have a options to using SQL is the other way to insert the multipal data in this table : -
DELIMITER //
CREATE PROCEDURE insert_sales()
BEGIN
  DECLARE i INT DEFAULT 11;
  WHILE i <= 110 DO
    INSERT INTO sales (product_id, product_name, category, price, quantity, added_date, discount_rate, discount_price)
    VALUES (
      i,
      CONCAT('Product_', i),
      ELT(1 + (i % 3), 'Electronics', 'Clothing', 'Grocery'),
      ROUND(RAND() * 5000 + 500, 2),
      FLOOR(RAND() * 50 + 1),
      DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 180) DAY),
      ROUND(RAND() * 30, 2),
      ROUND(RAND() * 5000, 2)
    );
    SET i = i + 1;
  END WHILE;
END //
DELIMITER ;

CALL insert_sales();


-----------------------------------------------------------------------------------------------------------
We have a options to using PYTON is also the another way to insert the multipal data in this table : -
import random
import datetime

for i in range(11, 111):
    product_id = i
    product_name = f"Product_{i}"
    category = random.choice(["Electronics", "Clothing", "Grocery"])
    price = round(random.uniform(500, 5500), 2)
    quantity = random.randint(1, 50)
    added_date = datetime.date.today() - datetime.timedelta(days=random.randint(1, 180))
    discount_rate = round(random.uniform(0, 30), 2)
    discount_price = round(price * (1 - discount_rate/100), 2)

    print(f"INSERT INTO sales VALUES ({product_id}, '{product_name}', '{category}', {price}, {quantity}, '{added_date}', {discount_rate}, {discount_price});")

*/


