CREATE DATABASE Excellence_School;
USE Excellence_School;
CREATE TABLE Teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    email VARCHAR(100) UNIQUE,
    office_number INT
);
CREATE TABLE Students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    enrollment_date DATE,
    email VARCHAR(100) UNIQUE,
    academic_level INT CHECK (academic_level BETWEEN 1 AND 6),
    track ENUM('علمي', 'انساني'),
    gpa DECIMAL(5,2) CHECK (gpa BETWEEN 0 AND 100)
);
CREATE TABLE Subjects (
    id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100) NOT NULL
);
INSERT INTO Teachers (teacher_name, birth_date, gender, email, office_number) VALUES
('Ahmed', '1980-01-01', 'M', 'ahmed@school.com', 101),
('Sara', '1985-05-12', 'F', 'sara@school.com', 102),
('Khalid', '1978-03-20', 'M', 'khalid@school.com', 103),
('Nora', '1990-07-15', 'F', 'nora@school.com', 104),
('Fahad', '1982-11-30', 'M', 'fahad@school.com', 105),
('Mona', '1988-02-10', 'F', 'mona@school.com', 106),
('Sami', '1975-12-25', 'M', 'sami@school.com', 107),
('Laila', '1992-04-05', 'F', 'laila@school.com', 108),
('Omar', '1984-09-18', 'M', 'omar@school.com', 109),
('Huda', '1987-06-22', 'F', 'huda@school.com', 110);
INSERT INTO Subjects (subject_name) VALUES 
('الرياضيات'), ('الفيزياء'), ('الكيمياء'), ('اللغة العربية'), ('الحاسب الآلي'), ('اللغة الإنجليزية');
USE Excellence_School;

INSERT INTO Students (student_name, birth_date, gender, enrollment_date, email, academic_level, track, gpa) VALUES
('أحمد علي', '2008-01-15', 'M', '2023-09-01', 'ahmed.ali@mail.com', 1, 'علمي', 95.50),
('سارة محمود', '2007-05-22', 'F', '2022-09-01', 'sara.m@mail.com', 3, 'إنساني', 88.75),
('خالد حسن', '2008-03-10', 'M', '2023-09-01', 'khalid.h@mail.com', 2, 'علمي', 92.00),
('نورة فهد', '2009-11-05', 'F', '2024-09-01', 'nora.f@mail.com', 1, 'إنساني', 91.20),
('محمد سعد', '2007-08-30', 'M', '2022-09-01', 'moe.saad@mail.com', 4, 'علمي', 85.40),
('ليان عمر', '2008-12-12', 'F', '2023-09-01', 'layan.o@mail.com', 2, 'إنساني', 97.00),
('بدر جاسم', '2007-04-18', 'M', '2022-09-01', 'bader.j@mail.com', 5, 'علمي', 89.90),
('هيا عبد الله', '2009-02-25', 'F', '2024-09-01', 'haya.a@mail.com', 1, 'إنساني', 93.45),
('سلطان كمال', '2008-06-07', 'M', '2023-09-01', 'sultan.k@mail.com', 3, 'علمي', 82.15),
('ريم صالح', '2007-09-14', 'F', '2022-09-01', 'reem.s@mail.com', 6, 'إنساني', 99.00),
('فهد إبراهيم', '2008-10-01', 'M', '2023-09-01', 'fahad.i@mail.com', 2, 'علمي', 78.50),
('منى وليد', '2009-01-11', 'F', '2024-09-01', 'mona.w@mail.com', 1, 'إنساني', 86.30),
('ياسر جمال', '2007-03-29', 'M', '2022-09-01', 'yasser.j@mail.com', 4, 'علمي', 90.00),
('أمل ناصر', '2008-07-19', 'F', '2023-09-01', 'amal.n@mail.com', 3, 'إنساني', 94.25),
('راكان منصور', '2009-05-04', 'M', '2024-09-01', 'rakan.m@mail.com', 1, 'علمي', 88.10),
('شذى يوسف', '2007-12-28', 'F', '2022-09-01', 'shaza.y@mail.com', 5, 'إنساني', 92.80),
('عادل كريم', '2008-02-14', 'M', '2023-09-01', 'adel.k@mail.com', 2, 'علمي', 84.60),
('لولوة فايز', '2009-08-08', 'F', '2024-09-01', 'lulu.f@mail.com', 1, 'إنساني', 96.70),
('تركي حمد', '2007-10-20', 'M', '2022-09-01', 'turki.h@mail.com', 4, 'علمي', 81.20),
('جنى مروان', '2008-04-03', 'F', '2023-09-01', 'jana.m@mail.com', 3, 'إنساني', 89.55),
('نايف بندر', '2009-06-21', 'M', '2024-09-01', 'naif.b@mail.com', 1, 'علمي', 77.90),
('دلال حازم', '2007-11-15', 'F', '2022-09-01', 'dalal.h@mail.com', 6, 'إنساني', 98.40),
('ماجد غانم', '2008-09-27', 'M', '2023-09-01', 'majed.g@mail.com', 2, 'علمي', 83.15),
('روان باسم', '2009-03-09', 'F', '2024-09-01', 'rawan.b@mail.com', 1, 'إنساني', 90.60),
('طلال عيسى', '2007-01-05', 'M', '2022-09-01', 'talal.e@mail.com', 5, 'علمي', 87.25),
('العنود راشد', '2008-08-16', 'F', '2023-09-01', 'alanoud.r@mail.com', 3, 'إنساني', 93.90),
('سلمان طارق', '2009-12-30', 'M', '2024-09-01', 'salman.t@mail.com', 1, 'علمي', 80.00),
('غادة مصلح', '2007-06-13', 'F', '2022-09-01', 'ghada.m@mail.com', 4, 'إنساني', 95.10),
('فيصل فهد', '2008-05-15', 'M', '2023-09-01', 'faisal.f@mail.com', 2, 'علمي', 92.50),
('نوف علي', '2009-07-20', 'F', '2024-09-01', 'nouf.a@mail.com', 1, 'إنساني', 89.00);
SELECT * FROM Students;
SELECT * FROM Teachers;
SELECT * FROM Subjects;
SELECT * FROM Students 
ORDER BY student_name ASC;UPDATE Students 
SET email = 'faisal_new@mail.com' 
WHERE student_name = 'فيصل فهد';

UPDATE Teachers 
SET office_number = 515 
WHERE teacher_name = 'Ahmed';
ALTER TABLE Subjects RENAME TO School_Subjects;