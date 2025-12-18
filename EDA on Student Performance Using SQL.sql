create database OS;
use os;
show databases;
show tables;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    marks INT,
    age INT,
    city VARCHAR(30)
);

desc students;

INSERT INTO students (student_id, name, department, marks, age, city) VALUES
(1, 'Omkar', 'IT', 85, 21, 'Kolhapur'),
(2, 'Rahul', 'CS', 78, 22, 'Pune'),
(3, 'Sneha', 'IT', 92, 20, 'Mumbai'),
(4, 'Amit', 'ENTC', 65, 23, 'Nagpur'),
(5, 'Pooja', 'CS', 88, 21, 'Kolhapur'),
(6, 'Rohit', 'IT', 55, 22, 'Pune'),
(7, 'Neha', 'ENTC', 72, 21, 'Mumbai');

select * from students;

-- Q2. Show only name and marks of all students.

select name, marks from students;

-- Q3. Find all students who belong to the IT department.

select name,department from students where department='IT';

-- Q4. Find students whose marks are greater than 80.

select name,marks from students where marks >80;

-- Q5. Display students who are from Kolhapur city.\

select name,city from students where city='Kolhapur';

-- Q6. Find students whose age is greater than 21.

select name,age from students where age>21;

-- Q7. Find the average marks of all students.

select avg(marks) from students;

-- Q8. Find the maximum marks scored by students.

select max(marks) from students;

-- Q9. Count the total number of students.

select count(*) from students;

-- Q10. Find department-wise average marks.

select department,avg(marks) from students group by department;

-- Q11. Count number of students in each department.

select count(*) as student, department from students group by department;

-- Q12. Display students ordered by marks in descending order.

select name,marks from students order by marks desc;

-- Q13. Display students ordered by age in ascending order.

select name,age from students order by age;

-- Q14. Find students from IT department AND marks greater than 80.

select name,marks,department from students where department='IT' and marks>80;

-- Q15. Find students who are from Pune OR Mumbai.

select name,city from students where city='pune' or city='mumbai';

-- Q16. Find students whose marks are between 60 and 90.

select name,marks from students where marks between 60 and 90;

-- Q17. Find students whose name starts with letter 'S'.

select name from students where name like 'S%';

-- Q18. Find the youngest student.

select * from students order by age limit 1;

-- Q19. Find the oldest student in each department.

select name,age,department from students s1 where age= ( select max(age) from students s2 where s1.department=s2.department);

-- Q20. Find departments having more than 2 students.

select department from students group by department having count(*) >2;

