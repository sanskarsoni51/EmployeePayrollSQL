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