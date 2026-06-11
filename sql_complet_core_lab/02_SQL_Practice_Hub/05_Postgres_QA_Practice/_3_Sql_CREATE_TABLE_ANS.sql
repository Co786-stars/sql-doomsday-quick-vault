/*
🔸 Question 1: 📱 App Users Table
  
  Create a table named AppUsers to store user details for a mobile app. Include the following:
- User_ID (auto-incremented, primary key)
- Username (max 15 characters, must not be null)
- Email (max 50 characters, must be unique)
- Signup_Date (date of registration)*/

CREATE TABLE AppUser (
	user_id SERIAL PRIMARY KEY,
	user_name VARCHAR(15) NOT NULL,
	Email VARCHAR(50) UNIQUE,
	signup_date DATE NOT NULL
);



/*
🔸 Question 2: 🛒 Product Inventory

  Design a table called Products for an e-commerce store. Include:
- Product_ID (integer, primary key)
- Product_Name (max 30 characters, not null)
- Price (numeric with 2 decimal places)
- Stock_Quantity (integer, default 0)
- Category (text, optional)*/

CREATE TABLE products (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(30) NOT NULL,
	price NUMERIC(10, 2) NOT NULL,
	stock_quantity INT DEFAULT 0,
	category TEXT
);




/*
🔸 Question 3: 🎓 Course Enrollment
   
  Create a table Enrollment to track which student enrolled in which course. Include:
- Enrollment_ID (serial, primary key)
- Student_Roll (integer, not null)
- Course_Code (varchar 10, not null)
- Enroll_Date (date)
- Ensure no duplicate combination of Student_Roll and Course_Code
*/


CREATE TABLE enrollment(
	enrollement_id SERIAL PRIMARY KEY,
	student_roll INT UNIQUE NOT NULL,
	course_code VARCHAR(10) NOT NULL,
	enroll_date DATE DEFAULT CURRENT_DATE,
	CONSTRAINT unique_enrollement UNIQUE (student_roll, course_code)
);




/*
🔸 Question 4: 🧾 Invoice Records
  
  Create a table Invoices for billing system. Include:
- Invoice_ID (serial, primary key)
- Customer_Name (varchar 25, not null)
- Amount (numeric with 10 digits, 2 decimal places)
- Paid_Status (varchar 10, default 'Pending')
- Due_Date (date) */

CREATE TABLE invoices(
	invoice_id SERIAL PRIMARY KEY,
	customer_name VARCHAR(25) NOT NULL,
	amount NUMERIC(10, 2),
	paid_status VARCHAR(10) DEFAULT 'pending',
	due_date DATE
);




/*
🔸 Question 5: 🧑‍💼 Employee Attendance
  
  Create a table Attendance to track daily employee attendance. Include:
- Record_ID (serial, primary key)
- Employ_ID (integer, not null)
- Date (date, not null)
- Status (varchar 10, must be either 'Present', 'Absent', or 'Leave')*/

-- 💲💲💲💫__Answer Path__💫💲💲💲




/* 
🔸 Question 6: 📚 Library Books

Create a table named Books to store details of library books. Include:
- Book_ID (serial, primary key)
- Title (varchar 100, not null)
- Author (varchar 50, not null)
- Published_Year (integer, must be greater than 1900)
- Genre (varchar 30, optional)
*/
-- 💲💲💲💫__Answer Path__💫💲💲💲




/* 
🔸 Question 7: 🚖 Ride Booking System

Design a table called Rides for a cab booking app. Include:
- Ride_ID (serial, primary key)
- Passenger_Name (varchar 40, not null)
- Driver_Name (varchar 40, not null)
- Fare (numeric with 2 decimal places, not null)
- Ride_Date (date, default current date)
- Status (varchar 15, must be either 'Completed', 'Cancelled', or 'Pending')
*/
-- 💲💲💲💫__Answer Path__💫💲💲💲




/* 
🔸 Question 7: 🚖 Ride Booking System

Design a table called Rides for a cab booking app. Include:
- Ride_ID (serial, primary key)
- Passenger_Name (varchar 40, not null)
- Driver_Name (varchar 40, not null)
- Fare (numeric with 2 decimal places, not null)
- Ride_Date (date, default current date)
- Status (varchar 15, must be either 'Completed', 'Cancelled', or 'Pending')
*/
-- 💲💲💲💫__Answer Path__💫💲💲💲





/* 
🔸 Question 8: 🏦 Bank Accounts

Create a table Accounts to store customer bank account details. Include:
- Account_No (integer, primary key)
- Holder_Name (varchar 50, not null)
- Balance (numeric with 12 digits, 2 decimal places, default 0)
- Account_Type (varchar 20, must be either 'Savings' or 'Current')
- Open_Date (date, not null)
*/
-- 💲💲💲💫__Answer Path__💫💲💲💲





/* 
🔸 Question 9: 🎤 Event Registrations

Design a table Registrations for managing event participants. Include:
- Reg_ID (serial, primary key)
- Participant_Name (varchar 40, not null)
- Event_Name (varchar 50, not null)
- Ticket_Type (varchar 20, must be either 'VIP', 'Regular', or 'Student')
- Registration_Date (date, default current date)
- Ensure no duplicate combination of Participant_Name and Event_Name
*/
-- 💲💲💲💫__Answer Path__💫💲💲💲





/* 
🔸 Question 10: 🏨 Hotel Booking

Create a table Bookings for hotel reservations. Include:
- Booking_ID (serial, primary key)
- Guest_Name (varchar 40, not null)
- Room_No (integer, not null)
- CheckIn_Date (date, not null)
- CheckOut_Date (date, not null)
- Payment_Status (varchar 15, default 'Pending')
- Ensure that CheckOut_Date must be greater than CheckIn_Date
*/
-- 💲💲💲💫__Answer Path__💫💲💲💲

