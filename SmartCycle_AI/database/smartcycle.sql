CREATE DATABASE IF NOT EXISTS smartcycle_ai; USE smartcycle_ai;
DROP TABLE IF EXISTS sales,service,test_rides,offers,leads,bicycles,customers,team,users;
CREATE TABLE users(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100),email VARCHAR(150) UNIQUE,password VARCHAR(255),role VARCHAR(40));
CREATE TABLE bicycles(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(120),sku VARCHAR(50) UNIQUE,category VARCHAR(50),price DECIMAL(12,2),stock INT,ai_tag VARCHAR(80));
CREATE TABLE customers(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(120),email VARCHAR(150),phone VARCHAR(30),city VARCHAR(80),segment VARCHAR(60));
CREATE TABLE leads(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(120),phone VARCHAR(30),interest VARCHAR(100),source VARCHAR(50),score INT,status VARCHAR(40));
CREATE TABLE sales(id INT AUTO_INCREMENT PRIMARY KEY,invoice_no VARCHAR(50) UNIQUE,customer_id INT,bicycle_id INT,qty INT,amount DECIMAL(12,2),payment VARCHAR(30),sale_date DATE);
CREATE TABLE service(id INT AUTO_INCREMENT PRIMARY KEY,customer_id INT,bicycle_id INT,service_type VARCHAR(100),status VARCHAR(40),service_date DATE,cost DECIMAL(12,2));
CREATE TABLE test_rides(id INT AUTO_INCREMENT PRIMARY KEY,customer_id INT,bicycle_id INT,ride_date DATE,ride_time TIME,status VARCHAR(40));
CREATE TABLE offers(id INT AUTO_INCREMENT PRIMARY KEY,title VARCHAR(150),audience VARCHAR(100),discount INT,status VARCHAR(40));
CREATE TABLE team(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100),role VARCHAR(80),performance INT,status VARCHAR(40));
INSERT INTO users VALUES(NULL,'SmartCycle Admin','admin@smartcycle.com','$2y$12$h49rFu61067hdZXYfxnntO4.6UJasR0iCGDZlRzIWKjoaN8kB5Ttm','Admin');
INSERT INTO bicycles(name,sku,category,price,stock,ai_tag) VALUES
('TrailMaster X','SC-MTB-001','Mountain',28999,12,'Adventure'),('UrbanRide Pro','SC-CITY-002','City',21999,8,'Commuter'),('VoltRide E1','SC-EB-003','Electric',64999,4,'Premium'),('RoadSprint 700','SC-RD-004','Road',45999,7,'Speed'),('Kiddo Fun 20','SC-KD-005','Kids',11999,15,'Family'),('TrailMaster Lite','SC-MTB-006','Mountain',24999,3,'Adventure');
INSERT INTO customers VALUES
(NULL,'Arun Kumar','arun@example.com','9876543210','Coimbatore','Adventure'),(NULL,'Priya S','priya@example.com','9876543211','Chennai','Premium'),(NULL,'Karthik R','karthik@example.com','9876543212','Madurai','Commuter'),(NULL,'Meena P','meena@example.com','9876543213','Salem','Family'),(NULL,'Rahul V','rahul@example.com','9876543214','Coimbatore','New Rider'),(NULL,'Divya M','divya@example.com','9876543215','Erode','Adventure');
INSERT INTO leads VALUES(NULL,'Arun Kumar','9876543210','Mountain MTB','Website',92,'Hot'),(NULL,'Priya S','9876543211','Electric Bike','Instagram',88,'Contacted'),(NULL,'Vignesh K','9876543216','Road Bike','Referral',79,'New'),(NULL,'Sanjay P','9876543217','City Bike','Walk-in',67,'Contacted'),(NULL,'Nithya R','9876543218','E-bike','Website',84,'Hot');
INSERT INTO sales VALUES(NULL,'SC-1001',1,1,1,28999,'UPI','2026-09-03'),(NULL,'SC-1002',2,3,1,64999,'Card','2026-09-07'),(NULL,'SC-1003',3,2,1,21999,'UPI','2026-09-12'),(NULL,'SC-1004',4,5,2,23998,'Cash','2026-09-16'),(NULL,'SC-1005',6,4,1,45999,'EMI','2026-09-20');
INSERT INTO service VALUES(NULL,1,1,'First Service','Completed','2026-09-08',750),(NULL,2,3,'Battery Check','Scheduled','2026-09-28',1200),(NULL,3,2,'Brake Service','In Progress','2026-09-27',650);
INSERT INTO test_rides VALUES(NULL,5,1,'2026-09-27','10:00:00','Booked'),(NULL,1,3,'2026-09-28','15:30:00','Booked'),(NULL,3,2,'2026-09-29','11:00:00','Booked');
INSERT INTO offers VALUES(NULL,'Adventure Starter Pack','Adventure Riders',12,'Active'),(NULL,'E-Bike Upgrade Week','Premium Customers',8,'Active'),(NULL,'Welcome Ride Offer','New Riders',10,'Scheduled');
INSERT INTO team VALUES(NULL,'Anitha','Sales Manager',94,'Online'),(NULL,'Vijay','Sales Executive',88,'Online'),(NULL,'Meera','Customer Success',91,'Online'),(NULL,'Rohit','Service Advisor',84,'Busy'),(NULL,'Divya','Digital Marketing',87,'Online');
