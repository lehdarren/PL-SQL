--Explaining the difference between formal parameters and actual parameters
DECLARE

    lv_id NUMBER(2) := 2;
    lv_fn VARCHAR2(20) := 'Joseph';
    lv_ln VARCHAR2(20) := 'Leh';

BEGIN

    --Actual parameters
    DBMS_OUTPUT.PUT_LINE(func_displayName1(1, 'Darren', 'Leh'));
    
    --Formal parameters
    DBMS_OUTPUT.PUT_LINE(func_displayName1(lv_id, lv_fn, lv_ln));

END;