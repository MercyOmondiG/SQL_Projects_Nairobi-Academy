# Nairobi Academy Database Project

A practical SQL learning project demonstrating database design, data manipulation, and querying with real-world examples from an educational institution.

---

## 📁 Project Structure

```
SQL/
├── README.md                          # This file
├── sql.md                             # SQL beginner's guide & concepts
└── Nairobi_Academy/
    ├── nairobi_academy_ddl.sql        # Database schema & structure
    ├── nairobi_academy_dml.sql        # Sample data insertion
    └── operations.sql                 # Query examples & operations
```

---

## What to Do - Execution Order

### Step 1: Create Database Schema
**File:** `Nairobi_Academy/nairobi_academy_ddl.sql`

**What it does:**
- Creates the `nairobi_academy` schema
- Defines 3 tables:
  - `students` - Student information (ID, name, class, city, etc.)
  - `subjects` - Subject details (ID, name, department, teacher, credits)
  - `exam_results` - Exam scores linking students and subjects
- Demonstrates ALTER TABLE operations (add, rename, drop columns)
- Establishes foreign key relationships

**Action:** Run this script first to set up the database structure.

---

### Step 2: Populate Sample Data
**File:** `Nairobi_Academy/nairobi_academy_dml.sql`

**What it does:**
- Inserts 10 student records
- Inserts 10 subject records
- Inserts exam result records for multiple students and subjects

**Action:** Run this script after schema creation to fill the database with test data.

---

### Step 3: Run Query Operations
**File:** `Nairobi_Academy/operations.sql`

**What it does:**
Demonstrates various SQL query techniques:
- **BETWEEN** - Find exam results between score ranges (50-80)
- **IN / NOT IN** - Filter students by city or exclude specific classes
- **LIKE** - Search patterns (names starting with A or E, subjects containing "Studies")
- **COUNT** - Aggregate functions (count students in Form 3)
- **CASE WHEN** - Conditional logic (classify marks as Distinction/Merit/Pass/Fail)

**Action:** Run after data population to practice and see example queries in action.

---

## Learning Objectives

After completing this project, you will understand:

**DDL (Data Definition Language)**
- Creating schemas and tables
- Defining primary and foreign keys
- ALTER TABLE operations

**DML (Data Manipulation Language)**
- Inserting data with INSERT
- Understanding data relationships

**SQL Queries**
- Filtering with WHERE clauses
- Using BETWEEN, IN, NOT IN operators
- Pattern matching with LIKE
- Counting and aggregating data
- Conditional logic with CASE WHEN

---


### Prerequisites
- PostgreSQL installed on your system
- A SQL client (pgAdmin, DBeaver, or psql CLI)
- This project folder

### Setup Instructions

1. **Connect to PostgreSQL** using your preferred client
2. **Execute files in order:**
   ```
   1. nairobi_academy_ddl.sql      (Create schema & tables)
   2. nairobi_academy_dml.sql      (Insert sample data)
   3. operations.sql               (Run example queries)
   ```
3. **Review the results** from each query in `operations.sql`

### Alternative: Command Line (psql)
```bash
psql -U postgres -f nairobi_academy_ddl.sql
psql -U postgres -f nairobi_academy_dml.sql
psql -U postgres -f operations.sql
```

---

## Reference Guide

For a beginner-friendly introduction to SQL concepts, see [sql.md](sql.md) which covers:
- DDL vs DML fundamentals
- CREATE, INSERT, UPDATE, DELETE operations
- WHERE filtering techniques
- CASE WHEN transformations

---

## Practice Exercises

Try these exercises after running all files:

1. Find all students from Nairobi with exam marks >= 75
2. Count how many students passed (marks >= 40) in each subject
3. Update a student's class from Form 2 to Form 3
4. Find the teacher for Mathematics subject
5. Create a ranking query using CASE WHEN for performance tiers

---

## Notes

- The database uses a PostgreSQL schema for organization
- All relationships are enforced with foreign keys
- Sample data includes 10 students, 10 subjects, and multiple exam records
- Queries demonstrate best practices for beginners

