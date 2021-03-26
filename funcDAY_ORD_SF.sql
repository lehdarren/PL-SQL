CREATE OR REPLACE FUNCTION day_ord_sf (
    f_date DATE
)   RETURN VARCHAR2
IS

lv_day  VARCHAR2(10);

BEGIN

    lv_day := TO_CHAR(f_date, 'DAY');
    RETURN lv_day;
END;