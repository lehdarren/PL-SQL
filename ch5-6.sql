--Using the ordertotal procedure
DECLARE

    lv_idBasket BB_Basket.idBasket%TYPE := 12;
    lv_qty      NUMBER(3);
    lv_sub      NUMBER(8,2);
    lv_ship     NUMBER(8,2);
    lv_total    NUMBER(8,2);

BEGIN

    PROC_orderTotal(lv_idBasket, lv_qty, lv_sub, lv_ship, lv_total);
    DBMS_OUTPUT.PUT_LINE(lv_qty);
    DBMS_OUTPUT.PUT_LINE(lv_sub);
    DBMS_OUTPUT.PUT_LINE(lv_ship);
    DBMS_OUTPUT.PUT_LINE(lv_total);

END;