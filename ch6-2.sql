--Using ch6-1 function and using func_DisplayName1
SELECT      idBasket, quantity, func_shipCost(quantity) AS Ship_Cost
FROM        BB_Basket
ORDER BY    quantity DESC;

DECLARE
    lv_display VARCHAR2(30);
BEGIN

    lv_display := func_displayName1(1, 'Darren', 'Leh');
    DBMS_OUTPUT.PUT_LINE(lv_display);

END;

DECLARE
    lv_display VARCHAR2(30);
    lv_memberID NUMBER(2);
BEGIN

    lv_memberID := &Member_ID;
    lv_display := func_displayName2(lv_memberID);
    DBMS_OUTPUT.PUT_LINE(lv_display);
    --OR YOU COULD DO
    --DBMS_OUTPUT.PUT_LINE(func_displayName2(&Member_ID));

END;