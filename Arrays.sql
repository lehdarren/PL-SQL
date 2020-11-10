DECLARE

    TYPE type_product IS TABLE OF NUMBER INDEX BY BINARY_INTEGER;
    table_productPrice type_product;
    
    lv_total    NUMBER := 0;
    lv_average  NUMBER := 0;
    lv_count    NUMBER := 0;
    lv_i        NUMBER := 1;

BEGIN

    SELECT  COUNT(idProduct)
    INTO    lv_count
    FROM    bb_product;
    
    DBMS_OUTPUT.PUT_LINE(lv_count);
    
    WHILE lv_i <= lv_count LOOP
        
        SELECT price
        INTO table_productPrice(lv_i)
        FROM BB_Product
        WHERE idProduct = lv_i;
        
        lv_i := lv_i + 1;
        
    END LOOP;
    
    FOR i IN 1..table_productPrice.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(table_productPrice(i));
        
        lv_total := lv_total + table_productPrice(i);
    END LOOP;
    
    lv_average := lv_total / table_productPrice.COUNT;
    
    DBMS_OUTPUT.PUT_LINE('Total price of all products is $' || lv_total);
    DBMS_OUTPUT.PUT_LINE('Average price of all products is $' || lv_average);

END;