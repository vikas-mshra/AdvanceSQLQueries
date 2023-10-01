-- 5.  Create a procedure named “Budget_sp”.   Input parameter: project budget, project name.  No output parameter. This procedure checks if the project’s budget is more the input budget, if yes, print “over budget”. If no, print “under control, within budget”.
CREATE OR ALTER PROC Budget_sp
    @Input_Budget DECIMAL(10, 2),
    @Project_Name VARCHAR(255) 
AS
BEGIN 
    DECLARE @Project_Budget DECIMAL(10, 2);
    SELECT @Project_Budget = P.Budget
    FROM PROJECT P
    WHERE P.Project_Name = @Project_Name;
    IF (@Project_Budget > @Input_Budget)
        PRINT 'over budget'
    ELSE
        PRINT 'under control, within budget'
END;

--exec Budget_sp @Input_Budget=18000, @Project_Name='Stock Portfolio Management';

-- 6. Create a procedure named “emp_hours_sp”: Input parameter: employee ID.Output parameter: total number of hours that the employee spent on all projects.CREATE 

CREATE OR ALTER PROC emp_hours_sp
    @Emp_Id INT,
    @Tot_Hours INT OUTPUT
AS
BEGIN
    SELECT @Tot_Hours = SUM(W.Hours)
    FROM WORKS_ON W
    WHERE W.Employee_ID = @Emp_Id
END;

-- DECLARE @Hours INT
--exec emp_hours_sp 2, @Hours OUTPUT
             -- OR
--exec emp_hours_sp @Emp_Id=2, @Hours=@Tot_Hours OUTPUT
--PRINT 'Total Hours: ' + CONVERT(VARCHAR(20), @Hours)

-- 7. Create a procedure named “proj_prod_sp”. You must use cursors in this procedure. Input parameter: Project name. This given (input) project can build multiple products. For each of these products, print the product ID and product description. It is required to use print statement to display ProductID and product description
CREATE OR ALTER PROCEDURE proj_prod_sp
    @Project_Name VARCHAR(255)
AS
BEGIN
    DECLARE @Product_ID INT;
    DECLARE @Product_Desc VARCHAR(255);
    DECLARE prod_cursor CURSOR
    FOR
        SELECT P.ProductID, P.Product_Desc
        FROM
            BUILDS B
            JOIN PRODUCT P ON P.ProductID = B.ProductID
        WHERE
            B.Project_Name = @Project_Name;
    OPEN prod_cursor;
    FETCH NEXT FROM prod_cursor INTO @Product_ID, @Product_Desc;
    WHILE @@FETCH_STATUS = 0
        BEGIN
            PRINT 'Product ID:' + CONVERT(VARCHAR(10), @Product_ID) + ' Product Desc:' + @Product_Desc
            FETCH NEXT FROM prod_cursor INTO @Product_ID, @Product_Desc;
        END;
    CLOSE prod_cursor;
    DEALLOCATE prod_cursor;
END;

-- exec proj_prod_sp 'Stock Portfolio Management';

-- 8. Use a procedure named “price_his_sp” to main database consistency.When changing the price of a product, add a record to the price history  (similar to what we did in Salary History table).

CREATE OR ALTER PROCEDURE price_his_sp
    @NewPrice INT,
    @ProductId INT
AS
BEGIN
    DECLARE @OldPrice INT;
    SELECT @OldPrice = Price
    FROM PRODUCT
    WHERE ProductID = @ProductID;

    IF @OldPrice <> @NewPrice
        BEGIN
            UPDATE PRODUCT
            SET Price = @NewPrice
            WHERE ProductID = @ProductID;

            INSERT INTO PRICE_HISTORY(Rec_Date, Price, ProductId)
            VALUES(GETDATE(), @OldPrice, @ProductID);
        END;    
END;

-- exec price_his_sp 57.99,1