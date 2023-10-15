# Corporation Database Project

This database project involves the design and implementation of the "Corporation" database, based on the provided relational schema (Figure 1) and ER diagram (Figure 2). The project includes the creation of tables, views, functions, stored procedures, and triggers, as well as the insertion of sample data for testing.

## Table of Contents
1. [Database Schema](#database-schema)
2. [Instructions](#instructions)
3. [SQL Files](#sql-files)
4. [Views](#views)
5. [Functions](#functions)
6. [Stored Procedures](#stored-procedures)
7. [Triggers](#triggers)

## Database Schema
The database schema is based on Figure 1, which defines the structure of tables and their relationships within the "Corporation" database.

## Instructions
To replicate this database project, follow these steps:

1. **Database Creation**:
   - Create a new database named "Corporation."
   - Execute the "Table.sql" script to create the necessary tables, including primary keys and foreign keys.
   - Insert sample data using the "Insert.sql" script.

2. **Views**:
   - Execute the "View.sql" script to create views:
     - "Emp_info_view": Employee information with department details.
     - "Product_info_view": Product information with price change counts.

3. **Functions**:
   - Execute the "Func.sql" script to create functions:
     - "Dept_project_fn": Returns the total number of projects for a given department.
     - "Proj_sal_fn": Returns the total salary of employees working on a given project.

4. **Stored Procedures**:
   - Execute the "Proc.sql" script to create stored procedures:
     - "Budget_sp": Checks and prints project budget status.
     - "emp_hours_sp": Returns the total hours spent by an employee on projects.
     - "proj_prod_sp": Lists products associated with a project using cursors.
     - "price_his_sp": Maintains price history when changing product prices.

5. **Triggers**:
   - Execute the "Triggers.sql" script to create triggers:
     - "update_price_tg": Records price changes in the price history table.

## SQL Files
- **Table.sql**: Contains table creation and foreign key definitions.
- **Insert.sql**: Includes insert statements for sample data.
- **View.sql**: Defines views for data retrieval.
- **Func.sql**: Contains functions for data analysis.
- **Proc.sql**: Defines stored procedures for various operations.
- **Triggers.sql**: Contains triggers for maintaining data consistency.

Feel free to explore and modify these SQL files as needed.

