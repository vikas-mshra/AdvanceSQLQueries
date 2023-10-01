-- 1.  create a view includes employee name, employee ID, hiring date, number of phone numbers, and the name of the department that the employee is working for.  View Name: Emp_info_view
CREATE OR ALTER VIEW Emp_info_view AS
SELECT
    E.Employee_ID,
    E.Employee_Name,
    E.Hiring_Date,
    COUNT(EP.Phone_Numbers) AS Num_Phone_Numbers,
    D.Dept_Name
FROM
    EMPLOYEE E
    LEFT JOIN EPHONE EP ON E.Employee_ID = EP.Employee_ID
    LEFT JOIN DEPARTMENT D ON E.DNo = D.Dnumber
GROUP BY
    E.Employee_ID,
    E.Employee_Name,
    E.Hiring_Date,
    D.Dept_Name;

-- SELECT * FROM Emp_info_view;

--2. Create a view named “Product_info_view”.  For each product, list product id, product description, and number of price changes of this product (number of records in the price history for this product).
CREATE OR ALTER VIEW Product_info_view AS
SELECT
    P.ProductID,
    P.Product_Desc,
    COUNT(PH.ProductID) AS Num_Price_Change
FROM
    PRODUCT P
    LEFT JOIN PRICE_HISTORY PH ON P.ProductID = PH.ProductID
GROUP BY
    P.ProductID,
    P.Product_Desc

-- SELECT * FROM Product_info_view;
