--procedure for phone numbers
CREATE OR REPLACE PROCEDURE proc_phoneFormat(
    p_phone IN OUT VARCHAR2
)

IS

BEGIN
    p_phone := '(' || SUBSTR(p_phone, 1, 3) || ') ' || SUBSTR(p_phone, 4, 3) || '-' || SUBSTR(p_phone, 7, 4);
    --                 starting at 1, grab 3 digits     starting at 4, grab 3           starting at 7, grab 4
END;