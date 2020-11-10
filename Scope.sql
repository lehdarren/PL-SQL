--Introduction to Scope
DECLARE
    lv_one  NUMBER(2) := 10;
    lv_two  NUMBER(2) := 20;
BEGIN
    DECLARE
        lv_one      NUMBER(2) := 30;
        lv_three    NUMBER(2) := 40;
    BEGIN
    
        lv_one := lv_one + 10;
        lv_two := lv_two + 10;
        DBMS_OUTPUT.PUT_LINE('INNER ' || lv_one);
        DBMS_OUTPUT.PUT_LINE('INNER ' || lv_two);
        DBMS_OUTPUT.PUT_LINE('INNER ' || lv_three);
    
    END;

    lv_one := lv_one + 10;
    lv_two := lv_two + 10;
    
    DBMS_OUTPUT.PUT_LINE('OUTER ' || lv_one);
    DBMS_OUTPUT.PUT_LINE('OUTER ' || lv_two);
    
END;