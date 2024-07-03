create database car_sales_management;
use car_sales_management;
-- Create the tables
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(50),
    brand VARCHAR(50),
    year INT,
    price DECIMAL(10, 2)
);

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    contact_number VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Dealers (
    dealer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    contact_number VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    customer_id INT,
    dealer_id INT,
    sale_date DATE,
    sale_price DECIMAL(10, 2),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (dealer_id) REFERENCES Dealers(dealer_id)
);

CREATE TABLE Services (
    service_id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    service_date DATE,
    description VARCHAR(255),
    cost DECIMAL(10, 2),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id)
);

-- Insert data into Cars
INSERT INTO Cars (model, brand, year, price) VALUES
('Model S', 'Tesla', 2022, 80000),
('Civic', 'Honda', 2021, 25000),
('Corolla', 'Toyota', 2021, 20000),
('Mustang', 'Ford', 2022, 55000),
('X5', 'BMW', 2022, 70000),
('Altima', 'Nissan', 2021, 23000),
('Camry', 'Toyota', 2022, 25000),
('Accord', 'Honda', 2022, 27000),
('Charger', 'Dodge', 2021, 35000),
('Explorer', 'Ford', 2022, 40000),
('Q5', 'Audi', 2022, 45000),
('CX-5', 'Mazda', 2021, 22000),
('CR-V', 'Honda', 2022, 28000),
('A4', 'Audi', 2021, 37000),
('Grand Cherokee', 'Jeep', 2022, 50000),
('Escalade', 'Cadillac', 2022, 75000),
('F-150', 'Ford', 2022, 30000),
('Silverado', 'Chevrolet', 2021, 35000),
('Tahoe', 'Chevrolet', 2022, 60000),
('RAV4', 'Toyota', 2022, 28000),
('Highlander', 'Toyota', 2022, 35000),
('3 Series', 'BMW', 2021, 41000),
('C-Class', 'Mercedes-Benz', 2022, 42000),
('E-Class', 'Mercedes-Benz', 2022, 55000),
('S-Class', 'Mercedes-Benz', 2022, 110000),
('Outback', 'Subaru', 2021, 27000),
('Forester', 'Subaru', 2022, 25000),
('Impreza', 'Subaru', 2021, 23000),
('Legacy', 'Subaru', 2022, 27000),
('Wrangler', 'Jeep', 2022, 40000),
('Compass', 'Jeep', 2022, 30000),
('Cherokee', 'Jeep', 2022, 35000),
('Gladiator', 'Jeep', 2022, 45000),
('Cayenne', 'Porsche', 2022, 80000),
('Macan', 'Porsche', 2022, 60000),
('Panamera', 'Porsche', 2021, 90000),
('Taycan', 'Porsche', 2022, 85000),
('911', 'Porsche', 2022, 100000),
('Rio', 'Kia', 2021, 16000),
('Forte', 'Kia', 2022, 18000),
('Sorento', 'Kia', 2022, 29000),
('Sportage', 'Kia', 2022, 27000),
('Telluride', 'Kia', 2022, 33000),
('Seltos', 'Kia', 2022, 25000),
('Soul', 'Kia', 2022, 22000),
('Optima', 'Kia', 2021, 23000),
('Stinger', 'Kia', 2022, 40000),
('Jetta', 'Volkswagen', 2021, 20000),
('Passat', 'Volkswagen', 2022, 25000);

-- Insert data into Customers
INSERT INTO Customers (name, contact_number, email, city) VALUES
('John Doe', '1234567890', 'john@example.com', 'New Delhi'),
('Jane Smith', '0987654321', 'jane@example.com', 'Mumbai'),
('Amit Kumar', '1122334455', 'amit@example.com', 'Bangalore'),
('Raj Patel', '2233445566', 'raj@example.com', 'Ahmedabad'),
('Priya Singh', '3344556677', 'priya@example.com', 'Chennai'),
('Ravi Verma', '4455667788', 'ravi@example.com', 'Kolkata'),
('Neha Sharma', '5566778899', 'neha@example.com', 'Hyderabad'),
('Anil Mehta', '6677889900', 'anil@example.com', 'Pune'),
('Sunita Reddy', '7788990011', 'sunita@example.com', 'Jaipur'),
('Vikram Chauhan', '8899001122', 'vikram@example.com', 'Lucknow'),
('Arjun Khanna', '9900112233', 'arjun@example.com', 'Chandigarh'),
('Kiran Desai', '1011121314', 'kiran@example.com', 'Surat'),
('Sneha Gupta', '1213141516', 'sneha@example.com', 'Nagpur'),
('Rahul Yadav', '1314151617', 'rahul@example.com', 'Bhopal'),
('Pooja Bajaj', '1415161718', 'pooja@example.com', 'Patna'),
('Ramesh Rao', '1516171819', 'ramesh@example.com', 'Vadodara'),
('Meena Sharma', '1617181920', 'meena@example.com', 'Indore'),
('Suresh Nair', '1718192021', 'suresh@example.com', 'Coimbatore'),
('Aarti Kapoor', '1819202122', 'aarti@example.com', 'Thane'),
('Manish Pandey', '1920212223', 'manish@example.com', 'Agra'),
('Nisha Agarwal', '2021222324', 'nisha@example.com', 'Ranchi'),
('Gopal Singh', '2122232425', 'gopal@example.com', 'Jodhpur'),
('Kavita Jain', '2223242526', 'kavita@example.com', 'Raipur'),
('Sanjay Bose', '2324252627', 'sanjay@example.com', 'Guwahati'),
('Deepa Menon', '2425262728', 'deepa@example.com', 'Kochi'),
('Anita Joshi', '2526272829', 'anita@example.com', 'Visakhapatnam'),
('Vijay Kumar', '2627282930', 'vijay@example.com', 'Madurai'),
('Mohit Kapoor', '2728293031', 'mohit@example.com', 'Jalandhar'),
('Geeta Iyer', '2829303132', 'geeta@example.com', 'Thiruvananthapuram'),
('Naveen Das', '2930313233', 'naveen@example.com', 'Mysore'),
('Ritu Verma', '3031323334', 'ritu@example.com', 'Hubli');

