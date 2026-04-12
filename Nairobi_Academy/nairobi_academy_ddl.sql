CREATE SCHEMA IF NOT EXISTS nairobi_academy;

set search_path to nairobi_academy;

--create students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) not NULL,
    last_name VARCHAR(50) not NULL,
    gender CHAR(1),
    date_of_birth DATE,
    class VARCHAR(10),
    city VARCHAR(50)
);

-- create subjects table
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL UNIQUE,
    department VARCHAR(50),
    teacher_name VARCHAR(100),
    credits INT
);

--create exam_results table
CREATE TABLE exam_results (
    result_id SERIAL PRIMARY KEY,
    student_id INT not NULL,
    subject_id INT not NULL,
    marks INT not NULL,
    exam_date DATE,
    grade VARCHAR(2),
    
    -- Foreign key relationships
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

--add new column in students table
alter table students
add column phone VARCHAR(20);

--rename column in subjects table
alter table subjects
rename column credits to credit_hours;

--remove phone no column
alter table students
drop column phone;

select * from students;
select * from subjects;