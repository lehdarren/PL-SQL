--running the phoneFormat procedure
DECLARE

    lv_phone VARCHAR2(14);
    
BEGIN

    lv_phone := '&phone';
    proc_phoneFormat(lv_phone);
    DBMS_OUTPUT.PUT_LINE(lv_phone);
    
END;