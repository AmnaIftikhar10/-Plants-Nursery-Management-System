USE project_db;

-- Insert Locations
INSERT INTO Location (locationID, address, city, state, country, zipcode) VALUES
(1, 'House 123, Street 12, DHA', 'Karachi', 'Sindh', 'Pakistan', 75500),
(2, 'Flat 34, Block 5, Gulshan-e-Iqbal', 'Karachi', 'Sindh', 'Pakistan', 75300),
(3, 'Plot 56, Sector 11, Bahria Town', 'Lahore', 'Punjab', 'Pakistan', 54000),
(4, 'House 78, Street 9, F-7', 'Islamabad', 'ICT', 'Pakistan', 44000),
(5, 'Flat 12, Block 3, Gulistan-e-Johar', 'Karachi', 'Sindh', 'Pakistan', 75200),
(6, 'Plot 23, Sector 5, DHA', 'Lahore', 'Punjab', 'Pakistan', 54100),
(7, 'House 45, Street 11, F-11', 'Islamabad', 'ICT', 'Pakistan', 44100),
(8, 'Flat 56, Block 9, Gulshan-e-Iqbal', 'Karachi', 'Sindh', 'Pakistan', 75400),
(9, 'Plot 12, Sector 3, Bahria Town', 'Lahore', 'Punjab', 'Pakistan', 54200),
(10, 'House 90, Street 15, DHA', 'Karachi', 'Sindh', 'Pakistan', 75600);

-- Insert Plants
INSERT INTO Plants (PlantID, species, price, locationID) VALUES
(1, 'Rose', 500.00, 1),
(2, 'Tulip', 300.00, 2),
(3, 'Daisy', 200.00, 3),
(4, 'Sunflower', 400.00, 4),
(5, 'Lily', 600.00, 5),
(6, 'Orchid', 800.00, 6),
(7, 'Cactus', 150.00, 7),
(8, 'Succulent', 250.00, 8),
(9, 'Bamboo', 350.00, 9),
(10, 'Fern', 450.00, 10);

-- Insert Owners
INSERT INTO Owner (OwnerID, OName, Address, Email, Phone, locationID, plantID) VALUES
(1, 'Muhammad Ali', '123 Main St, Karachi, Pakistan', 'muhammadali@gmail.com', '123456789', 1, 1),
(2, 'Fatima Khan', '456 Elm St, Lahore, Pakistan', 'fatimakhan@gmail.com', '0987654321', 2, 2),
(3, 'Asad Raza', '789 Oak St, Islamabad, Pakistan', 'asadraza@gmail.com', '5551234567', 3, 3),
(4, 'Hina Ahmed', '321 Maple St, Peshawar, Pakistan', 'hinaahmed@gmail.com', '8765432109', 4, 4),
(5, 'Hamza Ali', '901 Pine St, Quetta, Pakistan', 'hamzaali@gmail.com', '2345678901', 5, 5),
(6, 'Aisha Bibi', '234 Cedar St, Multan, Pakistan', 'aishabibi@gmail.com', '3456789012', 6, 6),
(7, 'Ahmed Raza', '567 Spruce St, Faisalabad, Pakistan', 'ahmedraza@gmail.com', '4567890123', 7, 7),
(8, 'Zainab Khan', '890 Fir St, Hyderabad, Pakistan', 'zainabkhan@gmail.com', '5678901234', 8, 8),
(9, 'Ali Hassan', '123 Birch St, Sialkot, Pakistan', 'alihassan@gmail.com', '6789012345', 9, 9),
(10, 'Fatima Raza', '456 Cypress St, Gujranwala, Pakistan', 'fatimaraza@gmail.com', '7890123456', 10, 10);

