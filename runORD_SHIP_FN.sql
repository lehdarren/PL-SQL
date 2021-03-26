DECLARE

    lv_id NUMBER := 4;

BEGIN

    DBMS_OUTPUT.PUT_LINE('BASKET ID: ' || lv_id || ' / STATUS: ' || ord_ship_fn(lv_id));

END;