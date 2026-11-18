CREATE TABLE STUDENTS (
    name VARCHAR2(50),
    marks NUMBER
);

INSERT INTO STUDENTS VALUES ('Ahmed', 95);
INSERT INTO STUDENTS VALUES ('Ali', 85);
INSERT INTO STUDENTS VALUES ('Mona', 75);
INSERT INTO STUDENTS VALUES ('Sara', 60);
INSERT INTO STUDENTS VALUES ('Omar', 90);

SELECT name, marks,
       CASE
           WHEN marks >= 90 THEN 'A'
           WHEN marks BETWEEN 80 AND 89 THEN 'B'
           WHEN marks BETWEEN 70 AND 79 THEN 'C'
           ELSE 'F'
       END AS grade
FROM STUDENTS;