-- Insert Suppliers
INSERT INTO Supplier (SupplierID, SupplierName, Phone, Address, plantID) VALUES
(1, 'Rashid', '03001234567', 'House 123, Street 12, DHA, Karachi, Pakistan', 1),
(2, 'Ahad', '02134567890', 'Flat 34, Block 5, Gulshan-e-Iqbal, Karachi, Pakistan', 2),
(3, 'Faisal', '04211123456', 'Plot 56, Sector 11, Bahria Town, Lahore, Pakistan', 3),
(4, 'Saad', '05123456789', 'House 78, Street 9, F-7, Islamabad, Pakistan', 4),
(5, 'Raza', '03009876543', 'Flat 12, Block 3, Gulistan-e-Johar, Karachi, Pakistan', 5),
(6, 'Hadi', '04234567890', 'Plot 23, Sector 5, DHA, Lahore, Pakistan', 6),
(7, 'Muhammad Ali', '05123456789', 'House 45, Street 11, F-11, Islamabad, Pakistan', 7),
(8, 'Javed', '02111123456', 'Flat 56, Block 9, Gulshan-e-Iqbal, Karachi, Pakistan', 8),
(9, 'Asad Khan', '04222223456', 'Plot 12, Sector 3, Bahria Town, Lahore, Pakistan', 9),
(10, 'Ali', '03012345678', 'House 90, Street 15, DHA, Karachi, Pakistan', 10);

-- Insert Staff
INSERT INTO Staff (StaffID, StaffName, StaffRole, Email, Phone, Address) VALUES
(11, 'Ali Khan', 'Gardener', 'alikhan@gmail.com', '03001234567', 'House 123, Street 12, DHA, Karachi'),
(12, 'Fatima Javed', 'Nursery Manager', 'fatimajaved@gmail.com', '02134567890', 'Flat 34, Block 5, Gulshan-e-Iqbal, Karachi'),
(13, 'Muhammad Ali', 'Landscaper', 'uhammadali@gmail.com', '04211123456', 'Plot 56, Sector 11, Bahria Town, Lahore'),
(14, 'Sana Khan', 'Horticulturist', 'anaakhan@gmail.com', '05123456789', 'House 78, Street 9, F-7, Islamabad'),
(15, 'Asad Raza', 'Gardener', 'asadraza@gmail.com', '03009876543', 'Flat 12, Block 3, Gulistan-e-Johar, Karachi'),
(16, 'Hina Shah', 'Nursery Assistant', 'hinashah@gmail.com', '04234567890', 'Plot 23, Sector 5, DHA, Lahore'),
(17, 'Rashid Khan', 'Landscaper', 'rashidkhan@gmail.com', '05123456789', 'House 45, Street 11, F-11, Islamabad'),
(18, 'Ayesha Ali', 'Horticulturist', 'ayeshaali@gmail.com', '02111123456', 'Flat 56, Block 9, Gulshan-e-Iqbal, Karachi'),
(19, 'Faisal Ahmed', 'Gardener', 'faisalahmed@gmail.com', '04222223456', 'Plot 12, Sector 3, Bahria Town, Lahore'),
(20, 'Zainab Ali', 'Nursery Manager', 'zainabali@gmail.com', '03012345678', 'House 90, Street 15, DHA, Karachi');

-- Insert Fertilizer
INSERT INTO Fertilizer (FertilizerID, FertilizerName, FertilizerType, Quantity, plantID, supplierID, staffID) VALUES
(1, 'NitroPlus', 'Nitrogen-based', 500, 1, 1, 11),
(2, 'PhosPro', 'Phosphorus-based', 300, 2, 2, 12),
(3, 'PotashPower', 'Potassium-based', 200, 3, 3, 13),
(4, 'OrganicMix', 'Organic', 400, 4, 4, 14),
(5, 'FoliarFusion', 'Foliar spray', 600, 5, 5, 15),
(6, 'SoilSaver', 'Soil conditioner', 800, 6, 6, 16),
(7, 'GrowGenie', 'Growth promoter', 150, 7, 7, 17),
(8, 'BloomBooster', 'Flower booster', 250, 8, 8, 18),
(9, 'GreenGiant', 'Plant growth regulator', 350, 9, 9, 19),
(10, 'RootRush', 'Root stimulator', 450, 10, 10, 20);

