set search_path to nairobi_academy;

--USING BETWEEN, IN,NOT IN, LIKE, COUNT, CASE WHEN
--exam results between 50 & 80
select * from exam_results
where marks BETWEEN 50 AND 80;

--exam date is between 15th march and 18th mar 2024
select * from exam_results
where exam_date between '2024-03-15' and '2024-03-18';

--students in nrb,msa,ksm using in
select * from students
where city in('Kisumu','Nairobi','Mombasa');

--students not in F2/3 using not in
select * from students
where class not in ('Form 2','Form 3');

--students with first_names starting with a or e using like
select * from students
where first_name  LIKE 'A%' 
or  first_name LIKE 'E%';

--subejct containing studies
select *
from subjects
where subject_name LIKE '%Studies%';

--no of students in form 3
select count(*) as f3_students
from students
where class = 'Form 3';

--count of exam results >=70
select count(*) 
from exam_results
where marks>=70;

--USE CASE WHEN

--classify marks
select * ,
	case
		when marks>=80 then 'Distinction'
		when marks>=60 then 'Merit'
		when marks>=40 then 'Pass'
		when marks<40 then 'Fail'
	end as perfomance
from exam_results;

--classify as snr when in F3/F4 or junior if in F1/F2
select * ,
	case
		when class in ('Form 3','Form 4') then 'Senior'
		when class in ('Form 1','Form 2') then 'Junior'
	end as student_level
from students;