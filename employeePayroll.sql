-- Create a new database named payroll_service
CREATE DATABASE payroll_service;

-- Switch to the payroll_service database
USE payroll_service;

-- Create a table named employee_payroll to store employee information
CREATE TABLE employee_payroll
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT, -- Employee ID, auto-incremented
    name VARCHAR(150) NOT NULL,               -- Employee name
    salary DOUBLE NOT NULL,                   -- Employee salary
    start DATE NOT NULL,                      -- Start date of employment
    PRIMARY KEY (id)                          -- Define id as the primary key
);

-- Display the structure of the employee_payroll table
DESCRIBE employee_payroll;

-- Insert records into the employee_payroll table
INSERT INTO employee_payroll (name, salary, start) VALUES
    ('Bill', 100000.00, '2018-01-03'),
    ('Mark', 100000.00, '2018-01-03'),
    ('Charlie', 100000.00, '2018-01-03');

-- Retrieve all records from the employee_payroll table
SELECT * FROM employee_payroll;

-- Retrieve record of particular from the employee_payroll table
select salary from employee_payroll where name = 'Bill';

-- Add a new column named "gender" after the "name" column in the employee_payroll table
ALTER TABLE employee_payroll ADD gender CHAR(1) AFTER name;

-- Update the gender column for specific employees in the employee_payroll table
UPDATE employee_payroll SET gender = 'M' WHERE name IN ('Bill', 'Mark', 'Charlie');

-- Calculate the total salary for male employees (gender = 'M') in the employee_payroll table
SELECT SUM(salary) AS total_salary_male FROM employee_payroll WHERE gender = 'M';