-- Insert Equipments
INSERT INTO Equipments (EquipmentID, EquipmentName, EquipmentType, lastMaintenance, nextMaintenance, staffID) VALUES
(1, 'Lawn Mower', 'Gardening', '2022-01-01', '2022-06-01', 11),
(2, 'Tractor', 'Heavy Machinery', '2021-12-15', '2022-07-15', 12),
(3, 'Drill Machine', 'Power Tools', '2022-02-20', '2022-08-20', 13),
(4, 'Forklift', 'Material Handling', '2021-11-10', '2022-05-10', 14),
(5, 'Welder', 'Welding', '2022-03-15', '2022-09-15', 15),
(6, 'Pump', 'Fluid Handling', '2021-10-25', '2022-04-25', 16),
(7, 'Compressor', 'Air Compression', '2022-04-01', '2022-10-01', 17),
(8, 'Saw Machine', 'Cutting Tools', '2021-09-15', '2022-03-15', 18),
(9, 'Ladder', 'Access', '2022-05-10', '2022-11-10', 19),
(10, 'Jackhammer', 'Demolition', '2021-08-20', '2022-02-20', 20);

-- Insert Seasons
INSERT INTO Seasons (seasonName, startDate, endDate, plantID) VALUES
('Spring', '2022-03-20', '2022-06-20', 1),
('Summer', '2022-06-21', '2022-09-22', 2),
('Autumn', '2022-09-23', '2022-12-21', 3),
('Winter', '2022-12-22', '2023-03-19', 4),
('Rainy', '2023-01-26', '2023-03-19', 5),
('Cloudy', '2023-04-22', '2023-06-21', 6),
('Stormy', NULL, NULL, 7),
('Windy', NULL, NULL, 8),
('Snowy', NULL, NULL, 9),
('Partly', NULL, NULL, 10);

-- Insert Customers
INSERT INTO Customer (CustomerID, CustomerName, Address, Email, Phone) VALUES
(1, 'Aisha Khan', 'House 123, Street 12, DHA, Lahore', 'aishakhan123@gmail.com', '03001234567'),
(2, 'Hamza Ahmed', 'Flat 34, Block 5, Gulshan-e-Iqbal, Karachi', 'hamzaahmed90@gmail.com', '02134567890'),
(3, 'Sadia Ali', 'Plot 56, Sector 11, Bahria Town, Islamabad', 'sadiaali786@gmail.com', '05123456789'),
(4, 'Hussain', 'House 78, Street 9, F-7, Islamabad', 'hussain123@gmail.com', '03009876543'),
(5, 'Rabia Shah', 'Flat 12, Block 3, Gulistan-e-Johar, Karachi', 'rabiashah90@gmail.com', '04234567890'),
(6, 'Umar Farooq', 'Plot 23, Sector 5, DHA, Lahore', 'umarfarooq786@gmail.com', '05123456789'),
(7, 'Ayesha Saeed', 'House 45, Street 11, F-11, Islamabad', 'ayeshasaeed123@gmail.com', '02111123456'),
(8, 'Ali Raza', 'Flat 56, Block 9, Gulshan-e-Iqbal, Karachi', 'aliraza90@gmail.com', '04222223456'),
(9, 'Sana Iqbal', 'Plot 12, Sector 3, Bahria Town, Lahore', 'sanaiqbal786@gmail.com', '05123456789'),
(10, 'Hassan Khan', 'House 90, Street 15, DHA, Karachi', 'hassankhan123@gmail.com', '03012345678');

-- Insert Payments
INSERT INTO Payment (paymentID, amount, paymentDate, paymentMethod, customerID, plantID) VALUES
(1, 5000.00, '2022-01-05', 'Cash', 1, 1),
(2, 12000.00, '2022-02-10', 'Credit Card', 2, 2),
(3, 8000.00, '2022-03-15', 'Bank Transfer', 3, 3),
(4, 3000.00, '2022-04-20', 'Debit Card', 4, 4),
(5, 9000.00, '2022-05-25', 'Online Payment', 5, 5),
(6, 15000.00, '2022-06-30', 'Cheque', 6, 6),
(7, 4000.00, '2022-07-10', 'Mobile Payment', 7, 7),
(8, 10000.00, '2022-08-15', 'Cash', 8, 8),
(9, 7000.00, '2022-09-20', 'Credit Card', 9, 9),
(10, 20000.00, '2022-10-25', 'Bank Transfer', 10, 10);
