-- Insert sample data into the DEPARTMENT table
INSERT INTO
    DEPARTMENT (Dnumber, Dept_Name, Main_Phone)
VALUES
    (1, 'HR Department', '555-1001'),
    (2, 'IT Department', '555-2002'),
    (3, 'Finance Department', '555-3003'),
    (4, 'Marketing Department', '555-4004'),
    (5, 'Sales Department', '555-5005'),
    (6, 'Research Department', '555-6006'),
    (7, 'Production Department', '555-7007'),
    (8, 'Quality Control Department', '555-8008'),
    (9, 'Customer Service Department', '555-9009'),
    (10, 'Legal Department', '555-1010');

-- Insert sample data into the EMPLOYEE table
INSERT INTO
    EMPLOYEE (
        DNo,
        Employee_ID,
        Employee_Name,
        Address,
        Hiring_Date,
        Salary
    )
VALUES
    (
        1,
        101,
        'John Doe',
        '123 Main St',
        '2022-01-15',
        60000.00
    ),
    (
        1,
        102,
        'Jane Smith',
        '456 Elm St',
        '2022-03-10',
        55000.00
    ),
    (
        2,
        201,
        'Mike Johnson',
        '789 Oak St',
        '2021-11-20',
        70000.00
    ),
    (
        2,
        202,
        'Emily Davis',
        '101 Pine St',
        '2022-02-05',
        62000.00
    ),
    (
        3,
        301,
        'Chris Brown',
        '222 Maple St',
        '2021-09-30',
        65000.00
    ),
    (
        3,
        302,
        'Lisa Wilson',
        '333 Birch St',
        '2022-04-12',
        59000.00
    ),
    (
        4,
        401,
        'David Lee',
        '444 Cedar St',
        '2022-05-20',
        72000.00
    ),
    (
        4,
        402,
        'Sarah White',
        '555 Spruce St',
        '2021-08-15',
        63000.00
    ),
    (
        5,
        501,
        'Kevin Hall',
        '666 Oakwood St',
        '2021-10-25',
        68000.00
    ),
    (
        5,
        502,
        'Jennifer Adams',
        '777 Redwood St',
        '2022-01-05',
        61000.00
    );

-- Insert sample data into the PROJECT table
INSERT INTO
    PROJECT (Project_Name, Duration, Budget, Project_Details)
VALUES
    ('ProjectA', 12, 100000.00, 'Project A details'),
    ('ProjectB', 8, 75000.00, 'Project B details'),
    ('ProjectC', 10, 90000.00, 'Project C details'),
    ('ProjectD', 14, 120000.00, 'Project D details'),
    ('ProjectE', 9, 80000.00, 'Project E details'),
    ('ProjectF', 11, 95000.00, 'Project F details'),
    ('ProjectG', 7, 60000.00, 'Project G details'),
    ('ProjectH', 6, 70000.00, 'Project H details'),
    ('ProjectI', 13, 110000.00, 'Project I details'),
    ('ProjectJ', 10, 85000.00, 'Project J details');

-- Insert sample data into the PRODUCT table
INSERT INTO
    PRODUCT (Price, ProductID, Product_Desc)
VALUES
    (49.99, 1, 'Product 1 description'),
    (29.99, 2, 'Product 2 description'),
    (39.99, 3, 'Product 3 description'),
    (19.99, 4, 'Product 4 description'),
    (59.99, 5, 'Product 5 description'),
    (34.99, 6, 'Product 6 description'),
    (44.99, 7, 'Product 7 description'),
    (25.99, 8, 'Product 8 description'),
    (69.99, 9, 'Product 9 description'),
    (55.99, 10, 'Product 10 description');

-- Insert sample data into the PRICE_HISTORY table
-- INSERT INTO
--     PRICE_HISTORY (Rec_Date, Price, ProductID)
-- VALUES
--     ('2023-01-01', 49.99, 1),
--     ('2023-02-01', 49.99, 1),
--     ('2023-02-15', 44.99, 1),
--     ('2023-01-01', 29.99, 2),
--     ('2023-02-01', 29.99, 2),
--     ('2023-02-15', 24.99, 2),
--     ('2023-01-01', 39.99, 3),
--     ('2023-02-01', 39.99, 3),
--     ('2023-02-15', 34.99, 3),
--     ('2023-01-01', 19.99, 4);

-- Insert sample data into the EPHONE table (Linking employees to phone numbers)
INSERT INTO
    EPHONE (Employee_ID, Phone_Numbers)
VALUES
    (101, '555-1111'),
    (101, '555-2222'),
    (102, '555-3333'),
    (201, '555-4444'),
    (202, '555-5555'),
    (301, '555-6666'),
    (302, '555-7777'),
    (401, '555-8888'),
    (402, '555-9999'),
    (501, '555-1234');

-- Insert sample data into the WORKS_ON table (Linking employees to projects)
INSERT INTO
    WORKS_ON (Employee_ID, Project_Name, Hours)
VALUES
    (101, 'ProjectA', 40),
    (101, 'ProjectB', 30),
    (102, 'ProjectA', 20),
    (201, 'ProjectB', 35),
    (202, 'ProjectC', 28),
    (301, 'ProjectA', 25),
    (302, 'ProjectD', 42),
    (401, 'ProjectE', 15),
    (402, 'ProjectF', 18),
    (501, 'ProjectG', 22);

-- Insert sample data into the BUILDS table (Linking projects to products)
INSERT INTO
    BUILDS (Project_Name, ProductID)
VALUES
    ('ProjectA', 1),
    ('ProjectB', 2),
    ('ProjectC', 3),
    ('ProjectD', 4),
    ('ProjectE', 5),
    ('ProjectF', 6),
    ('ProjectG', 7),
    ('ProjectH', 8),
    ('ProjectI', 9),
    ('ProjectJ', 10);