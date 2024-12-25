-- Create Table: Employee
CREATE TABLE RAW.DBT_RAW.Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    HireDate DATE NOT NULL,
    JobTitle VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    Status VARCHAR(20) NOT NULL
);

-- Create Table: Department
CREATE TABLE RAW.DBT_RAW.Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    ManagerID INT,
    Location VARCHAR(100),
    Budget DECIMAL(10, 2),
    FOREIGN KEY (ManagerID) REFERENCES RAW.DBT_RAW.Employee(EmployeeID)
);

-- Insert Data into Employee
INSERT INTO RAW.DBT_RAW.Employee (EmployeeID, FirstName, LastName, Email, Phone, HireDate, JobTitle, DepartmentID, Salary, Status)
VALUES
    (1, 'Emma', 'Watson', 'emma.watson@example.com', '123-111-2222', '2020-06-15', 'Manager', 1, 95000.00, 'Active'),
    (2, 'Liam', 'Smith', 'liam.smith@example.com', '124-222-3333', '2019-05-20', 'Developer', 2, 85000.00, 'Active'),
    (3, 'Olivia', 'Brown', 'olivia.brown@example.com', '125-333-4444', '2021-07-10', 'Analyst', 3, 70000.00, 'Active'),
    (4, 'Noah', 'Taylor', 'noah.taylor@example.com', '126-444-5555', '2022-03-25', 'Clerk', 2, 55000.00, 'Active'),
    (5, 'Ava', 'Williams', 'ava.williams@example.com', '127-555-6666', '2021-11-01', 'Designer', 1, 75000.00, 'Active'),
    (6, 'James', 'Johnson', 'james.johnson@example.com', '128-666-7777', '2020-12-20', 'Lead Developer', 2, 90000.00, 'Active'),
    (7, 'Sophia', 'Moore', 'sophia.moore@example.com', '129-777-8888', '2018-09-05', 'Engineer', 3, 80000.00, 'Active'),
    (8, 'Benjamin', 'Davis', 'benjamin.davis@example.com', '130-888-9999', '2017-04-15', 'Accountant', 1, 65000.00, 'Active'),
    (9, 'Mia', 'Martinez', 'mia.martinez@example.com', '131-999-0000', '2023-01-10', 'Intern', 2, 40000.00, 'Active'),
    (10, 'Elijah', 'Harris', 'elijah.harris@example.com', '132-000-1111', '2022-08-30', 'Consultant', 3, 82000.00, 'Active'),
    (11, 'Charlotte', 'Thompson', 'charlotte.thompson@example.com', '133-111-2222', '2019-03-19', 'Technician', 1, 62000.00, 'Active'),
    (12, 'William', 'White', 'william.white@example.com', '134-222-3333', '2020-10-22', 'Operator', 3, 58000.00, 'Active'),
    (13, 'Amelia', 'Lee', 'amelia.lee@example.com', '135-333-4444', '2021-01-15', 'Supervisor', 2, 87000.00, 'Active'),
    (14, 'Ethan', 'Clark', 'ethan.clark@example.com', '136-444-5555', '2023-02-18', 'Administrator', 1, 76000.00, 'Active'),
    (15, 'Isabella', 'Lewis', 'isabella.lewis@example.com', '137-555-6666', '2018-12-12', 'Project Manager', 3, 94000.00, 'Active');

-- Insert Data into Department
INSERT INTO RAW.DBT_RAW.Department (DepartmentID, DepartmentName, ManagerID, Location, Budget)
VALUES
    (1, 'Human Resources', 1, 'Building A', 200000.00),
    (2, 'IT', 2, 'Building B', 500000.00),
    (3, 'Finance', 3, 'Building C', 300000.00);
