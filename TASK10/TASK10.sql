USE lab;
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
('cl23','Zachariah','1998-07-06','Clerk',25000),
('cl94','Susan','2001-02-05','Clerk',15000.75);
CREATE TABLE CUR (
  name VARCHAR(10),
  dob DATE,
  salary INT);
  
  DELIMITER //
  CREATE PROCEDURE IMP()
  BEGIN 
        DECLARE done INT DEFAULT FALSE;
        DECLARE emp_name VARCHAR(70);
        DECLARE emp_dob DATE;
        DECLARE emp_salary FLOAT;
        DECLARE emp_record CURSOR FOR SELECT name, dob, salary FROM employee;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET DONE= TRUE;
        OPEN emp_record;
        read_loop: LOOP 
           FETCH emp_record INTO emp_name, emp_dob, emp_salary;
           IF done THEN
    LEAVE read_loop;
   END IF ;
             INSERT INTO CUR VALUES(emp_name,emp_dob,emp_salary);
  END LOOP;
        CLOSE emp_record;
 END; //
 DELIMITER ;
     CALL IMP();
     SELECT * FROM CUR;