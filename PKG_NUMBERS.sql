CREATE OR REPLACE PACKAGE pack_numbers AS
    PROCEDURE proc_numOrder(
        p_num1      IN  NUMBER,
        p_num2      IN  NUMBER,
        p_num3      IN  NUMBER,
        p_output    OUT VARCHAR2
    );
END;