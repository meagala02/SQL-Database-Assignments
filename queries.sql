Create Database TechVille12940;
use TechVille12940;
create table Citizen (Citizen_ID VARCHAR(20)PRIMARY KEY ,C_Name vARCHAR(20),Contact_No int,C_Address varchar(30));

create table Municipal_Department(Department_ID VARCHAR(20)PRIMARY KEY NOT NULL, Department_Name VARCHAR(20),Contact_No int );

create table Emergency_Incident (Incident_ID VARCHAR(20)PRIMARY KEY NOT NULL,Type_Of_Emergency  VARCHAR(50),Response_Status VARCHAR(20),Repoted_Date date,Location Varchar(20),
E_Citizen_ID VARCHAR(20) ,Foreign key (E_Citizen_ID) references Citizen (Citizen_ID) );

Create table Service(Service_ID VARCHAR(20)PRIMARY KEY NOT NULL, Service_Name  VARCHAR(20), Description VARCHAR(50),S_Department_ID VARCHAR(20),
Foreign key (S_Department_ID )References  Municipal_Department(Department_ID));

Create table Utility_Account(Account_ID VARCHAR(10)PRIMARY KEY NOT NULL,Bill_Amount int, Payment_Status varchar(20),U_Citizen_ID VARCHAR(20) ,
Foreign key (U_Citizen_ID) references Citizen (Citizen_ID) );

Create table Complaint(Complaint_ID VARCHAR(20)PRIMARY KEY NOT NULL,Description VARCHAR(50), Filed_Date date, Status VARCHAR(20),
C_Citizen_ID VARCHAR(20) ,
Foreign key (C_Citizen_ID) references Citizen (Citizen_ID), C_Service_ID VARCHAR(20),Foreign key (C_Service_ID) references Service(Service_ID) );


DROP TABLE Emergency_Incident;
create table Emergency_Incident (Incident_ID VARCHAR(20)PRIMARY KEY NOT NULL,Type_Of_Emergency  VARCHAR(50),Response_Status VARCHAR(20),Repoted_Date date,Location Varchar(20),
E_Citizen_ID VARCHAR(20) ,Foreign key (E_Citizen_ID) references Citizen (Citizen_ID),E_Department_ID VARCHAR(20),
Foreign key (E_Department_ID) references Municipal_Department(Department_ID));

DROP TABLE Utility_Account; 

Create table Utility_Account(Account_ID VARCHAR(10)PRIMARY KEY NOT NULL,Bill_Amount int, Payment_Status varchar(20),U_Citizen_ID VARCHAR(20) ,
Foreign key (U_Citizen_ID) references Citizen (Citizen_ID), U_Service_ID VARCHAR(20),Foreign key (U_Service_ID) references Service(Service_ID) );

SELECT* FROM Citizen;
SELECT* FROM Municipal_Department;
SELECT* FROM Emergency_Incident;
SELECT* FROM Service;
SELECT* FROM Utility_Account;
SELECT* FROM Complaint;

insert into Citizen
 (Citizen_ID,C_Name,Contact_No ,C_Address)
 values ('C001','Piraburam Sathyan',0771112134,'Vavuniya'),
 ('C002','Piraburam pavi',0771112134,'Jaffna'),
 ('C003','Kunalan Thivya',0713258741,'Kandy'),
 ('C004','Kuvendrean Reanu',0724563869,'Batticalo'),
 ('C005','Shehan Kosala',0764532159,'Trinco'),
 ('C006','Pavithra sigam',0712654789,'Colombo'),
 ('C007','Tharmaraja Yathu',0745632753,'Galle'),
 ('C008','Rajasekar Kavishka',0723652456,'Hambathotta'),
 ('C009','Nerupkath Piraven',0774649966,'Anurathapura'),
 ('C010','Sathyam Thenuja',0754362842,'Kurunagala'),
 ('C011','Fahad mohamad',0779535153,'Colombo'),
 ('C012','kamala Raja',0756324681,'Kandy'),
 ('C013','Mani Rathnam',0772352456,'Jaffna'),
 ('C014','Pavithra Raja',0785623952,'Badulla'),
 ('C015','Kannan Abinay',0740806235,'Mathara'),
 ('C016','Pigul raj',0760000633,'Mannar'),
 ('C017','Taguraj pajib',0770008900,'Kaluthara'),
 ('C018','Dolly Pakal',0776830500,'Trincomale');


