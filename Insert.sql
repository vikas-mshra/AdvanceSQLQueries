-- Insert data into the DEPARTMENT table
INSERT INTO DEPARTMENT (Dnumber, Dept_Name, Main_Phone)
VALUES
    (1, 'Sales', '555-1234'),
    (2, 'Finance', '555-5678');

-- Insert data into the EMPLOYEE table
INSERT INTO EMPLOYEE (DNo, Employee_ID, Employee_Name, Address, Hiring_Date, Salary)
VALUES
    (1, 101, 'Warren Buffett', '123 Wall Street, New York', '1970-05-15', 1500000.00),
    (1, 102, 'Peter Lynch', '456 Main Street, Boston', '1985-03-20', 1200000.00),
    (1, 103, 'Rakesh Jhunjhunwala', '789 Stock Avenue, Mumbai', '1990-07-10', 900000.00),
    (2, 104, 'George Soros', '321 Investment Lane, New York', '1980-09-05', 2000000.00),
    (2, 105, 'Mohnish Pabrai', '567 Hedge Street, Irvine', '1995-11-18', 1100000.00),
    (2, 106, 'Radhakishan Damani', '987 Market Road, Mumbai', '1988-12-25', 1300000.00),
    (1, 107, 'Rakesh Jhunjhunwala', '789 Stock Avenue, Mumbai', '2000-02-02', 950000.00),
    (1, 108, 'Warren Buffett', '123 Wall Street, New York', '1998-04-30', 1550000.00),
    (2, 109, 'Ramesh Damani', '555 Investment Drive, Mumbai', '2005-06-15', 850000.00),
    (2, 110, 'Nemish Shah', '654 Hedge Lane, Mumbai', '2002-08-12', 1250000.00);

-- Insert data into the PROJECT table
INSERT INTO PROJECT (Project_Name, Duration, Budget, Project_Details)
VALUES
    ('Stock Portfolio Management', 12, 500000.00, 'Manage client portfolios in the stock market'),
    ('Financial Analysis', 6, 250000.00, 'Conduct financial analysis for investment decisions');

-- Insert data into the PRODUCT table
INSERT INTO PRODUCT (Price, ProductID, Product_Desc)
VALUES
    (49.99, 1, 'Stock Research Report'),
    (19.99, 2, 'Investment Software');

-- Insert data into the EPHONE table
INSERT INTO EPHONE (Employee_ID, Phone_Numbers)
VALUES
    (101, '555-1111'),
    (102, '555-2222'),
    (103, '555-3333'),
    (104, '555-4444'),
    (105, '555-5555'),
    (106, '555-6666'),
    (107, '555-7777'),
    (108, '555-8888'),
    (109, '555-9999'),
    (110, '555-0000');

-- Insert data into the WORKS_ON table (assign employees to projects)
INSERT INTO WORKS_ON (Employee_ID, Project_Name, Hours)
VALUES
    (101, 'Stock Portfolio Management', 40),
    (102, 'Stock Portfolio Management', 35),
    (103, 'Stock Portfolio Management', 45),
    (104, 'Financial Analysis', 30),
    (105, 'Financial Analysis', 25),
    (106, 'Financial Analysis', 28),
    (107, 'Stock Portfolio Management', 38),
    (108, 'Financial Analysis', 32),
    (109, 'Stock Portfolio Management', 42),
    (110, 'Financial Analysis', 27);

-- Insert data into the BUILDS table (link projects to products)
INSERT INTO BUILDS (Project_Name, ProductID)
VALUES
    ('Stock Portfolio Management', 1),
    ('Financial Analysis', 2);

-- Insert data into the PRICE_HISTORY table (record price changes)
INSERT INTO PRICE_HISTORY (Record_ID, Rec_Date, Price, ProductID)
VALUES
    (1, '2023-01-01', 49.99, 1),
    (2, '2023-02-01', 49.99, 1),
    (3, '2023-03-01', 49.99, 1),
    (4, '2023-01-01', 19.99, 2),
    (5, '2023-02-01', 19.99, 2),
    (6, '2023-03-01', 19.99, 2);
