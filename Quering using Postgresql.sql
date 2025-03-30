#ASSIGNMENT 03 - MABLINE ANDREA
DATABASE SOFTWARE DESIGN

#query 01
SELECT DISTINCT name from student s   

INNER JOIN takes t ON s.id = t.id 

WHERE course_id LIKE 'CS%'; 
 
 
#query 02
SELECT s.id , s.name from student s 

INNER JOIN takes t on s.id = t.id 

WHERE year < '2009' AND semester != 'Spring'; 

#query 03
SELECT dept_name, MAX(salary) AS Maximum_Salary 

FROM instructor 

GROUP BY dept_name;


#query 04
SELECT MIN(Maximum_Salary) AS lowest_salary_across_departments 

FROM  

( SELECT MAX(salary) AS Maximum_Salary 

FROM instructor 

GROUP BY dept_name) AS department_maximum_salaries;


#query 05
SELECT * FROM course 

  

ALTER TABLE course 
DROP CONSTRAINT course_credits_check;  

  

ALTER TABLE course 
ADD CONSTRAINT Course_Credits_check check (credits >= 0); 

  

INSERT INTO course(course_id, title, dept_name, credits) 
VALUES('CS-001', 'Weekly Seminar', 'Comp. Sci.', '0'); 

SELECT * FROM course;


#query 06
ALTER TABLE section 

DROP CONSTRAINT section_semester_check; 


ALTER TABLE section 
ADD CONSTRAINT Section_Semester_check check (semester in ('Fall', 'Winter', 'Spring', 'Summer', 'Autumn')) 

INSERT INTO section (course_id, sec_id, semester, year) 

VALUES( 'CS-001', 1, 'Autumn', 2009) 

  

SELECT * FROM section;


#query 10
DELETE FROM takes 
WHERE course_id IN (
SELECT c.course_id 
FROM course c
WHERE title ILIKE '%database%');

SELECT * FROM takes;


#query 12
SELECT * FROM department;

SELECT dept_name FROM department WHERE LOWER(dept_name) LIKE '%sci%';


#query 07
SELECT * FROM course;
SELECT * FROM student
UPDATE course SET course_id = 'CS-001' WHERE course_id = '%CS';

SELECT * FROM course

#query 09
DELETE FROM course where course_id = 'CS-001';
DELETE FROM section WHERE course_id = 'CS-001';
SELECT * FROM section
SELECT * FROM course