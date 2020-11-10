DECLARE
    -- shows off the %ROWTYPE attribute, where it grabs all column datatypes
    rec_shopper BB_Shopper%ROWTYPE;

BEGIN

    SELECT  *
    INTO    rec_shopper
    FROM    BB_Shopper
    WHERE   idShopper = 27;
    
    DBMS_OUTPUT.PUT_LINE(rec_shopper.firstname || ' ' || rec_shopper.lastname);
    DBMS_OUTPUT.PUT_LINE(rec_shopper.address);
    DBMS_OUTPUT.PUT_LINE(rec_shopper.city || ', ' || rec_shopper.state || ' ' || rec_shopper.zipcode);

END;