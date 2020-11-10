DECLARE

    --lv_prodDesc VARCHAR2(25);
    lv_prodDesc BB_Product.description%TYPE;

BEGIN

    SELECT  description 
    INTO    lv_prodDesc
    FROM    BB_Product
    WHERE   idProduct = 10;
    
    DBMS_OUTPUT.PUT_LINE(lv_prodDesc);

END;

DECLARE

    lv_taxRecord BB_Tax%ROWTYPE;

BEGIN

    SELECT * 
    INTO lv_taxRecord
    FROM BB_Tax
    WHERE state = 'VA';

    DBMS_OUTPUT.PUT_LINE(lv_taxRecord.idState);
    DBMS_OUTPUT.PUT_LINE(lv_taxRecord.state);
    DBMS_OUTPUT.PUT_LINE(lv_taxRecord.taxRate);
    
END;

