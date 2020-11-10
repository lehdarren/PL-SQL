--User Defined Exception
DECLARE
    
    ex_shopperUpdate EXCEPTION;
    
    
BEGIN

    UPDATE  BB_Shopper 
    SET     password = 'Haxor1'
    WHERE   idShopper = 28;
    
    IF SQL%NOTFOUND THEN
        RAISE ex_shopperUpdate;
    END IF;
    
EXCEPTION
    WHEN ex_shopperUpdate THEN
        DBMS_OUTPUT.PUT_LINE('Error: No shopper to update');
END;