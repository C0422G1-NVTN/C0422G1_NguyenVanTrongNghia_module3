use QuanLySinhVien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.-- 
SELECT 
    *
FROM
    `subject` s
WHERE
    s.Credit = (SELECT 
            MAX(s.Credit)
        FROM
            `subject` s);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.-- 
SELECT 
    *
FROM
    `subject` s
        JOIN
    mark m ON s.SubId = m.SubId
WHERE
    m.Mark = (SELECT 
            MAX(m.Mark)
        FROM
            mark m);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần-- 
SELECT 
    st.StudentId,
    st.StudentName,
    st.Address,
    st.Phone,
    AVG(Mark) AS diem_trung_binh
FROM
    student st
        LEFT JOIN
    mark m ON st.StudentId = m.StudentId
GROUP BY st.StudentId
ORDER BY st.StudentId , st.StudentName DESC