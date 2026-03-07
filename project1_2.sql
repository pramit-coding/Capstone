CREATE TABLE Employees(EMP_ID INT, EMP_NAME TEXT, EMP_AGE INT, EMP_SALARY INT, EMP_DATE TEXT);

INSERT INTO Employees(EMP_ID, EMP_NAME, EMP_AGE, EMP_SALARY, EMP_DATE)
VALUES(1,'Jhon',23,1099,'20/5/26'),
(2,'Kate',23,1098,'1/2/26'),
(3,'Ant',34,8045,'4/5/26'),
(4,'Polar',23,5432,'21/7/26'),
(5,'Sand',34,1098,'20/5/26');

CREATE TABLE Clients(Client_ID INT, Client_NAME TEXT, Client_AGE INT);

INSERT INTO Clients(Client_ID, Client_NAME, Client_AGE)
VALUES(1,'Mathew',23),
(2,'Charles',25),
(3,'Bob',27),
(4,'High',34),
(5,'Low',17);


SELECT * FROM Employees;
SELECT * FROM Clients;

SELECT * FROM Employees
WHERE EMP_SALARY = 1099;

SELECT * FROM Emplyees 
WHERE EMP_DATE = '20/5/26';

SELECT MIN(EMP_SALARY)
FROM Employees
WHERE EMP_DATE = '20/5/26';

SELECT MAX(EMP_SALARY)
FROM Employees;

SELECT * FROM Employees
JOIN Clients ON Employees.EMP_AGE = Clients_AGE;

UPDATE Clients
SET Client_NAME = 'Unknown'
WHERE Client_ID = 4;

UPDATE Clients 
SET Client_Nam = 'High'
WHERE Client_ID = 4;


