DECLARE
    -- shows off the %ROWTYPE attribute, where it grabs all column datatypes
    TYPE    type_shopper IS RECORD( firstName BB_Shopper.firstName%TYPE,
                                    lastName BB_Shopper.lastName%TYPE,
                                    address BB_Shopper.address%TYPE,
                                    city BB_Shopper.city%TYPE,
                                    state BB_Shopper.state%TYPE,
                                    zipcode BB_Shopper.zipcode%TYPE);
    rec_shopper type_shopper;

BEGIN

    SELECT  *
    INTO    rec_shopper
    FROM    BB_Shopper
    WHERE   idShopper = 27;
    
    DBMS_OUTPUT.PUT_LINE(rec_shopper.firstname || ' ' || rec_shopper.lastname);
    DBMS_OUTPUT.PUT_LINE(rec_shopper.address);
    DBMS_OUTPUT.PUT_LINE(rec_shopper.city || ', ' || rec_shopper.state || ' ' || rec_shopper.zipcode);

END;







DECLARE
    lv_fName    BB_Shopper.firstName%TYPE;
    lv_lName    BB_Shopper.lastName%TYPE;
    lv_address  BB_Shopper.address%TYPE;
    lv_city     BB_Shopper.city%TYPE;
    lv_state    BB_Shopper.state%TYPE;
    lv_zipcode  BB_Shopper.zipcode%TYPE;


BEGIN

    SELECT firstName, lastName, address, city, state, zipcode
    INTO    lv_fName, lv_lName, lv_address, lv_city, lv_state, lv_zipcode
    FROM BB_Shopper
    WHERE idShopper = 23;
    
    DBMS_OUTPUT.PUT_LINE(lv_fName || ' ' || lv_lName);
    DBMS_OUTPUT.PUT_LINE(lv_address);
    DBMS_OUTPUT.PUT_LINE(lv_city || ', ' || lv_state || ' ' || lv_zipcode);

END;






