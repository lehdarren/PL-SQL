--PL-SQL Assignment 03 - Attributes and Records
--Problem #3, 3-8 in book
--Darren Leh, the restaurant guy

DECLARE

    TYPE type_orderSummary IS RECORD(   basketID    BB_Basket.idBasket%TYPE,
                                        subTotal    BB_Basket.subtotal%TYPE,
                                        shipping    BB_Basket.shipping%TYPE,
                                        tax         BB_Basket.tax%TYPE,
                                        total       BB_Basket.total%TYPE);
                                        
    rec_orderSummary type_orderSummary;
    
    lv_basketID NUMBER(2);

BEGIN

    lv_basketID := '&Basket_ID_Number';
    
    SELECT  idBasket, subtotal, shipping, tax, total
    INTO    rec_orderSummary
    FROM    BB_Basket
    WHERE   idBasket = lv_basketID;
    
    DBMS_OUTPUT.PUT_LINE('Basket ID: ' || rec_orderSummary.basketID);
    DBMS_OUTPUT.PUT_LINE('Subtotal : ' || rec_orderSummary.subTotal);
    DBMS_OUTPUT.PUT_LINE('Shipping : ' || rec_orderSummary.shipping);
    DBMS_OUTPUT.PUT_LINE('Tax      : ' || rec_orderSummary.tax);
    DBMS_OUTPUT.PUT_LINE('Total    : ' || rec_orderSummary.total);

END;