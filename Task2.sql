use loan_management_systems;
-- More Customers
INSERT INTO Customer (Name, Email, Phone, DateOfBirth)
VALUES 
('Karthik V', 'karthikv@gmail.com', '9876543215', '1992-07-10'),
('Divya S', 'divyas@gmail.com', '9876543216', '1991-11-25'),
('Rajesh M', 'rajeshm@gmail.com', '9876543217', '1990-03-15'),
('Sneha R', 'snehar@gmail.com', '9876543218', '1989-09-05'),
('Vimal K', 'vimalk@gmail.com', '9876543219', '1993-01-30');

-- More Loan Types
INSERT INTO LoanType (LoanCategory, InterestRate)
VALUES 
('Car Loan', 9.30),
('Gold Loan' ,null ),
('Medical Loan', 12.00),
('Startup Loan', 13.75),
('Agriculture Loan', 7.80);

-- More Employees
INSERT INTO Employee (Name, Email, Role)
VALUES 
('Sunil P', 'sunilp@bank.com', 'Senior Loan Officer'),
('Pooja R', 'poojar@bank.com', 'Loan Clerk'),
('Manoj K', 'manojk@bank.com', 'Loan Manager'),
('Ritika T', 'ritikat@bank.com', 'Customer Manager'),
('Anil S', 'anils@bank.com', 'Loan Recovery Officer');

select*from  customer;
select*from employee;
select*from loantype;

update Employee Set role  = 'Senior Loan Manager' where EmployeeID = 3;
 
 
 SET sql_safe_updates = 0;

delete from Customer
where Name = 'rajesh m';
select*from customer;

select*from loantype;
SELECT * FROM LoanType
WHERE InterestRate IS NULL;

ALTER TABLE LoanType
MODIFY InterestRate DECIMAL(5,2) NULL;


