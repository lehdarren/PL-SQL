SELECT BB_Product.productName, BB_Product.active, BB_Department.deptName
FROM   BB_Product INNER JOIN BB_Department USING(idDepartment); -- reduces ambiguity if written like this

SELECT p.productName, p.active, d.deptName
FROM   BB_Product p INNER JOIN BB_Department d USING(idDepartment);

--FUNCTION vs PROCEDURE
SELECT      deptName, COUNT(idProduct) as NumProducts
FROM        BB_Product INNER JOIN BB_Department USING(idDepartment)
GROUP BY    deptName;

--something new? :eyes:
UPDATE  BB_Product
SET     productName = 'Grinder Coffee'
WHERE   idProduct = 4;

Rollback;

select * from BB_Product;

--update is not new to you

/*
    variable declarations
    NOT NULL
    CONSTANT
    this code includes methods of output, concatination, and number formatting
*/
DECLARE
    stateAbbr   VARCHAR2(2) NOT NULL := 'PA';
    paTax       CONSTANT NUMBER(3,2) := .06;
BEGIN
    DBMS_OUTPUT.PUT_LINE(stateAbbr);
    DBMS_OUTPUT.PUT_LINE(paTax);
    
    DBMS_OUTPUT.PUT_LINE(stateAbbr || ' has a sales tax of: ' || TO_CHAR(paTax, '0.00'));
END;
