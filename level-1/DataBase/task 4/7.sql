CREATE TABLE customers (
    full_name VARCHAR2(100)
);

INSERT INTO customers VALUES ('   John Doe   ');
INSERT INTO customers VALUES ('Jane Smith   ');
INSERT INTO customers VALUES ('   Alice Johnson');

SELECT TRIM(full_name) FROM customers;

SELECT LTRIM(full_name) FROM customers;

SELECT RTRIM(full_name) FROM customers;

SELECT TRIM(BOTH '$' FROM '$$$Hello$$$') FROM DUAL;

SELECT REPLACE('promotion', 'o', '0') FROM DUAL;

SELECT REPLACE('This is a basic course', 'basic', 'advanced') FROM DUAL;

CREATE TABLE departments (
    dept_name VARCHAR2(50)
);

INSERT INTO departments VALUES ('HR');
INSERT INTO departments VALUES ('IT');
INSERT INTO departments VALUES ('Sales');

SELECT LPAD(dept_name, 15, '*') FROM departments;

SELECT RPAD(dept_name, 15, '-') FROM departments;

SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY') FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'Day, Month YYYY') FROM DUAL;

SELECT TO_CHAR(1234567.89, '99,999,999.99') FROM DUAL;

SELECT TO_CHAR(salary, '$99,999.99') FROM employees;

SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') FROM DUAL;

CREATE TABLE students (
    name VARCHAR2(50),
    score NUMBER
);

INSERT INTO students VALUES ('Ahmed', 95);
INSERT INTO students VALUES ('Ali', 85);
INSERT INTO students VALUES ('Mona', 75);
INSERT INTO students VALUES ('Sara', 55);
INSERT INTO students VALUES ('Omar', 65);

SELECT name, score,
       CASE
           WHEN score >= 90 THEN 'A'
           WHEN score >= 80 THEN 'B'
           WHEN score >= 70 THEN 'C'
           ELSE 'F'
       END AS grade
FROM students;

SELECT name, score,
       CASE
           WHEN score >= 60 THEN 'Pass'
           ELSE 'Fail'
       END AS result
FROM students;

SELECT name, score,
       CASE
           WHEN score >= 90 THEN 'Excellent'
           WHEN score >= 80 THEN 'Good'
           WHEN score >= 70 THEN 'Average'
           ELSE 'Needs Improvement'
       END AS message
FROM students;

SELECT CASE TO_CHAR(SYSDATE, 'Day')
           WHEN 'Monday'    THEN 'Today is Monday'
           WHEN 'Tuesday'   THEN 'Today is Tuesday'
           WHEN 'Wednesday' THEN 'Today is Wednesday'
           WHEN 'Thursday'  THEN 'Today is Thursday'
           WHEN 'Friday'    THEN 'Today is Friday'
           WHEN 'Saturday'  THEN 'Today is Saturday'
           ELSE 'Today is Sunday'
       END AS day_message
FROM DUAL;

SELECT score,
       DECODE(score,
              100, 'A',
              90, 'B',
              80, 'C',
              'F') AS grade
FROM students;

CREATE TABLE status_log (
    status_code CHAR(1)
);

INSERT INTO status_log VALUES ('N');
INSERT INTO status_log VALUES ('I');
INSERT INTO status_log VALUES ('C');

SELECT status_code,
       DECODE(status_code,
              'N', 'New',
              'I', 'In Progress',
              'C', 'Completed') AS status_desc
FROM status_log;

SELECT DECODE(quantity, 0, 'Out of Stock', 'Available') AS stock_status
FROM (SELECT 0 AS quantity FROM DUAL);

SELECT department_name,
       DECODE(department_name,
              'HR', 500,
              'IT', 1000,
              'Sales', 1500,
              300) AS bonus
FROM (SELECT 'IT' AS department_name FROM DUAL);