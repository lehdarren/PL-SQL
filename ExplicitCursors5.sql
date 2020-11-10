DECLARE

    TYPE record_basket IS RECORD (
        basket  bb_basket.idBasket%TYPE,
        created bb_basket.dtCreated%TYPE,
        qty     bb_basket.quantity%TYPE,
        sub     bb_basket.subtotal%TYPE
    );
    
    lv_basket   record_basket;
    lv_daysOld  NUMBER(4);
    lv_shopID   NUMBER(3) := 26;

BEGIN

    SELECT  idBasket, dtCreated, quantity, subTotal
    INTO    lv_basket
    FROM    BB_Basket
    WHERE   idShopper = lv_shopID
    AND     orderPlaced = 0;
    
    lv_daysOld := TO_DATE('09/29/20', 'mm/dd/yy') - lv_basket.created;
    
    DBMS_OUTPUT.PUT_LINE('Basket: ' || lv_basket.basket);
    DBMS_OUTPUT.PUT_LINE('Subtotal: ' || lv_basket.sub);
    DBMS_OUTPUT.PUT_LINE('Quantity: ' || lv_basket.qty);
    DBMS_OUTPUT.PUT_LINE('Days Old: ' || lv_daysOld);
    DBMS_OUTPUT.PUT_LINE(' ');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Error: Shopper had no saved baskets.');
    
    WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Error: Shopper had more than 1 saved baskets.');
    
    

END;