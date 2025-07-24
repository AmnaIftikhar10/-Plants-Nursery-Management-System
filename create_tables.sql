CREATE DATABASE project_db;
USE project_db;

-- LOCATION TABLE
CREATE TABLE Location (
  locationID INT PRIMARY KEY,
  address VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(50),
  country VARCHAR(50),
  zipcode INT
);

-- CUSTOMER TABLE
CREATE TABLE Customer (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(50),
  Address VARCHAR(100),
  Email VARCHAR(100),
  Phone VARCHAR(20)
);

-- STAFF TABLE
CREATE TABLE Staff (
  StaffID INT PRIMARY KEY,
  StaffName VARCHAR(50),
  StaffRole VARCHAR(50),
  Email VARCHAR(100),
  Phone VARCHAR(20),
  Address VARCHAR(100)
);

-- PLANTS TABLE
CREATE TABLE Plants (
  PlantID INT PRIMARY KEY,
  species VARCHAR(50),
  price DOUBLE,
  locationID INT,
  FOREIGN KEY (locationID) REFERENCES Location(locationID)
);

-- SUPPLIER TABLE
CREATE TABLE Supplier (
  SupplierID INT PRIMARY KEY,
  SupplierName VARCHAR(50),
  Phone VARCHAR(20),
  Address VARCHAR(100),
  plantID INT,
  FOREIGN KEY (plantID) REFERENCES Plants(PlantID)
);

-- FERTILIZER TABLE
CREATE TABLE Fertilizer (
  FertilizerID INT PRIMARY KEY,
  FertilizerName VARCHAR(50),
  FertilizerType VARCHAR(50),
  Quantity INT,
  plantID INT,
  supplierID INT,
  staffID INT,
  FOREIGN KEY (plantID) REFERENCES Plants(PlantID),
  FOREIGN KEY (supplierID) REFERENCES Supplier(SupplierID),
  FOREIGN KEY (staffID) REFERENCES Staff(StaffID)
);

-- OWNER TABLE
CREATE TABLE Owner (
  OwnerID INT PRIMARY KEY,
  OName VARCHAR(50),
  Address VARCHAR(100),
  Email VARCHAR(100),
  Phone VARCHAR(20),
  locationID INT,
  plantID INT,
  FOREIGN KEY (locationID) REFERENCES Location(locationID),
  FOREIGN KEY (plantID) REFERENCES Plants(PlantID)
);

-- EQUIPMENTS TABLE
CREATE TABLE Equipments (
  EquipmentID INT PRIMARY KEY,
  EquipmentName VARCHAR(50),
  EquipmentType VARCHAR(50),
  lastMaintenance DATE,
  nextMaintenance DATE,
  staffID INT,
  FOREIGN KEY (staffID) REFERENCES Staff(StaffID)
);

-- SEASONS TABLE
CREATE TABLE Seasons (
  seasonName VARCHAR(50) PRIMARY KEY,
  startDate DATE,
  endDate DATE,
  plantID INT,
  FOREIGN KEY (plantID) REFERENCES Plants(PlantID)
);

-- PAYMENT TABLE
CREATE TABLE Payment (
  paymentID INT PRIMARY KEY,
  amount DOUBLE,
  paymentDate DATE,
  paymentMethod VARCHAR(50),
  customerID INT,
  plantID INT,
  FOREIGN KEY (customerID) REFERENCES Customer(CustomerID),
  FOREIGN KEY (plantID) REFERENCES Plants(PlantID)
);
