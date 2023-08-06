drop database if exists employee_db;
cREATE DATABASE employee_db; 


USE employee_db;

CREATE TABLE departments (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL    
);

CREATE TABLE roles (
    id INT NOT NULL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    department_id INT REFERENCES department(id) on delete set null
);

CREATE TABLE employ (
    id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INt references role(id) on delete set null
      
)
