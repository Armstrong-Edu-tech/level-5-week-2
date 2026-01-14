CREATE DATABASE company;

\c company


CREATE TABLE employees (
emp_id INT PRIMARY KEY,
name VARCHAR(255)
);

CREATE TABLE salary (
emp_id INT UNIQUE,
salary INT,
FOREIGN KEY (emp_id)
REFERENCES employees(emp_id) ON DELETE CASCADE
);
