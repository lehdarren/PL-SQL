CREATE OR REPLACE PROCEDURE proc_login(
    p_user  IN  VARCHAR2,
    p_pass  IN  VARCHAR2,
    p_dn    OUT VARCHAR2
)
AS

lv_shopperID NUMBER(2);

BEGIN

    SELECT  idShopper
    INTO    lv_shopperID
    FROM    BB_Shopper
    WHERE   username = p_user AND password = p_pass;
    
    p_dn := func_shopperDisplay(lv_shopperID);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No User Found');
END;