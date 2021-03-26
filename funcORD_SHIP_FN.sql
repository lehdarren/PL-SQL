CREATE OR REPLACE FUNCTION ord_ship_fn (
    f_basketID NUMBER
) RETURN VARCHAR2
IS

lv_status       VARCHAR2(10);
lv_dtOrdered    DATE;
lv_dtShipped    DATE;
lv_numDays      NUMBER(3);
lv_stage        NUMBER(1);

BEGIN

    SELECT  dtCreated, dtStage, idStage
    INTO    lv_dtOrdered, lv_dtShipped, lv_stage
    FROM    BB_Basket INNER JOIN BB_BasketStatus USING(idBasket)
    WHERE   idBasket = f_basketID AND ROWNUM = 1
    ORDER BY idStage DESC;
    
    lv_numDays := lv_dtShipped - lv_dtOrdered;
    
    IF lv_stage = 5 THEN
        IF lv_numDays > 1 THEN
           lv_status := 'Check';
        ELSE
            lv_status := 'Good';
        END IF;
    ELSE
        lv_status := 'Not Shipped';
    END IF;
    
    RETURN lv_status;
END;