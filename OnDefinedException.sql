--ON DEFINED exception
DECLARE

    ex_integrity EXCEPTION; --creates exception
    PRAGMA EXCEPTION_INIT(ex_integrity, -2292); --error number 2292 is now connected to ex_integrity

BEGIN
    DELETE
    FROM    BB_Basket
    WHERE   idBasket = 4;
EXCEPTION
    WHEN ex_integrity THEN
        DBMS_OUTPUT.PUT_LINE('Error: Cant delete record because stuff and whatnot');
END;