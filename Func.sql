-- 3. Create a function named “Dept_project_fn”.  Input parameter: department name. For the given department, there are employees who are working on projects.  How many projects in total are worked on by the employees of this department?  Returns the number.  If multiple employees work on the same project, then it counts as 1.  For example, if E1, E2, and E3 work on P1, then only count P1 once instead of 3 times. 

CREATE OR ALTER FUNCTION Dept_project_fn (@Dept_Name VARCHAR(255)) 
    RETURNS INT AS
BEGIN
    DECLARE @Emp_Count INT;
    SELECT
        @Emp_Count = COUNT(*)
    FROM
        DEPARTMENT D
        JOIN EMPLOYEE E ON E.DNo = D.Dnumber
        JOIN WORKS_ON W ON W.Employee_ID = E.Employee_ID
        JOIN PROJECT P ON P.Project_Name = W.Project_Name
    WHERE
        D.Dept_Name = @Dept_Name;
    RETURN @Emp_Count
END;

-- SELECT Dept_Name, dbo.Dept_project_fn(Dept_Name) AS Emp_Count from DEPARTMENT;

-- 4. Create a function named “Proj_sal_fn”. Input parameter: Project name.  Multiple employees can work on this given (input) project.  Return the total salary of these employees. 

CREATE OR ALTER FUNCTION Proj_sal_fn(@Project_Name VARCHAR(255))
    RETURNS INT AS
BEGIN
    DECLARE @Tot_Salary INT;
    SELECT @Tot_Salary = SUM(E.Salary)
    FROM
        PROJECT P
        JOIN WORKS_ON W ON W.Project_Name = P.Project_Name
        JOIN EMPLOYEE E ON E.Employee_ID = W.Employee_ID
    WHERE
        P.Project_Name = @Project_Name;
    RETURN @Tot_Salary;
END;

-- SELECT Project_Name, dbo.Proj_sal_fn(Project_Name) AS Total_Salary from PROJECT;