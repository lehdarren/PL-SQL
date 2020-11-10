DECLARE

    CURSOR cursor_product IS
        SELECT  type, price
        FROM    BB_Product
        FOR UPDATE;             --tells the cursor that this info will be updated
        
    lv_salePrice BB_Product.salePrice%TYPE;

BEGIN

    FOR product IN cursor_product LOOP
        
        IF product.type = 'E' THEN
            lv_salePrice := product.price * .95;    --make product 5% off
        ELSIF product.type = 'C' THEN
            lv_salePrice := product.price * .90;    --make product 10% off
        END IF;
        
        DBMS_OUTPUT.PUT_LINE(product.price || ' - ' ||lv_salePrice);
        
        UPDATE BB_Product SET salePrice = lv_salePrice
        WHERE CURRENT OF cursor_product;            --this tells the update where you currently are
        
    END LOOP;
    
    COMMIT;

END;