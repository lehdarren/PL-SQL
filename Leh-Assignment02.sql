--Developer: Darren Leh
--Purpose:   Asks users name and birth year, detects age, does calculations

DECLARE
    userName VARCHAR(20);
    birthYear NUMBER(4);
    currentYear CONSTANT NUMBER(4) := 2020;
    numberSum NUMBER(4) := 0;
    age NUMBER(4);
    currentNum NUMBER(4);
    
BEGIN
    --ASK USER FOR BIRTH YEAR AND NAME
    userName := '&Your_Name';
    birthYear := TO_NUMBER('&Birth_Year');
    
    age := currentYear - birthYear;
    
    IF age >= 21 THEN --if your age is greater than or equal to 21
        DBMS_OUTPUT.PUT_LINE('Name: ' || userName);
        DBMS_OUTPUT.PUT_LINE('Age: ' || age);
        DBMS_OUTPUT.PUT_LINE(userName || ' is ' || age || '. Party Time!');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Name: ' || userName);
        DBMS_OUTPUT.PUT_LINE('Age: ' || age);
        DBMS_OUTPUT.PUT_LINE(userName || ' is ' || age || '. Hershey Park it is then!');
    END IF;
    
    FOR i IN REVERSE 1..age LOOP
        currentNum := numberSum;
        IF ((i MOD 5) = 0) AND (i > 10) THEN
            DBMS_OUTPUT.PUT_LINE(i);
            numberSum := currentNum + i;
        ELSIF (i <= 10) THEN
            DBMS_OUTPUT.PUT_LINE(i);
            numberSum := currentNum + i;
        END IF;
        
        --If i > 10 THEN
        --  CONTINUE WHEN MOD(i, 5) <> 0;
        --  DBMS_OUTPUT.PUT_LINE(i);
        --  numberSum := currentNum + i;
        --ELSE
        --  DBMS_OUTPUT.PUT_LINE(i);
        --  numberSum := currentNum + i;
        --END IF;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE(numberSum);
END;