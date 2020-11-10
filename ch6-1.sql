--Chapter 6: Functions
CREATE OR REPLACE FUNCTION func_shipCost(
    f_qty   IN NUMBER
)
RETURN NUMBER
AS

lv_shipCost NUMBER(6,2);

BEGIN
    
    IF f_qty > 10 THEN
        lv_shipCost := 13.00;
    ELSIF f_qty > 5 THEN
        lv_shipCost := 8.00;
    ELSE
        lv_shipCost := 5.00;
    END IF;
    
    RETURN lv_shipCost;
    
END;