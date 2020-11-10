--creating a procedure
CREATE OR REPLACE PROCEDURE proc_shipCost( --replace references replacing an existing procedure with this name
    p_qty   IN NUMBER, --a number comes in
    p_ship  OUT NUMBER --a number goes out (return statement)
) AS

BEGIN
    IF p_qty > 10 THEN
        p_ship := 11.00;
    ELSIF p_qty > 5 THEN
        p_ship := 8.00;
    ELSE
        p_ship := 5.00;
    END IF;
END;