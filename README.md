# SQL-Database-Assignments
Collection of SQL queries and database designs developed during my Software Engineering studies.


## 🏙️ Project 1: TechVille Smart City Database
A comprehensive relational database system designed to manage municipal services, citizen records, and emergency incidents for a smart city.

### 🛠️ Key Features:
- **Citizen Management:** Tracking citizen details and contact information.
- **Municipal Operations:** Managing different departments (Health, Fire, Police, etc.) and the services they provide.
- **Emergency Tracking:** A system to log emergency incidents, their location, and response status.
- **Utility & Billing:** Managing utility accounts, bill amounts, and payment statuses.
- **Complaint System:** Allowing citizens to file complaints regarding specific services.

### 📊 Database Schema (ER Structure)
The database consists of the following tables:
1. `Citizen` - Master data of city residents.
2. `Municipal_Department` - Details of various city departments.
3. `Emergency_Incident` - Logs of emergencies linked to citizens and departments.
4. `Service` - List of services offered by each department.
5. `Utility_Account` - Financial records for city services.
6. `Complaint` - Tracks citizen issues and their resolution status.

### 🔍 Advanced Queries Included:
This project demonstrates proficiency in:
- **Data Definition (DDL):** Creating and modifying complex table structures with Primary and Foreign Keys.
- **Data Manipulation (DML):** Bulk insertion of structured data.
- **Aggregations & Grouping:** - Using `GROUP BY` and `HAVING` to find citizens with multiple complaints.
    - Using `AVG()` to calculate average utility bills per service.
- **Data Filtering:** Specific `WHERE` clause queries to retrieve targeted information.

### 🚀 How to use:
1. Copy the code from `TechVille.sql`.
2. Run it in any MySQL environment (Workbench, XAMPP, etc.).
