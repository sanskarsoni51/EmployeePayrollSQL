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

-- Add new columns to the employee_payroll table
alter table employee_payroll add
(
phone_number int unsigned,
department varchar(100) not null,
address varchar(200)
);

-- Add new columns to store additional payroll-related information
ALTER TABLE employee_payroll
ADD basic_pay INT,
    deduction INT,
    taxable_pay INT,
    income_tax INT;

-- Add a new column "net_pay" with a default value of 0
ALTER TABLE employee_payroll
ADD net_pay INT DEFAULT 0;

-- Drop the existing "salary" column from the employee_payroll table
ALTER TABLE employee_payroll
DROP COLUMN salary;


-- Insert records into the employee_payroll table with detailed payroll information for Terisa
INSERT INTO employee_payroll (name, department, gender, basic_pay, deduction, taxable_pay, income_tax, net_pay, start)
VALUES
    ('terisa', 'Marketing', 'F', 3000000, 1000000, 2000000, 500000, 1500000, '2018-01-03'),
    ('terisa', 'Sales', 'F', 3000000, 1000000, 2000000, 500000, 1500000, '2018-01-03');

-- Retrieve records from the employee_payroll table for employees with the name 'terisa'
SELECT * FROM employee_payroll WHERE name = 'terisa';
