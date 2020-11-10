--PL-SQL Assignment 03 - Attributes and Records
--Problem #2
--Darren Leh, the restaurant guy
DECLARE

    TYPE type_customer IS RECORD(    customerID  BB_Shopper.idShopper%TYPE,
                                    firstName   BB_Shopper.firstName%TYPE,
                                    lastName    BB_Shopper.lastName%TYPE,
                                    orders      NUMBER(2),
                                    subTotal    NUMBER(4, 2));
    
    rec_customer type_customer;
    
    lv_customerID NUMBER(2);

BEGIN

    lv_customerID := '&Customer_ID_Number';
    
    SELECT  idShopper, firstName, lastName, COUNT(orderPlaced), SUM(subTotal)
    INTO    rec_customer
    FROM    BB_Shopper INNER JOIN BB_Basket USING(idShopper)
    WHERE   idShopper = lv_customerID AND orderPlaced = 1
    GROUP BY idShopper, firstName, lastName;
    
    DBMS_OUTPUT.PUT_LINE('Customer ID: ' || rec_customer.customerID);
    DBMS_OUTPUT.PUT_LINE('Customer Name: ' || rec_customer.firstName || ' ' || rec_customer.lastName);
    DBMS_OUTPUT.PUT_LINE('Amount of Orders: ' || rec_customer.orders);
    DBMS_OUTPUT.PUT_LINE('Subtotal: ' || rec_customer.subTotal);
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Customer has no orders on file');

END;