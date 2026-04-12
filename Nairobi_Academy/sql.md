# Beginner’s Guide to SQL: DDL, DML, WHERE & CASE WHEN

## Table of Contents

* [Overview](#overview)
* [DDL vs DML](#ddl-vs-dml)
* [Core SQL Operations](#core-sql-operations)

  * [CREATE (DDL)](#create-ddl)
  * [INSERT](#insert)
  * [UPDATE](#update)
  * [DELETE](#delete)
* [Filtering with WHERE](#filtering-with-where)

  * [IN / NOT IN](#in--not-in)
  * [LIKE](#like)
  * [BETWEEN](#between)
* [CASE WHEN for Data Transformation](#case-when-for-data-transformation)
* [Conclusion](#conclusion)

---

## Overview

If you're starting out with SQL, understanding how to create, manipulate, and query data is essential.

In this guide, I walk through practical SQL examples covering:

* Creating tables (DDL)
* Managing data (DML)
* Filtering and transforming query results

All examples are beginner-friendly and work well in PostgreSQL (and most relational databases).

---

## DDL vs DML

### DDL (Data Definition Language)

DDL is used to define and manage the structure of database objects.

* Common commands: `CREATE`, `ALTER`, `DROP`
* Affects the database schema
* Changes are typically permanent

### DML (Data Manipulation Language)

DML is used to interact with and manipulate data stored in tables.

* Common commands: `INSERT`, `UPDATE`, `DELETE`, `SELECT`
* Works within existing table structures

---

## Core SQL Operations

### CREATE (DDL)

Used to create a new table.

```sql
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);
```

---

### INSERT

Adds new records into a table.

```sql
INSERT INTO users (id, name, email) 
VALUES (1, 'John', 'john@example.com');
```

---

### UPDATE

Modifies existing records.

```sql
UPDATE users 
SET email = 'newemail@example.com' 
WHERE id = 1;
```

> ⚠️ Always use a `WHERE` clause unless you intend to update all rows.

---

### DELETE

Removes records from a table.

```sql
DELETE FROM users 
WHERE id = 1;
```

> ⚠️ Omitting `WHERE` will delete all rows in the table.

---

## Filtering with WHERE

The `WHERE` clause is used to filter records based on conditions.

### IN / NOT IN

Check if a value exists within a list.

```sql
SELECT * FROM users WHERE id IN (1, 2, 3);
SELECT * FROM users WHERE id NOT IN (1, 2, 3);
```

---

### LIKE

Used for pattern matching in strings.

* `%` → matches zero or more characters
* `_` → matches a single character

```sql
SELECT * FROM users WHERE name LIKE 'J%';      -- starts with J
SELECT * FROM users WHERE name ILIKE '%jo%';   -- contains 'jo' (case-insensitive in PostgreSQL)
```

---

### BETWEEN

Filters values within a range (inclusive).

```sql
SELECT * FROM users WHERE id BETWEEN 1 AND 5;
```

---

## CASE WHEN for Data Transformation

`CASE WHEN` allows you to apply conditional logic directly in SQL queries, similar to if-else statements.

### Example: Categorizing Data

```sql
SELECT 
    name,
    CASE 
        WHEN id < 5 THEN 'Junior'
        WHEN id < 10 THEN 'Senior'
        ELSE 'Expert'
    END AS level
FROM users;
```

### Example: Student Performance Classification

```sql
SELECT *,
    CASE
        WHEN marks >= 80 THEN 'Distinction'
        WHEN marks >= 60 THEN 'Merit'
        WHEN marks >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS performance
FROM exam_results;
```

This helps transform raw numeric data into meaningful categories.

---

## Conclusion

Understanding SQL fundamentals like DDL, DML, filtering, and conditional logic is key to working effectively with data.

These building blocks will help you:

* Structure databases
* Manage records efficiently
* Extract meaningful insights

From here, you can explore more advanced topics like joins, aggregations, and indexing.

---

💡 *Tip: Practice these queries in PostgreSQL or any SQL environment to reinforce your learning.*
