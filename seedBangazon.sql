INSERT INTO Computers
SELECT 
null,
 '10/11/2017', 
 null,
1,
'XPS',
'Dell';

INSERT INTO Computers
SELECT 
null,
 '04/01/2016', 
'02/20/2018', 
0,
'ThinkPad',
'Lenovo';

INSERT INTO TrainingProgram
SELECT 
null,
 'Learn To Type', 
'09/20/2018', 
'09/27/2018', 
23;

INSERT INTO TrainingProgram
SELECT 
null,
 'Begining React', 
'02/14/2017', 
'03/01/2017', 
14;

INSERT INTO Department
SELECT 
null,
 'CodeRockstars', 
140234;

INSERT INTO Department
SELECT 
null,
 'IT', 
23400;

INSERT INTO Employees
SELECT 
null,
 'William', 
 'Kimball', 
'wkkimball043@gmail.com',
1,
1;

INSERT INTO Employees
SELECT 
null,
 'Robert', 
 'Leedy', 
'rleedy@gmail.com',
0,
2;

INSERT INTO EmployeeTraining
SELECT 
null,
1,
2;

INSERT INTO EmployeeTraining
SELECT 
null,
2,
1;


INSERT INTO EmployeeComputers
SELECT 
null,
'02/14/2017', 
'03/01/2017', 
2,
1;

INSERT INTO EmployeeComputers
SELECT 
null,
'10/07/2017', 
'03/01/2018', 
1,
2;

INSERT INTO Customer
SELECT 
null,
 'Sathvik', 
 'Reddy', 
'sr@gmail.com',
'123 Main St.',
'Nashville',
'TN',
'03/01/2014', 
'03/01/2018';

INSERT INTO Customer
SELECT 
null,
 'Natasha', 
 'Cox', 
'ncox@gmail.com',
'123 Side St.',
'Nashville',
'TN',
'01/14/2012', 
'07/23/2018';


INSERT INTO ProductType
SELECT
null,
'KnitCap';

INSERT INTO ProductType
SELECT
null,
'Craft Thing';

INSERT INTO PaymentType
SELECT
null,
'Visa',
12343211432,
213,
'06/23';

INSERT INTO PaymentType
SELECT
null,
'MasterCard',
6798620123,
456,
'03/19';

INSERT INTO customerPayment
SELECT
null,
2,
2;


INSERT INTO customerPayment
SELECT
null,
1,
1;

INSERT INTO Orders
SELECT
null,
2,
2;

INSERT INTO Orders
SELECT
null,
1,
1;


INSERT INTO Product
SELECT
null,
2340,
'Cap',
'Warm Winter Cap', 
1,
34,
1;

INSERT INTO Product
SELECT
null,
1323,
'Painting',
'Painting of the ocean', 
2,
1,
2;

INSERT INTO ProductOrders
SELECT
null,
1,
2;

INSERT INTO ProductOrders
SELECT
null,
1,
2;

INSERT INTO Computers
SELECT 
null,
 '12/11/2018', 
 null,
3,
'Pro',
'Mac';

INSERT INTO TrainingProgram
SELECT 
null,
 'Mastering SQL', 
'07/12/2018', 
'07/13/2018', 
5;

INSERT INTO Department
SELECT 
null,
 'Sales', 
24000;

INSERT INTO Employees
SELECT 
null,
 'Seth', 
 'Dana', 
'sd@gmail.com',
0,
3;

INSERT INTO EmployeeTraining
SELECT 
null,
3,
3;


INSERT INTO EmployeeComputers
SELECT 
null,
'02/14/2017', 
'03/01/2018', 
3,
3;

INSERT INTO Customer
SELECT 
null,
 'Walter', 
 'White', 
'ww@gmail.com',
'123 5th St.',
'Nashville',
'TN',
'03/01/2016', 
'03/01/2018';



INSERT INTO ProductType
SELECT
null,
'Poem';


INSERT INTO PaymentType
SELECT
null,
'Discover',
6748402783,
789,
'12/21';


INSERT INTO customerPayment
SELECT
null,
3,
3;

INSERT INTO Orders
SELECT
null,
3,
3;



INSERT INTO Product
SELECT
null,
21,
'Love Poem',
'Heart achingly beautiful poem', 
3,
3,
3;


INSERT INTO ProductOrders
SELECT
null,
3,
3;



