--Explicit Cursor Rehash
DECLARE

    CURSOR cursor_shopper IS 
        SELECT  userName, password
        FROM    BB_Shopper
        FOR UPDATE;
        
    TYPE record_shopper IS RECORD (
        userName BB_Shopper.userName%TYPE,
        password BB_Shopper.password%TYPE
    );
    
    lv_shopper record_shopper;

BEGIN

    OPEN cursor_shopper;
        LOOP
        
            FETCH cursor_shopper INTO lv_shopper;
            EXIT WHEN cursor_shopper%NOTFOUND;
            
            UPDATE BB_Shopper SET password = lv_shopper.userName
            WHERE CURRENT OF cursor_shopper;
        
        END LOOP;
        COMMIT;
    CLOSE cursor_shopper;
END;