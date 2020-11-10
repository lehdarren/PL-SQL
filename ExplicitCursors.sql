--Explicit Cursors
--store the results of a select statement
DECLARE

    CURSOR cursor_basket IS                     --this now stores the select statement
        SELECT  BI.idBasket, P.type, BI.price, BI.quantity
        FROM    BB_BasketItem BI INNER JOIN BB_Product P USING(idProduct)
        WHERE   BI.idBasket = 6;

    TYPE record_basketItem IS RECORD(           --created to loop through the records created by select
        basket  BB_BasketItem.idBasket%TYPE,
        type    BB_Product.type%TYPE,
        price   BB_BasketItem.price%TYPE,
        qty     BB_BasketItem.quantity%TYPE
    ); 
    
    basketItem record_basketItem;
    lv_taxRate  NUMBER(2,2);
    lv_taxTotal NUMBER(4,2) := 0;
    
BEGIN

    OPEN cursor_basket;
        
        LOOP
        
            FETCH cursor_basket INTO basketItem;    --puts cursor into record
            EXIT WHEN cursor_basket%NOTFOUND;       --exits when there are no more records to find
            
            DBMS_OUTPUT.PUT_LINE(basketItem.price); --confirms that info was found
            
            IF basketItem.type = 'E' THEN
                lv_taxRate := .05;
            ELSIF basketItem.type = 'C' THEN
                lv_taxRate := .03;
            END IF;
            
            lv_taxTotal := lv_taxTotal + ((basketItem.price * basketItem.qty) * lv_taxRate);
            
            DBMS_OUTPUT.PUT_LINE(lv_taxRate); --confirms the tax rate
        
        END LOOP;
        
    DBMS_OUTPUT.PUT_LINE(lv_taxTotal);
    
    CLOSE cursor_basket;

END;