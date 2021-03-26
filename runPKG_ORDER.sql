DECLARE

    lv_basketID NUMBER := 12;
    lv_count NUMBER(3);
    lv_subtotal NUMBER(5,2);
    lv_shipCost NUMBER(5,2);
    lv_total NUMBER(5,2);

BEGIN

    PKG_ORDER.proc_total(lv_basketID, lv_count, lv_subtotal, lv_shipCost, lv_total);

    DBMS_OUTPUT.PUT_LINE(lv_count);
    DBMS_OUTPUT.PUT_LINE(lv_subtotal);
    DBMS_OUTPUT.PUT_LINE(lv_shipCost);
    DBMS_OUTPUT.PUT_LINE(lv_total);
    
    

END;