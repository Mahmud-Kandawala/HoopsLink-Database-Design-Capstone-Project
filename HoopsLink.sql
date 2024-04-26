---Final Project: HoopsLink: Custom Coaching & Gear Hub DB ---
---	Course: CS-331- A	---		
--- Name: Mahmud Kandawala	---


CREATE DATABASE HoopsLinkDB;

USE HoopsLinkDB;

-- Drop tables that reference others:
--DROP TABLE IF EXISTS OrderItems;
--DROP TABLE IF EXISTS Orders;
--DROP TABLE IF EXISTS Payments;
--DROP TABLE IF EXISTS Sessions; 
--DROP TABLE IF EXISTS Reviews;

-- Drop tables that are referenced:
--DROP TABLE IF EXISTS Items;
--DROP TABLE IF EXISTS Inventory;
--DROP TABLE IF EXISTS Customers;
--DROP TABLE IF EXISTS Coaches;
--DROP TABLE IF EXISTS Suppliers

------------------------------------------ UserView1 ----------------------------------------------

CREATE TABLE Customers (
    customerID INT PRIMARY KEY,
    customerName VARCHAR(100),
    customerAddress VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    zip VARCHAR(10),
    email VARCHAR(100) UNIQUE,
    phoneNumber VARCHAR(15)
);


INSERT INTO Customers (customerID, customerName, customerAddress, city, state, zip, email, phoneNumber) VALUES
(1, 'John Doe', '123 Maple St', 'Anytown', 'TX', '75001', 'johndoe@email.com', '123-456-7890'),
(2, 'Jane Smith', '456 Oak St', 'Othertown', 'NY', '10001', 'janesmith@email.com', '987-654-3210'),
(3, 'Alice Johnson', '789 Pine St', 'Hereville', 'CA', '90001', 'alicej@email.com', '234-567-8901'),
(4, 'Bob Brown', '321 Elm St', 'Thattown', 'FL', '33001', 'bobbrown@email.com', '345-678-9012'),
(5, 'Carol White', '654 Spruce St', 'Thistown', 'IL', '60001', 'carolwhite@email.com', '456-789-0123'),
(6, 'David Green', '987 Cedar St', 'Wheretown', 'TX', '77001', 'davidgreen@email.com', '567-890-1234');


------------------------------------------ UserView2 ----------------------------------------------

CREATE TABLE Coaches (
    coachID INT PRIMARY KEY,
    coachName VARCHAR(100)
);

CREATE TABLE Sessions (
    sessionID INT PRIMARY KEY,
    coachID INT,
    customerID INT,
    sessionDate DATE,
    sessionTime TIME,
    sessionType VARCHAR(50),
    sessionFee DECIMAL(10, 2),
    FOREIGN KEY (coachID) REFERENCES Coaches(coachID),
    FOREIGN KEY (customerID) REFERENCES Customers(customerID)
);


INSERT INTO Coaches (coachID, coachName) VALUES
(101, 'Coach Mike'),
(102, 'Coach Anna'),
(103, 'Coach Steve'),
(104, 'Coach Linda'),
(105, 'Coach Tony'),
(106, 'Coach Rachel');

INSERT INTO Sessions (sessionID, coachID, customerID, sessionDate, sessionTime, sessionType, sessionFee) VALUES
(201, 101, 1, '2023-11-15', '15:00', 'Private', 100.00),
(202, 102, 2, '2023-11-16', '16:00', 'Group', 50.00),
(203, 103, 3, '2023-11-17', '17:00', 'Private', 100.00),
(204, 104, 4, '2023-11-18', '18:00', 'Group', 50.00),
(205, 105, 5, '2023-11-19', '19:00', 'Private', 100.00),
(206, 106, 6, '2023-11-20', '20:00', 'Group', 50.00);





------------------------------------------ UserView5 ----------------------------------------------

CREATE TABLE Suppliers (
    supplierID INT PRIMARY KEY,
    supplierName VARCHAR(100)
);

CREATE TABLE Items (
    itemCode INT PRIMARY KEY,
    itemName VARCHAR(100),
    itemPrice DECIMAL(10, 2),
    supplierID INT,
    FOREIGN KEY (supplierID) REFERENCES Suppliers(supplierID)
);

