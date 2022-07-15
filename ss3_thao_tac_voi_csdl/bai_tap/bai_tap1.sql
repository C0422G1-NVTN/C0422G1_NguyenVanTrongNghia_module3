USE QuanLySinhVien;

SELECT 
    *
FROM
    student
WHERE
    StudentName LIKE 'h%';

SELECT 
    *
FROM
    class
WHERE
    MONTH(StartDate) = 12;

SELECT 
    *
FROM
    `subject`
WHERE
    Credit BETWEEN 3 AND 5;

SET sql_safe_updates = 0;
UPDATE student 
SET 
    ClassID = 2
WHERE
    StudentName = 'Hung';
SET sql_safe_updates = 1;

SELECT 
    s.StudentName, sub.SubName, m.Mark
FROM
    Student S
        JOIN
    Mark M ON S.StudentId = M.StudentId
        JOIN
    Subject Sub ON M.SubId = Sub.SubId
ORDER BY Mark DESC , StudentName ASC;