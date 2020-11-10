DECLARE

    lv_qty NUMBER(3);
    lv_subTotal NUMBER(5, 2);
    
BEGIN
    
    SELECT      SUM(quantity), SUM(price * quantity)
    INTO        lv_qty, lv_subTotal
    FROM        BB_BASKETITEM
    WHERE       idBasket = 12
    GROUP BY    idProduct;
    
    DBMS_OUTPUT.PUT_LINE(lv_qty);
    DBMS_OUTPUT.PUT_LINE(lv_subTotal);
    
END;