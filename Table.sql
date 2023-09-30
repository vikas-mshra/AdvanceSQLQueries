-- Create the DEPARTMENT table
CREATE TABLE DEPARTMENT (
    Dnumber INT PRIMARY KEY,
    Dept_Name VARCHAR(255),
    Main_Phone VARCHAR(20)
);

-- Create the EMPLOYEE table
CREATE TABLE EMPLOYEE (
    DNo INT,
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(255),
    Address VARCHAR(255),
    Hiring_Date DATE,
    Salary DECIMAL(10, 2)
);

-- Create the PROJECT table
CREATE TABLE PROJECT (
    Project_Name VARCHAR(255) PRIMARY KEY,
    Duration INT,
    Budget DECIMAL(12, 2),
    Project_Details TEXT
);

-- Create the PRODUCT table
CREATE TABLE PRODUCT (
    Price DECIMAL(10, 2) NOT NULL,
    ProductID INT PRIMARY KEY,
    Product_Desc VARCHAR(255)
);

-- Create the EPHONE table
CREATE TABLE EPHONE (
    Employee_ID INT,
    Phone_Numbers VARCHAR(20),
    PRIMARY KEY (Employee_ID, Phone_Numbers),
    FOREIGN KEY (Employee_ID) REFERENCES EMPLOYEE(Employee_ID)
);

-- Create the WORKS_ON table
CREATE TABLE WORKS_ON (
    Employee_ID INT,
    Project_Name VARCHAR(255),
    Hours INT,
    PRIMARY KEY (Employee_ID, Project_Name),
    FOREIGN KEY (Employee_ID) REFERENCES EMPLOYEE(Employee_ID),
    FOREIGN KEY (Project_Name) REFERENCES PROJECT(Project_Name)
);

-- Create the BUILDS table
CREATE TABLE BUILDS (
    Project_Name VARCHAR(255),
    ProductID INT,
    PRIMARY KEY (Project_Name, ProductID),
    FOREIGN KEY (Project_Name) REFERENCES PROJECT(Project_Name),
    FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);

-- Create the PRICE_HISTORY table
CREATE TABLE PRICE_HISTORY (
    Record_ID INT PRIMARY KEY IDENTITY(1,1),
    Rec_Date DATE,
    Price DECIMAL(10, 2),
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);