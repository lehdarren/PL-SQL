DECLARE
    lv_total    bb_basket.total%TYPE;
BEGIN
    SELECT  total
    INTO    lv_total
    FROM    bb_basket
    WHERE   idBasket = 17; --throws error
    
    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('The total is: ' || lv_total);
    ELSIF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('Could not find a total');
    END IF;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Could not find a total');
END;