CREATE OR REPLACE PACKAGE pkg_order AS
    pv_total    NUMBER(3,2);
    
    FUNCTION func_ship(
        f_quantity  IN NUMBER
    ) RETURN NUMBER;
    
    PROCEDURE proc_total(
        p_basketID  IN  NUMBER,
        p_count     OUT NUMBER,
        p_subtotal  OUT NUMBER,
        p_shipCost  OUT NUMBER,
        p_total     OUT NUMBER
    );
    
END;