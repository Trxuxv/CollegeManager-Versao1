CREATE TABLE Teacher (
    TeacherId INT IDENTITY NOT NULL PRIMARY KEY,
    Name NVARCHAR(100)  NULL,
    Birthday DATE  NULL,
    Salary FLOAT  NULL
);

CREATE TABLE Course (
    CourseId INT IDENTITY NOT NULL PRIMARY KEY,
    Name NVARCHAR(100)  NOT NULL,
    Duration INT  NOT NULL,
    Category NVARCHAR(100)  NOT NULL,
    TeacherId INT NOT NULL FOREIGN KEY REFERENCES Teacher(TeacherId)
);

CREATE TABLE Student (
    StudentId INT IDENTITY NOT NULL PRIMARY KEY,
    Name NVARCHAR(100)  NOT NULL,
    RgNumber INT  NOT NULL,
    Birthday DATE  NOT NULL,
    CourseId INT NOT NULL FOREIGN KEY REFERENCES Course(CourseId)
);

CREATE TABLE Subject (
    SubjectId INT IDENTITY NOT NULL PRIMARY KEY,
    Name NVARCHAR(100)  NOT NULL,
    Approved bit  NOT NULL,
    CourseId INT NOT NULL FOREIGN KEY REFERENCES Course(CourseId),
);

CREATE TABLE Grade (
    GradeId INT IDENTITY NOT NULL PRIMARY KEY,
    GradeDescription INT  NOT NULL,
    StudentId INT  NULL FOREIGN KEY REFERENCES Student(StudentId),
    SubjectId INT  NULL FOREIGN KEY REFERENCES Subject(SubjectId),
    CourseId INT NOT NULL FOREIGN KEY REFERENCES Course(CourseId),
);

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