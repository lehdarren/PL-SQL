CREATE OR REPLACE FUNCTION func_shopperDisplay(
    f_shopperID IN NUMBER
)
RETURN VARCHAR2
AS

lv_fn   VARCHAR2(15);
lv_ln   VARCHAR2(15);
lv_dn   VARCHAR2(30);

BEGIN
    SELECT  firstName, lastName
    INTO    lv_fn, lv_ln
    FROM    BB_Shopper
    WHERE   idShopper = f_shopperID;
    
    lv_dn := 'Member ' || f_shopperID || ': ' || lv_fn || ' ' || lv_ln;
    
   RETURN NULL;
END;