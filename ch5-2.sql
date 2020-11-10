--running the procedure
DECLARE

    lv_shipCost NUMBER(6,2);
    lv_quantity NUMBER(3);

BEGIN
    lv_quantity := &quantity;
    
    proc_shipCost(lv_quantity, lv_shipCost);
    
    dbms_output.put_line('Your shipping cost: $' || lv_shipCost);
END;