insert into Municipal_Department
(Department_ID , Department_Name,Contact_No)
values 
('DPT001', 'Sanitation', 0242220001),
('DPT002', 'Water Supply', 0242220002),
('DPT003', 'Public Works', 0242220003),
('DPT004', 'Health Services', 0242220004),
('DPT005', 'Parks and Rec', 0242220005),
('DPT006', 'Traffic Control', 0242220006),
('DPT007', 'Fire Department', 0242220007),
('DPT008', 'Police Services', 0242220008),
('DPT009', 'Building Permits', 0242220009),
('DPT010', 'Waste Management', 0242220010),
('DPT011', 'Environmental', 0242220011),
('DPT012', 'Housing Dept', 0242220012),
('DPT013', 'Revenue Office', 0242220013),
('DPT014', 'IT Services', 0242220014),
('DPT015', 'Legal Affairs', 0242220015);

INSERT INTO Emergency_Incident (Incident_ID, Type_Of_Emergency, Response_Status, Repoted_Date, Location, E_Citizen_ID, E_Department_ID) 
VALUES
('INC001', 'Fire', 'Resolved', '2025-05-01', 'Trinco', 'C005', 'DPT007'),
('INC002', 'Flood', 'Pending', '2025-05-02', 'Kandy', 'C012', 'DPT002'),
('INC003', 'Gas Leak', 'In Progress', '2025-05-03', 'Batticalo', 'C004', 'DPT001'),
('INC004', 'Medical Emergency', 'Resolved', '2025-05-04', 'Vavuniya', 'C001', 'DPT004'),
('INC005', 'Building Collapse', 'Resolved', '2025-05-05', 'Kurunagala', 'C010', 'DPT003'),
('INC006', 'Road Accident', 'Pending', '2025-05-06', 'Galle', 'C007', 'DPT006'),
('INC007', 'Fire', 'In Progress', '2025-05-07', 'Mannar', 'C016', 'DPT007'),
('INC008', 'Electric Short', 'Resolved', '2025-05-08', 'Trincomale', 'C018', 'DPT001'),
('INC009', 'Flood', 'In Progress', '2025-05-09', 'Kandy', 'C003', 'DPT002'),
('INC010', 'Gas Leak', 'Pending', '2025-05-10', 'Jaffna', 'C002', 'DPT001'),
('INC011', 'Earthquake Damage', 'Resolved', '2025-05-11', 'Badulla', 'C014', 'DPT003'),
('INC012', 'Fire', 'Pending', '2025-05-12', 'Hambathotta', 'C008', 'DPT007'),
('INC013', 'Medical Emergency', 'In Progress', '2025-05-13', 'Kaluthara', 'C017', 'DPT004'),
('INC014', 'Road Accident', 'Resolved', '2025-05-14', 'Mathara', 'C015', 'DPT006'),
('INC015', 'Flood', 'Resolved', '2025-05-15', 'Colombo', 'C006', 'DPT002'),
('INC016', 'Building Collapse', 'In Progress', '2025-05-16', 'Colombo', 'C011', 'DPT003'),
('INC017', 'Gas Leak', 'Resolved', '2025-05-17', 'Anurathapura', 'C009', 'DPT001'),
('INC018', 'Fire', 'Pending', '2025-05-18', 'Jaffna', 'C013', 'DPT007'),
('INC019', 'Medical Emergency', 'Resolved', '2025-05-19', 'Vavuniya', 'C001', 'DPT004'),
('INC020', 'Road Accident', 'In Progress', '2025-05-20', 'Jaffna', 'C002', 'DPT006');

INSERT INTO Service (Service_ID, Service_Name, Description, S_Department_ID) VALUES
('SRV001', 'Garbage Pickup', 'Daily waste collection', 'DPT001'),
('SRV002', 'Street Cleaning', 'Weekly street sweeping', 'DPT001'),
('SRV003', 'Water Connection', 'New water service setup', 'DPT002'),
('SRV004', 'Leak Repair', 'Fix pipe leaks', 'DPT002'),
('SRV005', 'Road Maintenance', 'Pothole and road repairs', 'DPT003'),
('SRV006', 'Bridge Inspection', 'Routine structural check', 'DPT003'),
('SRV007', 'Vaccination', 'Free immunization service', 'DPT004'),
('SRV008', 'Clinic Checkup', 'General health check', 'DPT004'),
('SRV009', 'Park Maintenance', 'Clean and maintain parks', 'DPT005'),
('SRV010', 'Playground Safety', 'Inspection and repairs', 'DPT005'),
('SRV011', 'Signal Repair', 'Fix broken signals', 'DPT006'),
('SRV012', 'Traffic Monitoring', 'Camera & patrol services', 'DPT006'),
('SRV013', 'Fire Response', 'Emergency firefighting', 'DPT007'),
('SRV014', 'Fire Safety Check', 'Inspections for hazards', 'DPT007'),
('SRV015', 'Patrolling', 'Neighborhood patrols', 'DPT008'),
('SRV016', 'Crime Reporting', 'Assist in reporting crime', 'DPT008'),
('SRV017', 'Permit Issuance', 'Issue building licenses', 'DPT009'),
('SRV018', 'Bulk Pickup', 'Large item collection', 'DPT010'),
('SRV019', 'Air Quality Test', 'Monitor pollution levels', 'DPT011'),
('SRV020', 'Rent Assistance', 'Support for low income', 'DPT012');


