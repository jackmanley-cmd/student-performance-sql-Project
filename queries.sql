-- 1. Display all students
SELECT *
FROM Students;


-- 2. Display students who scored above 70
SELECT name, mark
FROM Students
WHERE mark > 70;


-- 3. Display students from highest to lowest mark
SELECT name, mark
FROM Students
ORDER BY mark DESC;


-- 4. Find the average mark
SELECT AVG(mark) AS average_mark
FROM Students;


-- 5. Find the highest mark
SELECT MAX(mark) AS highest_mark
FROM Students;


-- 6. Find the lowest mark
SELECT MIN(mark) AS lowest_mark
FROM Students;


-- 7. Count the number of students
SELECT COUNT(*) AS total_students
FROM Students;


-- 8. Find the average mark for each gender
SELECT gender, AVG(mark) AS average_mark
FROM Students
GROUP BY gender;


-- 9. Find the average mark for each class
SELECT
    Classes.class_name,
    AVG(Students.mark) AS average_mark
FROM Students
JOIN Classes
    ON Students.class_id = Classes.class_id
GROUP BY Classes.class_name;


-- 10. Display each student's name, class and mark
SELECT
    Students.name,
    Classes.class_name,
    Students.mark
FROM Students
JOIN Classes
    ON Students.class_id = Classes.class_id;


-- 11. Find students who scored 80 or higher
SELECT name, mark
FROM Students
WHERE mark >= 80
ORDER BY mark DESC;


-- 12. Find students with missing gender
SELECT name, mark
FROM Students
WHERE gender IS NULL;


-- 13. Find students with missing class information
SELECT name, mark
FROM Students
WHERE class_id IS NULL;
