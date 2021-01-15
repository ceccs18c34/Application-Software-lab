USE lab;

#1
CREATE TABLE Employee(
 code CHAR(4) PRIMARY KEY,
 name VARCHAR(60),
 dob DATE,
 designation VARCHAR(80),
 salary FLOAT
 );
 
INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('gm77','justin','1999-03-20','General Manager',50000.00),
('pm84','joseph','1996-12-10','Product Manager',48000.50),
('cl23','thomas','1998-07-06','Clerk',25000),
('cl94','tony','2001-02-05','Clerk',15000.75);
#2
SELECT * FROM Employee ORDER BY name DESC;

#3
CREATE TABLE Deposit(
baccno BIGINT,
branch_name VARCHAR(60),
amount FLOAT
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(1990001,'palakkad',290000.25),
(1990002,'palakkad',291233.22),
(1990003,'karunagapally',123570.1),
(1990004,'palakkad',2239083.78),
(1990005,'alapuzha',100090.90);

#4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;
