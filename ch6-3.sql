--runs the procLogin procedure and funcShopperDisplay function
DECLARE

    lv_user     BB_Shopper.username%TYPE;
    lv_pass     BB_Shopper.password%TYPE;
    lv_display  VARCHAR(50);

BEGIN

    lv_user := '&Username';
    lv_pass := '&Password';
    
    proc_login(lv_user, lv_pass, lv_display);
    
    DBMS_OUTPUT.PUT_LINE(lv_display);

END;