INSERT INTO Utility_Account (Account_ID, Bill_Amount, Payment_Status, U_Citizen_ID, U_Service_ID) VALUES
('ACC001', 1200, 'Paid',    'C004', 'SRV001'),
('ACC002', 950,  'Pending', 'C007', 'SRV002'),
('ACC003', 2000, 'Paid',    'C002', 'SRV003'),
('ACC004', 1500, 'Paid',    'C009', 'SRV004'),
('ACC005', 1300, 'Pending', 'C013', 'SRV005'),
('ACC006', 1750, 'Paid',    'C003', 'SRV006'),
('ACC007', 1100, 'Pending', 'C005', 'SRV007'),
('ACC008', 900,  'Paid',    'C011', 'SRV008'),
('ACC009', 1600, 'Pending', 'C008', 'SRV009'),
('ACC010', 800,  'Paid',    'C014', 'SRV010'),
('ACC011', 1450, 'Paid',    'C001', 'SRV011'),
('ACC012', 1900, 'Pending', 'C015', 'SRV012'),
('ACC013', 1050, 'Paid',    'C006', 'SRV013'),
('ACC014', 1700, 'Pending', 'C012', 'SRV014'),
('ACC015', 1350, 'Paid',    'C018', 'SRV015'),
('ACC016', 1150, 'Paid',    'C016', 'SRV016'),
('ACC017', 1250, 'Pending', 'C010', 'SRV017'),
('ACC018', 1550, 'Paid',    'C004', 'SRV018'), 
('ACC019', 1000, 'Pending', 'C002', 'SRV019'), 
('ACC020', 1850, 'Paid',    'C009', 'SRV020');

INSERT INTO Complaint (Complaint_ID, Description, Filed_Date, Status, C_Citizen_ID, C_Service_ID) VALUES
('CMP001', 'Garbage not collected on time','2025-06-01', 'Pending','C001', 'SRV001'),
('CMP002', 'Street not cleaned properly','2025-06-02', 'Pending','C003', 'SRV002'),
('CMP003', 'Water supply disrupted','2025-06-03', 'Resolved','C005', 'SRV003'),
('CMP004', 'Leak in underground pipe','2025-06-04', 'Pending','C006', 'SRV004'),
('CMP005', 'Road is damaged','2025-06-05', 'In Progress','C008', 'SRV006'),
('CMP006', 'Bridge seems unsafe','2025-06-06', 'Resolved','C011', 'SRV007'),
('CMP007', 'Need vaccination center','2025-06-07', 'Pending','C012', 'SRV008'),
('CMP008', 'Health clinic too far','2025-06-08', 'Resolved','C014', 'SRV009'),
('CMP009', 'Park maintenance overdue','2025-06-09', 'Pending','C015', 'SRV010'),
('CMP010', 'Playground swing broken','2025-06-10', 'Resolved','C017', 'SRV011'),
('CMP011', 'Traffic light not working','2025-06-11', 'Resolved','C001', 'SRV012'),
('CMP012', 'Fire hydrant malfunction','2025-06-12', 'Pending','C003', 'SRV013'),
('CMP013', 'Inspection needed for building','2025-06-13', 'Resolved','C005', 'SRV016'),
('CMP014', 'Bulk trash not picked up','2025-06-14', 'In Progress','C006', 'SRV017'),
('CMP015', 'Air quality seems poor recently','2025-06-15', 'Pending','C014', 'SRV018'),
('CMP016', 'Need assistance with rent','2025-06-16', 'Pending','C001', 'SRV020');

Select*From Complaint
Where C_Service_ID= 'SRV004';

Select*From Utility_Account
Where U_Citizen_ID= 'C011';

select C_Citizen_ID,count(*)AS complaintCount
from Complaint
Group By C_Citizen_ID
Having COUNT (*)>1;

SELECT
    AVG(Bill_Amount) AS AverageMonthlyBill,
	U_Service_ID
    FROM Utility_Account
	group by U_Service_ID;
