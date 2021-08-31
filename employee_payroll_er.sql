CREATE DATABASE employee_payroll_er;

USE employee_payroll_er;

CREATE TABLE company (
	company_id INT unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
        company_name VARCHAR(255) NOT NULL
);

INSERT INTO company (company_name) VALUES
	('Google'),
	('IBM'),
	('Amazon');
select * from company;

CREATE TABLE employee (
	employee_id INT unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
        company_id INTEGER,
        emp_name VARCHAR(100) NOT NULL,
        phone_no VARCHAR(20) NOT NULL,
        address	 VARCHAR(100) NOT NULL,
        gender CHAR(6) 
);

INSERT INTO employee (company_id, emp_name, phone_no, address, gender) VALUES
	(1, 'Michell', '9999999999', 'Mumbai', 'Female'),
	(1, 'Jenny', '8888888888', 'Gurugram', 'Female'),
	(2, 'Paula', '9798787888', 'Noida', 'Female'),
	(2, 'Arthur', '8765879998', 'Pune', 'Male'),
	(2, 'Thomas', '9999988888', 'Banglore', 'Male'),
	(3, 'Billy', '8888899999', 'Hyderabad', 'Male'),
	(3, 'Stacy', '9876543210', 'Delhi', 'Female');
select * from employee;

CREATE TABLE payroll (
        company_id INTEGER,
        employee_id INTEGER,
	salary Double NOT NULL,
        basic_pay Double NOT NULL,
        deductions Double NOT NULL,
        taxable_pay Double NOT NULL,
        tax Double NOT NULL,
        net_pay Double Not Null
	);

INSERT INTO payroll (company_id, employee_id, salary, basic_pay, deductions, taxable_pay, tax, net_pay) VALUES
	(1, 1, 500000, 400000, 20000, 30000, 50000, 450000),
	(1, 2, 500000, 400000, 20000, 30000, 50000, 450000),
	(2, 3, 500000, 400000, 20000, 30000, 50000, 450000),
	(2, 4, 600000, 500000, 30000, 40000, 60000, 550000),
	(2, 5, 400000, 300000, 20000, 30000, 50000, 350000),
	(3, 6, 400000, 300000, 20000, 30000, 50000, 350000),
	(3, 7, 360000, 260000, 10000, 20000, 25000, 310000);
select * from payroll;

CREATE TABLE department (
	department_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	employee_id INTEGER,
    department VARCHAR(100)
);

INSERT INTO department (employee_id, department) VALUES
	(1, 'Content'),
	(1, 'Technology'),
	(2, 'Content'),
	(3, 'Content'),
	(4, 'Sales'),
	(4, 'Marketing'),
	(5, 'Operations'),
	(6, 'Operations'),
	(7, 'R&D'),
	(5, 'Production');
select * from department;

select employee.emp_name, company.company_name from employee join company on employee.company_id = company.company_id;