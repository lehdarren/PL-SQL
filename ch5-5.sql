CREATE OR REPLACE PROCEDURE proc_orderTotal(
    p_basketID  IN bb_basketItem.idBasket%TYPE,
    p_quantity  OUT NUMBER,
    p_subTotal  OUT NUMBER,
    p_shipCost  OUT NUMBER,
    p_total     OUT NUMBER
) 

AS

BEGIN

    SELECT  SUM(quantity), SUM(quantity * price)
    INTO    p_quantity, p_subTotal
    FROM    BB_BasketItem
    WHERE   idBasket = p_basketID;
    
    proc_shipCost(p_quantity, p_shipCost);
    
    p_total := p_subTotal + p_shipCost;

END;