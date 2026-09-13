create database practice;
use practice;
show tables
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(20),
    hire_date DATE NOT NULL,
    job_title VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    status ENUM('Active', 'On Leave', 'Terminated') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO employees (
    first_name, 
    last_name, 
    email, 
    phone_number, 
    hire_date, 
    job_title, 
    department, 
    salary, 
    status
) VALUES 
(
    'John', 
    'Doe', 
    'john.doe@example1.com', 
    '+1-555-0199', 
    '2024-03-15', 
    'Software Engineer', 
    'Engineering', 
    85000.00, 
    'Active'
),
(
    'Jane', 
    'Smith', 
    'jane.smith@example.com', 
    '+1-555-0142', 
    '2023-08-01', 
    'Product Manager', 
    'Product', 
    95000.00, 
    'Active'
),
(
    'Robert', 
    'Johnson', 
    'robert.j@example.com', 
    '+1-555-0176', 
    '2022-11-20', 
    'HR Specialist', 
    'Human Resources', 
    62000.00, 
    'On Leave'
);

------- emplyee query
SELECT * FROM employees 
---projection
SELECT first_name, last_name, email FROM employees;
SELECT *  FROM employees where first_name = 'John';
SELECT *  FROM employees where email = 'john.doe@example1.com';



