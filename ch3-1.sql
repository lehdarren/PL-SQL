DECLARE
    -- shows of the %TYPE attribute, where it adapts to the datatype of the database
    lv_productName BB_Product.productName%TYPE;
    lv_productDesc BB_Product.description%TYPE;

BEGIN

    SELECT productName, description
    INTO   lv_productName, lv_productDesc
    FROM   BB_Product
    WHERE  idProduct = 8;
    
    DBMS_OUTPUT.PUT_LINE(lv_productName);
    DBMS_OUTPUT.PUT_LINE(lv_productDesc);

END;