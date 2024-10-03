

-- Switch to the new database
USE prospa;

-- Create an employees table
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    hire_date DATE
);

-- Insert sample data into the employees table
INSERT INTO employees (first_name, last_name, email, hire_date)
VALUES
('John', 'Doe', 'john.doe@example.com', '2020-05-20'),
('Jane', 'Smith', 'jane.smith@example.com', '2019-08-14'),
('Bob', 'Johnson', 'bob.johnson@example.com', '2021-03-12');

-- Query the employees table
SELECT * FROM employees;
