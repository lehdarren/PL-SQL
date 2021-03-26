CREATE OR REPLACE FUNCTION TOT_PURCH_SF (
    p_num   NUMBER)
    RETURN  NUMBER
IS

lv_total    NUMBER(8,2);
lv_shipCost NUMBER(3);
    
BEGIN
    -- original select
    --SELECT  SUM(total)
    --INTO    lv_total
    --FROM    BB_Basket
    --WHERE   idShopper = p_num;
    
    
    SELECT  SUM((subtotal * taxrate) + subtotal + func_shipCost(quantity))
    INTO    lv_total
    FROM    BB_Basket   INNER JOIN BB_Shopper   USING(idShopper)
                        INNER JOIN BB_Tax       USING(state)
    WHERE   idShopper = p_num;
    
    IF SQL%NOTFOUND THEN
        lv_total := 0;
    END IF;
    
    RETURN lv_total;
END;