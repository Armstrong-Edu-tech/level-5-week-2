CREATE DATABASE Company;

\c company;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50)
);

INSERT INTO employees (id, name, role)
VALUES 
    (1, 'Alice Johnson', 'Manager'),
    (2, 'Bob Smith', 'Developer'),
    (3, 'Carol White', 'Designer');

SELECT * FROM employees;

SELECT * FROM employees WHERE id=1
OR name='Bob Smith';
