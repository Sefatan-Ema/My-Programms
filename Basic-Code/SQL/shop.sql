
CREATE TABLE IF not exists employees(
	Employee_id INT NOT NULL  AUTO_INCREMENT,
	Firstname VARCHAR(200) NOT NULL,
	
	Lastname VARCHAR(200) NOT NULL,
	Email VARCHAR(200) NOT NULL,
	Phone_N0 VARCHAR(200),
	Hire_Date Date,
	Job_category varchar(200),
	salary DECIMAL(10,2),
	
	
	PRIMARY KEY(Employee_id),
	
);
ALTER TABLE 'employees' CHANGE 'Job_ategory' 'Job_category' VARCHAR(200);


INSERT INTO 'employees' ('Employee_id', 'Firstname', 'Lastname', 'Email', 'Phone_N0', 'Hire_Date', 'Job_category', 'salary') 
VALUES ('1', 'Abir', 'Hosen', 'abirhosen@gmail', '023455', '2021-03-09', 'SE', '50000.00'), 
	   ('2', 'Asad', 'Khan', 'Asadkhan@gmail', '0287655', '2021-03-22', 'Tester', '100000.00'), 
	   ('3', 'Danil', 'Rahman', 'danilrahman@gmail', '023450', '2021-03-16', 'SE', '50000.00'), 
	   ('4', 'Kabir', 'Khan', ' kabirkhan@gmail', '027450', '2021-03-16', 'Tester', '80000.00');
	   
	   
UPDATE employees SET salary = '12000.00' WHERE 'employees'.'Employee_id' = 3;

--Q1(ANS.)
SELECT UPPER(Concat(Firstname, ' ', Lastname)) AS Name ,Phone_N0,salary, salary*.15 PF  From employees;


--Q2(ANS.)

SELECT Count(Distinct Job_category) As Number_of_Job From employees;

--Q3(ANS.)
SELECT * From employees Order By Employee_id desc
limit 2;

--Q4(ANS.)
SELECT Concat(Firstname, ' ', Lastname) AS Name ,Hire_Date From employees Where Year(Hire_Date) Like '2017%';

--Q5(ANS.)
CREATE TABLE temp_employees Like  employees;
INSERT INTO temp_employees Select *From employees;

--Q6(ANS.)

SELECT  count(Employee_id) as Employee_num, Job_category as Job From employees Group By Job_category;



--Q7(ANS.)

 SELECT Firstname,max(salary) AS Higher_Salary_in_the_category From employees where Job_category='IT';
 
 
 
--Q8(ANS.)
SELECT max(salary) AS  Highest_Salary,Job_category From employees Group By Job_category; 

--Q10(ANS.)

SELECT DISTINCT(salary) From employees Order By salary desc limit 2,1;

--Q11(ANS.)

SELECT Job_category ,Employee_id From employees Order By Employee_id ;

--Q12(ANS.)


UPDATE employees SET Phone_N0= REPLACE(Phone_N0,017,999) ;

--updating values


UPDATE 'employees' SET 'Hire_Date' = '2019-11-03' WHERE 'employees'.'Employee_id' = 1;
UPDATE 'employees' SET 'Hire_Date' = '2017-04-03' WHERE 'employees'.'Employee_id' = 2;

--Q13(ANS.)

SELECT Employee_id,LPAD(Phone_N0,13,'0')   As Phone_No From employees;





--Q14(ANS.)

SELECT Firstname,Hire_Date ,Datediff(CURDATE(),Hire_Date)/365 As Experiance From employees;

--Q15(ANS.)
SELECT Firstname,Hire_Date   From employees  where  (Datediff(sysdate(),Hire_Date)/365)>5;



--Q16(ANS.)

SELECT  Date_format(CURDATE(),'%D/%m/%y') As CurrentDate;


--Q17(ANS.)

SELECT  Year(Hire_Date) As Year from employees;


--Q18(ANS.)

Alter Table employees Add column ID INT NOT NULL First;


--Q19(ANS.)

Alter Table temp_employees Add  age INT NOT NULL After Email;


--Q20(ANS.)

Create Index employees_firstname_idx  On  employees (Firstname);



--Q21(ANS.)

INSERT INTO 'employees' ('Employee_id', 'Firstname', 'Lastname', 'Email', 'Phone_N0', 'Hire_Date', 'Job_category', 'salary') 
VALUES(NULL, 'Akash', 'Hosen ', 'akashhosen@gmail', '01723455 ','2015-03-09', 'IT', '100000.00'),
 ( NULL, 'Hanif', 'Ahmed', '017287655', 'hanifahmed@gmail', '2022-01-01', 'Tester', '60000.00'), 
 ( NULL, 'Motin', 'Rahamn', 'motinrahamn@gmail', '01727450', '2016-03-16', 'Cashier', '80000.00');
 
 
 --Q22(ANS.)
 CREATE TABLE IF not exists jobs(
	job_id INT NOT NULL UNIQUE PRIMARY Key,
	job_title VARCHAR(200) NOT  NULL Default ' ',
	Min_salary DECIMAL(6,0) Default 8000,
	
	Max_salary DECIMAL(6,0) Default NULL
	
 )ENGINE = InnoBD;

CREATE TABLE IF not exists employee(
	Employee_id INT NOT NULL  AUTO_INCREMENT,
	Firstname VARCHAR(200) NOT NULL,
	
	Lastname VARCHAR(200) NOT NULL,
	Email VARCHAR(200) NOT NULL,
	Phone_N0 VARCHAR(200) Default NULL,
	Hire_Date Date,
	Job_id varchar(20),
	salary DECIMAL(10,2),
	
	
	PRIMARY KEY(Employee_id),
	FOREIGN KEY(Job_id) REFERENCES jobs(Job_id) 
	
) ENGINE  = InnoBD;


