set search_path to nairobi_academy;

--insert values into students table
insert INTO nairobi_academy.students(
    student_id,
    first_name,
    last_name,
    gender,
    date_of_birth,
    class,
    city
)
VALUES
(1, 'Amina', 'Wanjiku', 'F', '2008-03-12', 'Form 3', 'Nairobi'),
(2, 'Brian', 'Ochieng', 'M', '2007-07-25', 'Form 4', 'Mombasa'),
(3, 'Cynthia', 'Mutua', 'F', '2008-11-05', 'Form 3', 'Kisumu'),
(4, 'David', 'Kamau', 'M', '2007-02-18', 'Form 4', 'Nairobi'),
(5, 'Esther', 'Akinyi', 'F', '2009-06-30', 'Form 2', 'Nakuru'),
(6, 'Felix', 'Otieno', 'M', '2009-09-14', 'Form 2', 'Eldoret'),
(7, 'Grace', 'Mwangi', 'F', '2008-01-22', 'Form 3', 'Nairobi'),
(8, 'Hassan', 'Abdi', 'M', '2007-04-09', 'Form 4', 'Mombasa'),
(9, 'Ivy', 'Chebet', 'F', '2009-12-01', 'Form 2', 'Nakuru'),
(10, 'James', 'Kariuki', 'M', '2008-08-17', 'Form 3', 'Nairobi');

--insert values  into subjects table
INSERT into subjects(
    subject_id,
    subject_name,
    department,
    teacher_name,
    credit_hours
)
VALUES
(1, 'Mathematics', 'Sciences', 'Mr. Njoroge', 4),
(2, 'English', 'Languages', 'Ms. Adhiambo', 3),
(3, 'Biology', 'Sciences', 'Ms. Otieno', 4),
(4, 'History', 'Humanities', 'Mr. Waweru', 3),
(5, 'Kiswahili', 'Languages', 'Ms. Nduta', 3),
(6, 'Physics', 'Sciences', 'Mr. Kamande', 4),
(7, 'Geography', 'Humanities', 'Ms. Chebet', 3),
(8, 'Chemistry', 'Sciences', 'Ms. Muthoni', 4),
(9, 'Computer Studies', 'Sciences', 'Mr. Oduya', 3),
(10, 'Business Studies', 'Humanities', 'Ms. Wangari', 3);

--insert values into exam results table
INSERT INTO exam_results(
    student_id,
    subject_id,
    marks,
    exam_date,
    grade
)
VALUES
(1, 1, 78, '2024-03-15', 'B'),
(1, 2, 85, '2024-03-16', 'A'),
(2, 1, 92, '2024-03-15', 'A'),
(2, 3, 55, '2024-03-17', 'C'),
(3, 2, 49, '2024-03-16', 'D'),
(3, 4, 71, '2024-03-18', 'B'),
(4, 1, 88, '2024-03-15', 'A'),
(4, 6, 63, '2024-03-19', 'C'),
(5, 5, 39, '2024-03-20', 'F'),
(6, 9, 95, '2024-03-21', 'A');

select * from students;
select * from subjects;
select * from exam_results;


--update student id 5 city
update students
set city = 'Nairobi'
where student_id = 5;

--update result_id5
update exam_results
set marks = 59
where result_id = 5;

--delete result_id 9
delete from  exam_results 
where result_id = 9;

--students in form 4
select first_name,last_name from students
where class = 'Form 4';

--subjects in the sciences department
select subject_name from subjects
where department = 'Sciences';

--results with marks>=70
select * from exam_results
where marks>=70;

--find female students
select * from students
where gender = 'F';

--students in Nrb and in F3
select * from students
where class = 'Form 3'
and city = 'Nairobi';

--students in F2 or F4
select * from students
where class = 'Form 2'
or class = 'Form 4';

