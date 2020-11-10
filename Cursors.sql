BEGIN
    UPDATE  BB_Product
    SET     stock = stock + 25
    WHERE   idProduct = 8;
    
    --cursors keep track of the most recent transaction
    --%ROWCOUNT - amount rows affected
    
    --Displays if records have been changed or not
    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT);
        DBMS_OUTPUT.PUT_LINE('No record has been updated');
    ELSIF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT);
        DBMS_OUTPUT.PUT_LINE('A record has been updated');
    END IF;
    
    UPDATE  BB_Product
    SET     stock = stock + 25
    WHERE   idProduct = 15;
    
    --cursors keep track of the most recent transaction
    --%ROWCOUNT - amount rows affected
    
    --Displays if records have been changed or not
    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT);
        DBMS_OUTPUT.PUT_LINE('No record has been updated');
    ELSIF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT);
        DBMS_OUTPUT.PUT_LINE('A record has been updated');
    END IF;

END;