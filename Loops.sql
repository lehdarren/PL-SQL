/*
LOOPING STRUCTURES
---------------------------
BASIC LOOP
WHILE OOP
FOR LOOP
CONTINUE STATEMENT
---------------------------
*/

DECLARE
    counter NUMBER(5) := 1;
BEGIN
    --BASIC LOOP
    LOOP
        DBMS_OUTPUT.PUT_LINE('Basic Counter: ' || counter);
        EXIT WHEN counter >= 5;
        counter := counter + 1;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('');
    
    --WHILE LOOP
    WHILE (counter <= 50) LOOP
        DBMS_OUTPUT.PUT_LINE('While Counter: ' || counter);
        counter := counter + 5;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('');
    
    -- FOR LOOP
    FOR i IN 200..220 LOOP
        DBMS_OUTPUT.PUT_LINE('For Counter: ' || i);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('');
    
    -- FOR LOOP REVERSE
    
    FOR i IN REVERSE 0..10 LOOP
        DBMS_OUTPUT.PUT_LINE('For Reverse Counter: ' || i);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('');
    
    -- FOR LOOP REVERSE 
    -- CONTINUE STATEMENT
    
    FOR i IN REVERSE 0..100 LOOP
        CONTINUE WHEN MOD(i, 10) <> 0;
        DBMS_OUTPUT.PUT_LINE('Continue Counter: ' || i);
    END LOOP;
END;