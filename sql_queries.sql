-- UNIVERSITY ACADEMIC MANAGEMENT SYSTEM
-- SQL queries based on the documentation's 15 listed operations.
-- Database syntax: Oracle SQL

-- Q1. Display all departments
SELECT * FROM Department;

-- Q2. Display all students
SELECT * FROM Student;

-- Q3. Display all faculty
SELECT * FROM Faculty;

-- Q4. Display all courses
SELECT * FROM Course;

-- Q5. Students belonging to a specific department
SELECT student_id, first_name, last_name, email
FROM Student
WHERE dept_id = 1;

-- Q6. Courses with more than 3 credits
SELECT course_code, course_name, credits
FROM Course
WHERE credits > 3;

-- Q7. Students in alphabetical order
SELECT student_id, first_name, last_name
FROM Student
ORDER BY first_name, last_name;

-- Q8. Courses in descending order of credits
SELECT course_code, course_name, credits
FROM Course
ORDER BY credits DESC;

-- Q9. Student IDs, names, and email addresses
SELECT student_id, first_name, last_name, email
FROM Student
WHERE email IS NOT NULL;

-- Q10. Departments with their students
SELECT d.dept_name, s.student_id, s.first_name, s.last_name
FROM Department d
JOIN Student s ON s.dept_id = d.dept_id
ORDER BY d.dept_name, s.last_name;

-- Q11. Faculty with department names
SELECT f.faculty_id, f.faculty_name, f.qualification, d.dept_name
FROM Faculty f
JOIN Department d ON f.department_id = d.dept_id;

-- Q12. Courses with department names
SELECT c.course_code, c.course_name, d.dept_name
FROM Course c
JOIN Department d ON c.department_id = d.dept_id;

-- Q13. Courses with assigned faculty
SELECT c.course_code, c.course_name, f.faculty_name
FROM Course c
JOIN Faculty f ON c.faculty_id = f.faculty_id;

-- Q14. Enrollment details with student and course information
SELECT e.enrollment_id, s.first_name, s.last_name, c.course_name,
       e.semester, e.enrollment_date
FROM Enrollment e
JOIN Student s ON e.student_id = s.student_id
JOIN Course c ON e.course_id = c.course_id
ORDER BY e.enrollment_id;

-- Q15. Student results with course details
SELECT s.first_name, s.last_name, c.course_name, r.marks_obtained,
       r.total_marks, r.grade, r.exam_date
FROM Results r
JOIN Enrollment e ON r.enrollment_id = e.enrollment_id
JOIN Student s ON e.student_id = s.student_id
JOIN Course c ON e.course_id = c.course_id
ORDER BY s.last_name;

-- Additional analysis: department-wise student count
SELECT d.dept_name, COUNT(s.student_id) AS student_count
FROM Department d
LEFT JOIN Student s ON s.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY d.dept_name;

-- Additional analysis: grade-wise student count
SELECT grade, COUNT(*) AS student_count
FROM Results
GROUP BY grade
ORDER BY grade;

-- Additional analysis: students scoring above the average
SELECT s.student_id, s.first_name, s.last_name, r.marks_obtained
FROM Student s
JOIN Enrollment e ON e.student_id = s.student_id
JOIN Results r ON r.enrollment_id = e.enrollment_id
WHERE r.marks_obtained > (SELECT AVG(marks_obtained) FROM Results)
ORDER BY r.marks_obtained DESC;
