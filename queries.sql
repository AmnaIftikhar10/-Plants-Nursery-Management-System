-- OWNER
SELECT * FROM Owner;

INSERT INTO Owner (OwnerID, OName, Address, Email, Phone, locationID, plantID)
VALUES (11, 'Dani', '123 Main St', 'dani.smith@gmail.com', '1234567890', 1, 1);

UPDATE Owner
SET OName = 'Tamoor'
WHERE OwnerID = 5;

-- SUPPLIER
SELECT * FROM Supplier;

UPDATE Supplier
SET Address = '123 Main St, Lahore, PAKISTAN'
WHERE SupplierID = 4;

-- LOCATION
SELECT * FROM Location;

INSERT INTO Location (locationID, Address, City, State, Country, Zipcode)
VALUES (13, '142 Main Street', 'Multan', 'Punjab', 'Pakistan', 9000);

-- PLANTS
SELECT * FROM Plants;

UPDATE Plants
SET species = 'Mustard'
WHERE PlantID = 7;

-- STAFF
SELECT * FROM Staff
WHERE StaffName LIKE 'A%';

UPDATE Staff
SET StaffName = 'Zohaib'
WHERE StaffID = 17;

-- FERTILIZER
SELECT * FROM Fertilizer;

-- SEASONS
SELECT * FROM Seasons;

INSERT INTO Seasons (seasonName, startDate, endDate, plantID)
VALUES ('Sunny', '2002-03-20', '2004-06-20', 1);

UPDATE Seasons
SET endDate = '2023-09-12'
WHERE seasonName = 'Sunny';

-- CUSTOMER
SELECT * FROM Customer;

UPDATE Customer
SET CustomerName = 'Sohaib', 
    Address = '125, Rawalpindi', 
    Email = 'sohaib@gmail.com', 
    Phone = '0467290189'
WHERE CustomerID = 1;

-- PAYMENT
SELECT * FROM Payment;

UPDATE Payment
SET amount = 1000.00
WHERE paymentID = 5;

-- JOINS --

-- Owners with their Location and Plant
SELECT o.OwnerID, o.OName, o.Address AS OwnerAddress, 
       l.City, l.State, l.Country, 
       p.species AS PlantSpecies
FROM Owner o
JOIN Location l ON o.locationID = l.locationID
JOIN Plants p ON o.plantID = p.PlantID;

-- Suppliers and their Plants
SELECT s.SupplierID, s.SupplierName, s.Address, s.Phone,
       p.species AS PlantSpecies, p.price
FROM Supplier s
JOIN Plants p ON s.plantID = p.PlantID;

-- Plants with Location and Fertilizer info
SELECT p.PlantID, p.species, p.price, 
       l.City, l.State,
       f.FertilizerName, f.FertilizerType, f.Quantity
FROM Plants p
JOIN Location l ON p.locationID = l.locationID
LEFT JOIN Fertilizer f ON f.plantID = p.PlantID;

-- Equipment details with Staff
SELECT e.EquipmentID, e.EquipmentName, e.EquipmentType, 
       s.StaffName, s.StaffRole
FROM Equipments e
JOIN Staff s ON e.staffID = s.StaffID;

-- Customers with Payments and Plants bought
SELECT c.CustomerID, c.CustomerName, c.Email, 
       p.species AS PlantSpecies,
       pay.amount, pay.paymentMethod, pay.paymentDate
FROM Customer c
JOIN Payment pay ON c.CustomerID = pay.customerID
JOIN Plants p ON pay.plantID = p.PlantID;

-- Seasons and Plants
SELECT se.seasonName, se.startDate, se.endDate, 
       p.species AS PlantSpecies
FROM Seasons se
JOIN Plants p ON se.plantID = p.PlantID;

-- Staff and their Fertilizer
SELECT 
  st.StaffID, st.StaffName, st.StaffRole, f.FertilizerName, f.FertilizerType
FROM Staff st
LEFT JOIN Fertilizer f ON f.staffID = st.StaffID;

