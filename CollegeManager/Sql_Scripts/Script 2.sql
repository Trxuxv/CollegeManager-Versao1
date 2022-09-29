
INSERT INTO Teacher (Name, Birthday, Salary)
VALUES ('Debiie Ferreira', '1900-01-01 00:00:00.000' , 1000);

INSERT INTO Teacher (Name, Birthday, Salary)
VALUES ('Danniela Moure', '2000-04-01 00:00:00.000' , 3000);

INSERT INTO Teacher (Name, Birthday, Salary)
VALUES ('Steeve Ragnar', '2001-06-01 00:00:00.000' , 1500);

INSERT INTO Teacher (Name, Birthday, Salary)
VALUES ('Daniel Johns', '2001-06-01 00:00:00.000' , 2500);

INSERT INTO Course (Name, Duration, Category, TeacherId)
VALUES ('Systems', 2, 'Technoly', 3);

INSERT INTO Course (Name, Duration, Category, TeacherId)
VALUES ('Medicine', 2, 'Health', 2);

INSERT INTO student (Name, RgNumber, Birthday, CourseId)
VALUES ('Robert Vahn', 88884561, '1900-01-01 00:00:00.000' , 1);

INSERT INTO student (Name, RgNumber, Birthday, CourseId)
VALUES ('Allexia Voucher', 88884561, '1900-01-01 00:00:00.000' , 1);

INSERT INTO student (Name, RgNumber, Birthday, CourseId)
VALUES ('Helena Door', 88554561, '2003-01-01 00:00:00.000' , 2);

INSERT INTO student (Name, RgNumber, Birthday, CourseId)
VALUES ('Hamn Fabiol', 88554561, '2003-01-01 00:00:00.000' , 2);

INSERT INTO student (Name, RgNumber, Birthday, CourseId)
VALUES ('Cara Hannover', 88554561, '2003-01-01 00:00:00.000' , 2);

INSERT INTO Subject (Name, Approved, CourseId)
VALUES ('HTML/CSS', true, 1);

INSERT INTO Subject (Name, Approved, CourseId)
VALUES ('Javascript', true, 1);

INSERT INTO Grade (GradeDescription, StudentId, SubjectId, CourseId)
VALUES (100, 2, 1, 1);