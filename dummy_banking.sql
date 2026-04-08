-- 1. Create the Tables
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName TEXT,
    City TEXT,
    Occupation TEXT
);

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType TEXT,
    Balance DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransDate DATE,
    Amount DECIMAL(10,2),
    Merchant TEXT
);

-- 2. Insert Sample Data
INSERT INTO Customers VALUES (101, 'Budi Santoso', 'Jakarta', 'Lecturer');
INSERT INTO Customers VALUES (102, 'Siti Aminah', 'Surabaya', 'Doctor');
INSERT INTO Customers VALUES (103, 'Andi Wijaya', 'Bandung', 'Student');
INSERT INTO Customers VALUES (104, 'Rina Wijaya', 'Semarang', 'Entrepreneur');
INSERT INTO Customers VALUES (105, 'Fajar Pratama', 'Yogyakarta', 'Graphic Designer');
INSERT INTO Customers VALUES (106, 'Dewi Lestari', 'Medan', 'Accountant');
INSERT INTO Customers VALUES (107, 'Eko Prasetyo', 'Makassar', 'Civil Servant');

INSERT INTO Accounts VALUES (9001, 101, 'Savings', 5500.00);
INSERT INTO Accounts VALUES (9002, 102, 'Current', 12000.50);
INSERT INTO Accounts VALUES (9003, 103, 'Savings', 450.00);
INSERT INTO Accounts VALUES (9004, 104, 'Current', 25000.00);
INSERT INTO Accounts VALUES (9005, 105, 'Savings', 1200.00);
INSERT INTO Accounts VALUES (9006, 106, 'Current', 8500.75);
INSERT INTO Accounts VALUES (9007, 107, 'Savings', 3100.00);
INSERT INTO Accounts VALUES (9008, 101, 'Credit Card', -250.00); -- Budi has a second account

INSERT INTO Transactions VALUES (5001, 9001, '2026-03-01', -50.00, 'Supermarket');
INSERT INTO Transactions VALUES (5002, 9002, '2026-03-02', -1500.00, 'Luxury Watch Store');
INSERT INTO Transactions VALUES (5003, 9003, '2026-03-03', -20.00, 'Coffee Shop');
-- Regular spending for Budi
INSERT INTO Transactions VALUES (5004, 9001, '2026-03-05', -35.50, 'Gas Station');
INSERT INTO Transactions VALUES (5005, 9001, '2026-03-10', -12.00, 'Cinema');
-- Large business transactions for Rina
INSERT INTO Transactions VALUES (5006, 9004, '2026-03-01', -4500.00, 'Office Rental');
INSERT INTO Transactions VALUES (5007, 9004, '2026-03-05', 10000.00, 'Client Payment');
INSERT INTO Transactions VALUES (5008, 9004, '2026-03-07', -1200.00, 'Electronics Store');
-- Small daily spends for Fajar
INSERT INTO Transactions VALUES (5009, 9005, '2026-03-02', -5.00, 'Online Game');
INSERT INTO Transactions VALUES (5010, 9005, '2026-03-04', -15.00, 'Food Delivery');
INSERT INTO Transactions VALUES (5011, 9005, '2026-03-06', -10.00, 'Coffee Shop');
-- Consistent spending for Dewi
INSERT INTO Transactions VALUES (5012, 9006, '2026-03-01', -200.00, 'Grocery Mart');
INSERT INTO Transactions VALUES (5013, 9006, '2026-03-15', -200.00, 'Grocery Mart');
INSERT INTO Transactions VALUES (5014, 9006, '2026-03-20', -80.00, 'Pharmacy');
-- A suspicious "Anomaly" for Eko
INSERT INTO Transactions VALUES (5015, 9007, '2026-03-10', -15.00, 'Lunch');
INSERT INTO Transactions VALUES (5016, 9007, '2026-03-25', -2800.00, 'International Wire Transfer'); -- Potential Fraud!
-- More data for Andi (The Student)
INSERT INTO Transactions VALUES (5017, 9003, '2026-03-10', -10.00, 'Printing Shop');
INSERT INTO Transactions VALUES (5018, 9003, '2026-03-12', -45.00, 'Bookstore');
-- Monthly Salary Deposits
INSERT INTO Transactions VALUES (5019, 9001, '2026-03-28', 3000.00, 'Salary Deposit');
INSERT INTO Transactions VALUES (5020, 9002, '2026-03-28', 7000.00, 'Salary Deposit');
INSERT INTO Transactions VALUES (5021, 9006, '2026-03-28', 4500.00, 'Salary Deposit');
INSERT INTO Transactions VALUES (5022, 9007, '2026-03-28', 3500.00, 'Salary Deposit');
-- Miscellaneous
INSERT INTO Transactions VALUES (5023, 9002, '2026-03-15', -500.00, 'Insurance Premium');
INSERT INTO Transactions VALUES (5024, 9008, '2026-03-18', -120.00, 'Restaurant');
INSERT INTO Transactions VALUES (5025, 9008, '2026-03-22', -80.00, 'E-commerce');
