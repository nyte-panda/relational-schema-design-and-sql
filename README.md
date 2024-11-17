# SQL Assignment

## Overview
This repository contains the SQL code required to complete the tasks outlined in the assignment. The tasks include creating database tables based on a given schema, inserting data into the tables, and writing SQL queries to generate specific reports.

---

## Assignment Questions and Solutions

### **Question 1: Create Tables**
The task involves writing SQL code to create tables according to the specified schema and following strict requirements. 

- **Requirements**:
  - Use given entity and attribute names without modification.
  - All attributes are of type `VARCHAR(50)` unless specified as `DATE`.
  - All attributes are mandatory (i.e., `NOT NULL`).
  - Tables must have an auto-generated primary key (`INTEGER` type) in the format `Tablename_PK`.
  - Foreign key attributes must have the same name as the referenced attribute.
  - No separate tables for 1-M or 1-1 relationships.

- **Solution**:
  The SQL code to create the tables is provided in the file:  
  [`create_tables.sql`](./create_tables.sql)

---

### **Question 2: Insert Data**
The task involves writing SQL code to insert exactly two rows into each table using one `INSERT` statement per table.

- **Solution**:
  The SQL code for inserting data into the tables is provided in the file:  
  [`insert_data.sql`](./insert_data.sql)

---

### **Question 3: Queries for Reports**
The task involves writing SQL queries to generate specific reports.

1. **Query 1**:  
   Retrieve `SportsComplex.CL` and `Event.EPDate` for each event that has the phrase `"Boxing"` in `Event.ED`. The result is sorted by `Event_PK` and `SportsComplex_PK`.

2. **Query 2**:  
   For each SportsComplex, display `SportsComplex.CL` and `ComplexType.Budget` if `ComplexType.NOfF` is greater than 2. The result is sorted by `SportsComplex_PK` and `ComplexType_PK`.

- **Solution**:
  The SQL code for the queries is provided in the file:  
  [`queries.sql`](./queries.sql)

---

## Files
- **`create_tables.sql`**: Contains the SQL code to create tables as per the schema.
- **`insert_data.sql`**: Contains the SQL code to insert data into the tables.
- **`queries.sql`**: Contains the SQL code for the specified queries.
- **`screenshots/`**: Folder containing screenshots of the assignment questions.

---

## Screenshots
To view the assignment questions, you can check the screenshots in the folder [screenshots/](./screenshots/).

---

## Usage Instructions

1. **Database Setup**:
   - Execute the SQL scripts in the following order:
     1. `create_tables.sql`
     2. `insert_data.sql`

2. **Run Queries**:
   - Execute the SQL queries in `queries.sql` to generate the required reports.

3. **SQL Execution**:
   - Use any SQL-compatible tool such as MySQL Workbench, pgAdmin, or SQLite.

---

## Author
- Thuthimal Madugalle
- Tsu Yuan Kuan

