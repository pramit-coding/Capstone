CREATE TABLE Salesman(Salesman_Id TEXT, Salesman_Name TEXT, Salesman_City TEXT, Commision TEXT);

INSERT INTO Salesman(Salesman_Id, Salesman_Name, Salesman_City, Commision)
VALUES 
('1','Jerry','Toowomba','50'),
('2','Mitchell','Hobart','25'),
('3','Hazlewood','Brisbane','75'),
('4','Ingilis','Sydney','50'),
('5','Travis','Adelaide','25');

CREATE TABLE Customer(Customer_Id TEXT, Customer_Name TEXT, Customer_City TEXT, Grade TEXT, Salesman_Id TEXT);

INSERT INTO Customer(Customer_ID, Customer_Name, Customer_City, Grade, Salesman_Id)
VALUES
('1','Alina','Cape Town','100','1'),
('2','Matheww','Towwnsville','85','2'),
('3','Gary','Ninjago','78','3'),
('4','Wang','Munbai','100','4'),
('5','Shao','Hobart','200','5');

CREATE TABLE Orders(Order_No TEXT, Purchase_Amt TEXT, Order_Date TEXT, Customer_Id TEXT, Salesman_Id);

INSERT INTO Orders(Order_No, Purchase_Amt, Order_Date, Customer_Id, Salesman_Id)
VALUES 
('101','455','20/7/26','1','1'),
('345','999','29/6/26','2','2'),
('143','421','30/5/26','3','3'),
('543','421','14/6/26','4','4'),
('144','542','5/4/26','5','5');

SELECT * FROM Customer;
SELECT * FROM Salesman;
SELECT * FROM Orders;

SELECT Customer.Customer_Name, Salesman.Salesman_Name, Customer.Customer_City
FROM Customer 
JOIN Salesman ON Customer.Customer_City = Salesman.Salesman_City;

SELECT Customer.Customer_Name, Salesman.Salesman_Name
FROM Customer 
JOIN Salesman ON Customer.Customer_Id = Salesman.Salesman_Id;

SELECT Orders.Order_No, Customer.Customer_Name, Orders.Customer_Id, Orders.Salesman_Id
FROM Orders
JOIN Customer ON Orders.Customer_Id = Customer.Customer_Id
JOIN Salesman ON Orders.Salesman_Id = Salesman.Salesman_Id
WHERE Customer.Customer_City <> Salesman.Salesman_City;

SELECT Orders.Order_No, Customer.Customer_Name
FROM Orders
JOIN Customer ON Orders.Customer_Id = Customer.Customer_ID;