-- Insert data into Dealers
INSERT INTO Dealers (name, contact_number, email, city) VALUES
('Auto World', '1111222233', 'autoworld@example.com', 'New Delhi'),
('Car Palace', '2222333344', 'carpalace@example.com', 'Mumbai'),
('Speed Motors', '3333444455', 'speedmotors@example.com', 'Bangalore'),
('Luxury Rides', '4444555566', 'luxuryrides@example.com', 'Ahmedabad'),
('Family Cars', '5555666677', 'familycars@example.com', 'Chennai'),
('City Wheels', '6666777788', 'citywheels@example.com', 'Kolkata'),
('Dream Autos', '7777888899', 'dreamautos@example.com', 'Hyderabad'),
('Metro Motors', '8888999900', 'metromotors@example.com', 'Pune'),
('Royal Cars', '9999000011', 'royalcars@example.com', 'Jaipur'),
('Elite Auto', '1010101010', 'eliteauto@example.com', 'Lucknow');

-- Insert data into Sales
INSERT INTO Sales (car_id, customer_id, dealer_id, sale_date, sale_price) VALUES
(1, 1, 1, '2023-01-15', 80000),
(2, 2, 2, '2023-02-10', 25000),
(3, 3, 3, '2023-03-05', 20000),
(4, 4, 4, '2023-04-20', 55000),
(5, 5, 5, '2023-05-25', 70000),
(6, 6, 6, '2023-06-15', 23000),
(7, 7, 7, '2023-07-10', 25000),
(8, 8, 8, '2023-08-05', 27000),
(9, 9, 9, '2023-09-25', 35000),
(10, 10, 10, '2023-10-15', 40000),
(11, 11, 1, '2023-01-25', 45000),
(12, 12, 2, '2023-02-25', 21500),
(13, 13, 3, '2023-03-30', 27500),
(14, 14, 4, '2023-04-25', 36500),
(15, 15, 5, '2023-05-30', 52000),
(16, 16, 6, '2023-06-25', 29000),
(17, 17, 7, '2023-07-30', 34000),
(18, 18, 8, '2023-08-25', 19000),
(19, 19, 9, '2023-09-30', 19000),
(20, 20, 10, '2023-10-30', 31000),
(21, 21, 1, '2023-01-10', 40000),
(22, 22, 2, '2023-02-05', 40000),
(23, 23, 3, '2023-03-20', 54000),
(24, 24, 4, '2023-04-15', 56000),
(25, 25, 5, '2023-05-10', 105000),
(26, 26, 6, '2023-06-05', 26500),
(27, 27, 7, '2023-07-20', 24500),
(28, 28, 8, '2023-08-15', 22500),
(29, 29, 9, '2023-09-10', 26500),
(30, 30, 10, '2023-10-05', 28000);

-- Insert data into Services
INSERT INTO Services (car_id, service_date, description, cost) VALUES
(1, '2023-06-10', 'Regular maintenance', 500),
(2, '2023-07-15', 'Oil change', 100),
(3, '2023-08-20', 'Tire replacement', 300),
(4, '2023-09-25', 'Brake inspection', 150),
(5, '2023-10-30', 'Battery replacement', 200),
(6, '2023-11-10', 'Air filter change', 50),
(7, '2023-12-15', 'Spark plug replacement', 80),
(8, '2024-01-20', 'Engine tuning', 400),
(9, '2024-02-25', 'Transmission service', 600),
(10, '2024-03-30', 'Coolant flush', 100),
(11, '2023-06-10', 'Fuel system cleaning', 120),
(12, '2023-07-15', 'Brake fluid replacement', 90),
(13, '2023-08-20', 'AC servicing', 250),
(14, '2023-09-25', 'Suspension check', 150),
(15, '2023-10-30', 'Exhaust repair', 300),
(16, '2023-11-10', 'Wheel alignment', 80),
(17, '2023-12-15', 'Tire balancing', 60),
(18, '2024-01-20', 'Headlight replacement', 40),
(19, '2024-02-25', 'Wiper blade replacement', 20),
(20, '2024-03-30', 'Interior cleaning', 70);


select * from Cars;
select * from Customers;
select * from Dealers;
select * from Sales ;
select * from Services;
