# 📚 Library Management System Database – SQL Server

## 🧠 Project Overview

The **Library Management System Database** is a SQL Server–based project designed to manage library operations efficiently.
It allows tracking of books, authors, categories, customers, users, and borrowing transactions.

This project was developed using **Microsoft SQL Server** and **T-SQL**, applying proper database normalization, constraints, automation, and backup strategies.

This project demonstrates strong skills in:

* Database Design
* SQL Development
* Data Integrity
* Automation using SQL Server Agent
* Backup and Maintenance Strategies
* Trigger-Based Automation

---

# 🗄️ Database Design

The database consists of **6 main tables**:

* **Authors** → Stores author information
* **Books** → Stores book details
* **Categories** → Book classification
* **Customers** → Library members
* **Users** → System users
* **Borrow** → Borrowing transactions

---

# 🔗 Database Relationships

The system uses **Primary Keys** and **Foreign Keys** to maintain data integrity.

Main relationships:

* One Author → Many Books
* One Category → Many Books
* One Customer → Many Borrow Records
* One Book → Many Borrow Records

These relationships ensure **data consistency** and prevent invalid records.

---

# 📊 Views (Reporting Layer)

The system includes **7 Views**:

* `VW_Available_Books`
  Displays all available books.

* `VW_Books_Details`
  Shows book details with author and category.

* `VW_Borrow_Details`
  Displays borrowing transactions.

* `VW_Current_Borrowed_Books`
  Shows currently borrowed books.

* `VW_Library_Dashboard`
  Provides a dashboard summary.

* `VW_Most_Borrowed_Books`
  Shows most borrowed books.

* `VW_Overdue_Books`
  Displays overdue books.

---

# ⚙️ Stored Procedures

Stored procedures automate core operations:

* `BorrowBook`
  Handles borrowing logic.

* `ReturnBook`
  Handles return operations.

These procedures:

* Insert borrow records
* Update return status
* Maintain borrowing workflow

---

# 🧮 User Defined Function

### `CalculateFine`

This function calculates late return penalties.

Logic:

* If return date exceeds due date
* Fine = Late days × 5

This improves overdue management automation.

---

# ⚡ Triggers

Triggers automate database behavior.

### Implemented Triggers:

* `trg_Prevent_Duplicate_Borrow`
  Prevents borrowing the same book more than once simultaneously.

* `trg_ReturnBook`
  Updates return status automatically.

* `trg_UpdateBookAvailability`
  Updates book availability after borrowing or returning.

Triggers ensure **automatic rule enforcement**.

---

# 💾 Backup Strategy

An automated backup system was implemented using **SQL Server Agent Jobs**.

## Backup Types

### 🔹 Full Backup

* Runs Weekly
* Folder: `Full_SmallLibrary`
* Retention: **4 Weeks**

### 🔹 Differential Backup

* Runs Daily
* Folder: `Diff_SmallLibrary`
* Retention: **2 Weeks**

### 🔹 Log Backup

* Runs Frequently
* Folder: `Log_SmallLibrary`
* Retention: **1 Week**

---

# 🧹 Cleanup Strategy

Automated cleanup tasks remove outdated backup files.

Retention Rules:

* Full backups older than **4 Weeks**
* Differential backups older than **2 Weeks**
* Log backups older than **1 Week**

This prevents disk space overflow and maintains storage efficiency.

---

# 📦 Sample Data

Sample data scripts populate the database.

Included files:

* `Authors_Data.sql`
* `Books_Data.sql`
* `Categories_Data.sql`
* `Customers_Data.sql`
* `Users_Data.sql`
* `Borrow_Data.sql`

Master script:

* `Insert_All_SampleData.sql`

Allows inserting all sample data in one step.

---

# 📁 Project Structure

Library-Management-System
│
├── Database
│   ├── Tables
│   ├── Views
│   ├── Procedures
│   ├── Functions
│   ├── Triggers
│   └── BackupJobs
│
├── SampleData
│
├── Backup
│
├── ERD
│   └── ERD_Diagram.png
│
└── README.md

---

# 🧰 Technologies Used

* Microsoft SQL Server
* T-SQL
* SQL Server Agent
* Database Normalization
* ERD Design
* Stored Procedures
* Views
* Functions
* Triggers
* Backup & Maintenance Plans

---

# ⭐ Key Features

✔ Relational Database Design
✔ Data Integrity using Constraints
✔ Stored Procedures Automation
✔ Trigger-Based Automation
✔ Reporting Views
✔ Backup Strategy
✔ Cleanup Automation
✔ Sample Data for Testing
✔ Professional Database Structure

---

# 🚀 How to Run the Project

1️⃣ Create Database:

```sql
CREATE DATABASE Small_Library;
```

2️⃣ Run scripts in this order:

Tables
Views
Functions
Procedures
Triggers
SampleData

3️⃣ Configure SQL Server Agent Jobs (optional).

---

# 📌 Future Improvements

* Add role-based security
* Build front-end interface
* Add advanced reporting dashboards
* Implement auditing system

---

# 👨‍💻 Author

**Youssef Shahat Sayed Salim**
SQL Server Database Developer

📌 Database Design | T-SQL | SQL Server | Backup & Automation

This project demonstrates advanced database development skills including database design, automation, reporting, triggers, and backup strategies using Microsoft SQL Server.
