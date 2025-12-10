use chirag;
create table employee (
EmpID int primary key,
EmpName varchar(100),
Department varchar(100),
City varchar(100),
Salary int,
HireDate date
) ;
desc table employee;
INSERT INTO employee (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(101, 'Rahul Mehta', 'Sales', 'Delhi', 55000, '2020-04-12'),
(102, 'Priya Sharma', 'HR', 'Mumbai', 62000, '2019-09-25'),
(103, 'Aman Singh', 'IT', 'Bengaluru', 72000, '2021-03-10'),
(104, 'Neha Patel', 'Sales', 'Delhi', 48000, '2022-01-14'),
(105, 'Karan Joshi', 'Marketing', 'Pune', 45000, '2018-07-22'),
(106, 'Divya Nair', 'IT', 'Chennai', 81000, '2019-12-11'),
(107, 'Raj Kumar', 'HR', 'Delhi', 60000, '2020-05-28'),
(108, 'Simran Kaur', 'Finance', 'Mumbai', 58000, '2021-08-02'),
(109, 'Arjun Reddy', 'IT', 'Hyderabad', 70000, '2022-02-18'),
(110, 'Anjali Das', 'Sales', 'Kolkata', 51000, '2023-01-15');
select * from employee;
-- Question 1 : Show employees working in either the ‘IT’ or ‘HR’ departments.
select * from employee
where Department = 'IT' or 'HR';
-- Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance’
select * from employee
where Department = 'IT' or 'HR' or 'Finance';
--  Display employees whose salary is between ₹50,000 and ₹70,000.
select * from employee 
where salary between 50000 and 70000;
-- List employees whose names start with the letter ‘A’.
select * from employee
where EmpName like 'A%';
-- Find employees whose names contain the substring ‘an’.
select * from employee
where EmpName like '%an%';
-- Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000.
select * from employee
where City='Delhi' or 'Mumbai'
and  salary > 55000;
-- Display all employees except those from the ‘HR’ department.
select * from employee
where Department <> 'HR';
-- Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first).
select * from employee 
where HireDate between '2019-01-01' and
'2022-12-31'
order by HireDate;
