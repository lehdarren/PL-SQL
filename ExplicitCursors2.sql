--Explicit Cursors
--store the results of a select statement
DECLARE

    CURSOR cursor_basket IS                     --this now stores the select statement
        SELECT  BI.idBasket, P.type, BI.price, BI.quantity
        FROM    BB_BasketItem BI INNER JOIN BB_Product P USING(idProduct)
        WHERE   BI.idBasket = 6;

    lv_taxRate  NUMBER(2,2);
    lv_taxTotal NUMBER(4,2) := 0;
    
BEGIN

    FOR basketItem IN cursor_basket LOOP --creates the basketItem record on the fly, and pulls right from the cursor
        IF basketItem.type = 'E' THEN
            lv_taxRate := .05;
        ELSIF basketItem.type = 'C' THEN
            lv_taxRate := .03;
        END IF;
        
        lv_taxTotal := lv_taxTotal + ((basketItem.price * basketItem.quantity) * lv_taxRate);
        
        DBMS_OUTPUT.PUT_LINE(lv_taxRate); --confirms the tax rate
    END LOOP;
        
    DBMS_OUTPUT.PUT_LINE(lv_taxTotal);

END;