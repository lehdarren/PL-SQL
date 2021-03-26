DECLARE

    lv_output VARCHAR2(50);
    
BEGIN

    pack_numbers.proc_numOrder(87, 53, 94, lv_output);
    DO.pl(lv_output);

END;