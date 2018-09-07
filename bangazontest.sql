CREATE TABLE `Computers` (
	`ComputerId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`DatePurchased`	TEXT varchar(10) NOT NULL,
	`DateDecomissioned`	TEXT varchar(10) ,
	`Functional` BOOL NOT NULL,
	`ModelName`	TEXT NOT NULL,
	`Manufacturer`	TEXT NOT NULL
);

CREATE TABLE `TrainingProgram` (
	`ProgramId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`ProgramName`	TEXT NOT NULL,
	`StartDate`	TEXT varchar(10) NOT NULL,
	`EndDate`	TEXT varchar(10) NOT NULL,
	`MaximumAttendees` INTEGER NOT NULL
);

CREATE TABLE `Department` (
	`DepartmentId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`DepartmentName`	TEXT NOT NULL,
	`ExpenseBudget` INTEGER NOT NULL
);

CREATE TABLE `Employees` (
	`EmployeeId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`FirstName`	TEXT NOT NULL,
	`LastName`	TEXT NOT NULL,
	`Email`	TEXT NOT NULL,
	`Supervisor`	BOOL NOT NULL,
	`departmentId` INTEGER NOT NULL,
	FOREIGN KEY(`departmentId`)REFERENCES `Department`(`DepartmentId`)
);

CREATE TABLE `EmployeeTraining` (
	`EmployeeTrainingId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`ProgramId` INTEGER NOT NULL,
	`EmployeeId` INTEGER NOT NULL,
	FOREIGN KEY(`ProgramId`)REFERENCES `TrainingProgram`(`ProgramId`)
	FOREIGN KEY(`EmployeeId`)REFERENCES `Employees`(`EmployeeId`)
);

CREATE TABLE `EmployeeComputers` (
	`EmployeeComputersId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`DateAssigned` varchar(10) NOT NULL,
	`DateReturned` varchar(10) NOT NULL,
	`ComputerId` INTEGER NOT NULL,
	`EmployeeId` INTEGER NOT NULL,
	FOREIGN KEY(`ComputerId`)REFERENCES `Computers`(`ComputerId`)
	FOREIGN KEY(`EmployeeId`)REFERENCES `Employees`(`EmployeeId`)
);

CREATE TABLE `Customer` (
	`CustomerId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`FirstName`	TEXT NOT NULL,
	`LastName`	TEXT  NOT NULL,
	`Email` TEXT NOT NULL,
	`Address`	TEXT NOT NULL,
	`City`	TEXT NOT NULL,
	`StateName`	TEXT varchar(2) NOT NULL,
	`AccountCreationDate`	TEXT varchar(10) NOT NULL,
	`lastLogin`	TEXT varchar(10) NOT NULL
);


CREATE TABLE `ProductType` (
	`ProductTypeId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`ProductTypeName`	TEXT NOT NULL
);

CREATE TABLE `PaymentType` (
	`PaymentTypeId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`PaymentTypeName`	TEXT NOT NULL,
	`card/acct nuimber`	INTEGER NOT NULL,
	`CCV Code` INTEGER VARCHAR(3) NOT NULL,
	`ExpirationDate` varchar(10) NOT NULL
);

CREATE TABLE `customerPayment` (
	`customerPaymentId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`PaymentTypeId` INTEGER NOT NULL,
	`CustomerId` INTEGER NOT NULL,
	FOREIGN KEY(`CustomerId`)REFERENCES `Customer`(`CustomerId`)
	FOREIGN KEY(`PaymentTypeId`)REFERENCES `PaymentType`(`PaymentTypeId`)
);

CREATE TABLE `Orders` (
	`OrderId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`CustomerId` INTEGER NOT NULL,
	`customerPaymentId` INTEGER NOT NULL,
	FOREIGN KEY(`CustomerId`)REFERENCES `Customer`(`CustomerId`)
	FOREIGN KEY(`customerPaymentId`)REFERENCES `customerPayment`(`customerPaymentId`)
);

CREATE TABLE `Product` (
	`ProductId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Price` INTEGER NOT NULL,
	`Title` TEXT NOT NULL,
	`Description` TEXT NOT NULL,
	`CreatorId` INTEGER NOT NULL,
	`Quantity` INTEGER NOT NULL,
	`ProductTypeId` INTEGER NOT NULL,
	FOREIGN KEY(`CreatorId`)REFERENCES `Customer`(`CustomerId`)
	FOREIGN KEY(`ProductTypeId`)REFERENCES `ProductType`(`ProductTypeId`)
);

CREATE TABLE `ProductOrders` (
	`ProductOrderId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`OrderId` INTEGER NOT NULL,
	`ProductId` INTEGER NOT NULL,
	FOREIGN KEY(`OrderId`)REFERENCES `Orders`(`OrderId`)
	FOREIGN KEY(`ProductId`)REFERENCES `Product`(`ProductId`)
);


