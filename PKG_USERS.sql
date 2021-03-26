CREATE OR REPLACE PACKAGE pack_users AS
    PROCEDURE proc_userInfo (
        p_id        IN NUMBER,
        p_output    OUT VARCHAR2
    );
END;