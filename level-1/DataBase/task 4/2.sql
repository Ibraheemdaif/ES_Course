SELECT REPLACE('database', 'a', '@') FROM DUAL;

SELECT REPLACE('This is an old system', 'old', 'new') FROM DUAL;

CREATE TABLE PRODUCT (
    product_name VARCHAR2(50)
);

INSERT INTO PRODUCT VALUES ('Laptop');
INSERT INTO PRODUCT VALUES ('Phone');
INSERT INTO PRODUCT VALUES ('Tablet');

SELECT LPAD(product_name, 15, '*') FROM PRODUCT;

SELECT RPAD(product_name, 15, '#') FROM PRODUCT;