-- UNIVERSITY ACADEMIC MANAGEMENT SYSTEM
-- DML sample data based on the documentation's seven entities.
-- Database syntax: Oracle SQL
-- Run ddl_commands.sql first.

INSERT INTO Department (dept_id, dept_name, hod_id, established_year)
VALUES (1, 'Artificial Intelligence and Machine Learning', NULL, 2020);
INSERT INTO Department (dept_id, dept_name, hod_id, established_year)
VALUES (2, 'Computer Science and Engineering', NULL, 2010);

INSERT INTO Faculty (faculty_id, faculty_name, qualification, phone, email, department_id)
VALUES (1, 'Narasamba Vanguri', 'Ph.D.', '9876500001', 'narasamba@example.edu', 1);
INSERT INTO Faculty (faculty_id, faculty_name, qualification, phone, email, department_id)
VALUES (2, 'Ravi Kumar', 'M.Tech.', '9876500002', 'ravi.kumar@example.edu', 2);

INSERT INTO Student (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES (1, 'Harideep', 'Raju', DATE '2007-01-15', 'harideep@example.edu', 'Surampalem', 1);
INSERT INTO Student (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES (2, 'Sai', 'Charan', DATE '2006-09-21', 'saicharan@example.edu', 'Kakinada', 1);
INSERT INTO Student (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES (3, 'Srinivasa', 'Swamy', DATE '2006-12-02', 'srinivasa@example.edu', 'Rajahmundry', 2);
INSERT INTO Student (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES (4, 'Trilok', 'Pavan', DATE '2007-03-11', 'trilok@example.edu', 'Peddapuram', 1);
INSERT INTO Student (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES (5, 'Ananya', 'Devi', DATE '2006-07-19', 'ananya@example.edu', 'Samalkot', 2);
INSERT INTO Student (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES (6, 'Bhavya', 'Sri', DATE '2007-02-10', 'bhavya@example.edu', 'Kakinada', 1);
INSERT INTO Student (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES (7, 'Varshith', 'Surya', DATE '2006-11-04', 'varshith@example.edu', 'Pithapuram', 2);
INSERT INTO Student (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES (8, 'Meghana', 'Reddy', DATE '2007-05-22', 'meghana@example.edu', 'Samalkot', 1);
INSERT INTO Student (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES (9, 'Kiran', 'Teja', DATE '2006-08-14', 'kiran@example.edu', 'Surampalem', 2);
INSERT INTO Student (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES (10, 'Pavani', 'Latha', DATE '2007-04-06', 'pavani@example.edu', 'Kakinada', 1);

INSERT INTO Student_Phone (student_id, phone_number) VALUES (1, '9000000001');
INSERT INTO Student_Phone (student_id, phone_number) VALUES (2, '9000000002');
INSERT INTO Student_Phone (student_id, phone_number) VALUES (3, '9000000003');
INSERT INTO Student_Phone (student_id, phone_number) VALUES (4, '9000000004');
INSERT INTO Student_Phone (student_id, phone_number) VALUES (5, '9000000005');
INSERT INTO Student_Phone (student_id, phone_number) VALUES (6, '9000000006');
INSERT INTO Student_Phone (student_id, phone_number) VALUES (7, '9000000007');
INSERT INTO Student_Phone (student_id, phone_number) VALUES (8, '9000000008');
INSERT INTO Student_Phone (student_id, phone_number) VALUES (9, '9000000009');
INSERT INTO Student_Phone (student_id, phone_number) VALUES (10, '9000000010');

INSERT INTO Course (course_id, course_code, course_name, credits, semester, faculty_id, department_id)
VALUES (1, 'DBMS101', 'Database Management Systems', 4, 3, 1, 1);
INSERT INTO Course VALUES (2, 'PY101', 'Python Programming', 3, 2, 1, 1);
INSERT INTO Course VALUES (3, 'CN101', 'Computer Networks', 3, 4, 2, 2);
INSERT INTO Course VALUES (4, 'DS101', 'Data Structures', 4, 3, 2, 2);
INSERT INTO Course VALUES (5, 'AI101', 'Introduction to AI', 3, 4, 1, 1);
INSERT INTO Course VALUES (6, 'OS101', 'Operating Systems', 4, 4, 2, 2);
INSERT INTO Course VALUES (7, 'ML101', 'Machine Learning', 4, 5, 1, 1);
INSERT INTO Course VALUES (8, 'SE101', 'Software Engineering', 3, 5, 2, 2);
INSERT INTO Course VALUES (9, 'COA101', 'Computer Organization', 3, 3, 2, 2);
INSERT INTO Course VALUES (10, 'ST101', 'Statistics', 3, 2, 1, 1);

INSERT INTO Enrollment (student_id, course_id, semester, enrollment_date)
VALUES (1, 1, 'Semester 3', DATE '2026-07-01');
INSERT INTO Enrollment (student_id, course_id, semester, enrollment_date)
VALUES (2, 1, 'Semester 3', DATE '2026-07-01');
INSERT INTO Enrollment (student_id, course_id, semester, enrollment_date)
VALUES (3, 3, 'Semester 4', DATE '2026-07-02');
INSERT INTO Enrollment (student_id, course_id, semester, enrollment_date)
VALUES (4, 2, 'Semester 2', DATE '2026-07-02');
INSERT INTO Enrollment (student_id, course_id, semester, enrollment_date)
VALUES (5, 4, 'Semester 3', DATE '2026-07-03');
INSERT INTO Enrollment (student_id, course_id, semester, enrollment_date)
VALUES (6, 5, 'Semester 4', DATE '2026-07-03');
INSERT INTO Enrollment (student_id, course_id, semester, enrollment_date)
VALUES (7, 6, 'Semester 4', DATE '2026-07-04');
INSERT INTO Enrollment (student_id, course_id, semester, enrollment_date)
VALUES (8, 7, 'Semester 5', DATE '2026-07-04');
INSERT INTO Enrollment (student_id, course_id, semester, enrollment_date)
VALUES (9, 8, 'Semester 5', DATE '2026-07-05');
INSERT INTO Enrollment (student_id, course_id, semester, enrollment_date)
VALUES (10, 10, 'Semester 2', DATE '2026-07-05');

INSERT INTO Results (enrollment_id, marks_obtained, total_marks, grade, exam_date)
VALUES (1, 88, 100, 'A', DATE '2026-09-10');
INSERT INTO Results (enrollment_id, marks_obtained, total_marks, grade, exam_date)
VALUES (2, 76, 100, 'B', DATE '2026-09-10');
INSERT INTO Results (enrollment_id, marks_obtained, total_marks, grade, exam_date)
VALUES (3, 91, 100, 'A+', DATE '2026-09-11');
INSERT INTO Results (enrollment_id, marks_obtained, total_marks, grade, exam_date)
VALUES (4, 69, 100, 'C', DATE '2026-09-11');
INSERT INTO Results (enrollment_id, marks_obtained, total_marks, grade, exam_date)
VALUES (5, 82, 100, 'A', DATE '2026-09-12');
INSERT INTO Results (enrollment_id, marks_obtained, total_marks, grade, exam_date)
VALUES (6, 73, 100, 'B', DATE '2026-09-12');
INSERT INTO Results (enrollment_id, marks_obtained, total_marks, grade, exam_date)
VALUES (7, 64, 100, 'C', DATE '2026-09-13');
INSERT INTO Results (enrollment_id, marks_obtained, total_marks, grade, exam_date)
VALUES (8, 95, 100, 'A+', DATE '2026-09-13');
INSERT INTO Results (enrollment_id, marks_obtained, total_marks, grade, exam_date)
VALUES (9, 78, 100, 'B', DATE '2026-09-14');
INSERT INTO Results (enrollment_id, marks_obtained, total_marks, grade, exam_date)
VALUES (10, 86, 100, 'A', DATE '2026-09-14');

COMMIT;
