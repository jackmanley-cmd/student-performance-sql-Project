# Student Performance SQL Project

A SQL project based on a student performance dataset that I used during my Data Technician course. The project looks at student marks and other information using SQL and a simple relational database structure.

## About

I started with a student dataset containing information such as student names, classes, marks and gender.

I used the dataset to practise SQL and then developed it into a small relational database. This allowed me to practise creating tables, connecting related data and writing queries to find useful information from the dataset.

## Dataset

The original dataset is stored in:

`student_dataset.csv`

It contains 35 student records with the following information:

- Student ID
- Student name
- Class
- Mark
- Gender

I have kept the original CSV file in the project so that the source data is available alongside the SQL version.

## Database Structure

I created two tables for the project:

### Students

The `Students` table contains the main student information:

- `student_id` - Unique ID for each student
- `name` - Student name
- `class_id` - Links the student to their class
- `mark` - Student's mark
- `gender` - Student's gender

### Classes

The `Classes` table contains the class information:

- `class_id` - Unique ID for each class
- `class_name` - Name of the class

The two tables are connected using a foreign key. This means the `class_id` in the Students table links to the matching `class_id` in the Classes table.

## Data Cleaning

The original dataset contains some missing and inconsistent information.

When creating the SQL version of the data, I:

- Used `NULL` for missing values
- Changed `Fifth` to `Five` so the class names were consistent
- Kept missing student names as `NULL`
- Kept missing gender values as `NULL`
- Kept missing class information as `NULL`

I kept the original CSV unchanged so the original dataset can still be viewed.

## SQL Concepts Used

This project helped me practise several SQL concepts, including:

- Creating tables
- Primary keys
- Foreign keys
- `INSERT` statements
- `SELECT` statements
- `WHERE` clauses
- `ORDER BY`
- `GROUP BY`
- `JOIN`
- `COUNT`
- `AVG`
- `MIN`
- `MAX`
- Working with `NULL` values

## Example Query

One of the queries joins the Students and Classes tables:

```sql
SELECT
    students.name,
    classes.class_name,
    students.mark
FROM students
JOIN classes
    ON students.class_id = classes.class_id;
```

This allows me to display the student's name, their class and their mark by combining information from both tables.

## Analysis

The queries in this project are used to look at different parts of the student data, including:

- Students who scored above 70
- Students who scored 80 or higher
- The highest mark
- The lowest mark
- The average mark
- The total number of students
- Average marks by gender
- Average marks by class
- Students with missing gender information
- Students with missing class information

## Project Structure

```text
student-performance-sql/
│
├── README.md
├── schema.sql
├── data.sql
├── queries.sql
└── student_dataset.csv
```

### `schema.sql`

Creates the `Students` and `Classes` tables and sets up the relationship between them.

### `data.sql`

Contains the SQL statements used to add the class and student data to the database.

### `queries.sql`

Contains the queries used to filter, sort and analyse the student data.

### `student_dataset.csv`

The original student performance dataset that the project is based on.

## How to Run

The SQL files can be run using a SQL database environment such as Supabase.

The files should be run in this order:

1. `schema.sql` - creates the database tables
2. `data.sql` - adds the data to the tables
3. `queries.sql` - runs the analysis queries

The CSV file is the original dataset and does not need to be run as SQL.

## What I Learned

This project helped me build my understanding of SQL and relational databases. I practised creating tables, using primary and foreign keys, inserting data and writing queries to analyse information.

I also gained a better understanding of how data can be split into related tables and then joined together when needed. Working with the original dataset also gave me experience handling missing and inconsistent data before using it for analysis.