CREATE TABLE Inventory (
    itemCode INT,
    stockQuantity INT,
    PRIMARY KEY (itemCode),
    FOREIGN KEY (itemCode) REFERENCES Items(itemCode)
);


INSERT INTO Suppliers (supplierID, supplierName) VALUES
(501, 'Supplier A'),
(502, 'Supplier B'),
(503, 'Supplier C'),
(504, 'Supplier D'),
(505, 'Supplier E'),
(506, 'Supplier F');


INSERT INTO Items (itemCode, itemName, itemPrice, supplierID) VALUES
(401, 'Basketball', 29.99, 501),
(402, 'Sneakers', 79.99, 502),
(403, 'Jersey', 45.99, 503),
(404, 'Water Bottle', 9.99, 504),
(405, 'Gym Bag', 34.99, 505),
(406, 'Cap', 12.99, 506);


INSERT INTO Inventory (itemCode, stockQuantity) VALUES
(401, 10),
(402, 15),
(403, 20),
(404, 30),
(405, 5),
(406, 25);


------------------------------------------ UserView3 ----------------------------------------------

CREATE TABLE Orders (
    orderID INT PRIMARY KEY,
    customerID INT,
    orderDate DATE,
    FOREIGN KEY (customerID) REFERENCES Customers(customerID)
);


CREATE TABLE OrderItems (
    orderID INT,
    itemCode INT,
    quantity INT,
    PRIMARY KEY (orderID, itemCode),
    FOREIGN KEY (orderID) REFERENCES Orders(orderID),
    FOREIGN KEY (itemCode) REFERENCES Items(itemCode)
);


INSERT INTO Orders (orderID, customerID, orderDate) VALUES
(301, 1, '2023-11-21'),
(302, 2, '2023-11-22'),
(303, 3, '2023-11-23'),
(304, 4, '2023-11-24'),
(305, 5, '2023-11-25'),
(306, 6, '2023-11-26');


INSERT INTO OrderItems (orderID, itemCode, quantity) VALUES
(301, 401, 2),
(302, 402, 1),
(303, 403, 3),
(304, 404, 1),
(305, 405, 2),
(306, 406, 1);


------------------------------------------ UserView4 ----------------------------------------------

CREATE TABLE Payments (
    paymentID INT PRIMARY KEY,
    orderID INT,
    paymentDate DATE,
    amount DECIMAL(10, 2),
    paymentMethod VARCHAR(50),
    FOREIGN KEY (orderID) REFERENCES Orders(orderID)
);


INSERT INTO Payments (paymentID, orderID, paymentDate, amount, paymentMethod) VALUES
(501, 301, '2023-11-27', 59.98, 'Credit Card'),
(502, 302, '2023-11-28', 79.99, 'PayPal'),
(503, 303, '2023-11-29', 137.97, 'Debit Card'),
(504, 304, '2023-11-30', 9.99, 'Credit Card'),
(505, 305, '2023-12-01', 69.98, 'Apple Pay'),
(506, 306, '2023-12-02', 12.99, 'Google Pay');




------------------------------------------ UserView6 ----------------------------------------------

CREATE TABLE Reviews (
    reviewID INT PRIMARY KEY,
    coachID INT,
    reviewDate DATE,
    performanceScore INT,
    comments TEXT,
    FOREIGN KEY (coachID) REFERENCES Coaches(coachID)
);


INSERT INTO Reviews (reviewID, coachID, reviewDate, performanceScore, comments) VALUES
(601, 101, '2023-11-23', 90, 'Excellent coaching techniques.'),
(602, 102, '2023-11-24', 85, 'Very engaging.'),
(603, 103, '2023-11-25', 95, 'Outstanding attention to detail.'),
(604, 104, '2023-11-26', 80, 'Good but needs more tactical knowledge.'),
(605, 105, '2023-11-27', 75, 'Friendly but late sessions.'),
(606, 106, '2023-11-28', 88, 'Great motivational skills.');


------------------------------------------ ALL Tables SELECT * FROM STATEMENTS ----------------------------------------------

SELECT * FROM Customers;
SELECT * FROM Coaches;
SELECT * FROM Sessions; 
SELECT * FROM Suppliers;
SELECT * FROM Items;
SELECT * FROM Inventory;
SELECT * FROM Orders;
SELECT * FROM OrderItems; 
SELECT * FROM Payments;
SELECT * FROM Reviews; 

