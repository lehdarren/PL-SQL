DECLARE

    TYPE type_product IS TABLE OF bb_product%ROWTYPE INDEX BY BINARY_INTEGER;
    tbl_product type_product;

BEGIN

    SELECT  *
    BULK COLLECT
    INTO    tbl_product
    FROM    bb_product;
    
    FOR i IN 1..tbl_product.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(tbl_product(i).productName);
    END LOOP;

END;

DECLARE
    --creates a new datatype
    TYPE type_person IS RECORD(
        fName bb_shopper.firstName%TYPE,
        lName bb_shopper.lastName%TYPE,
        address bb_shopper.address%TYPE,
        city bb_shopper.city%TYPE,
        state bb_shopper.state%TYPE,
        zip bb_shopper.zipCode%TYPE);
    
    --creates a person array of type_person
    TYPE type_personTable IS TABLE OF type_person INDEX BY BINARY_INTEGER; 
    
    lv_personTable type_personTable;
    
BEGIN

    SELECT  firstName, lastName, address, city, state, zipCode
    BULK COLLECT --tells SQL that you are collecting multiple records
    INTO    lv_personTable
    FROM    BB_Shopper;
    
    FOR i IN 1..lv_personTable.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(lv_personTable(i).fName || ' ' || 
                             lv_personTable(i).lName);
        DBMS_OUTPUT.PUT_LINE(lv_personTable(i).address); 
        DBMS_OUTPUT.PUT_LINE(lv_personTable(i).city || ', ' || 
                             lv_personTable(i).state || ', ' ||
                             lv_personTable(i).zip);
        DBMS_OUTPUT.PUT_LINE(' ');
    END LOOP;

END;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    