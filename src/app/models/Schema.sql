DROP DATABASE IF EXISTS web1rep_2024;
CREATE DATABASE web1rep_2024;
USE web1rep_2024;

CREATE TABLE IF NOT EXISTS department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE IF NOT EXISTS employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    position VARCHAR(255),
    salary DECIMAL(10, 2),
    transportAllowance BOOLEAN,
    hireDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(id)
);

SHOW TABLES;
DESCRIBE employee;
DESCRIBE department;