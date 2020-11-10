DECLARE



BEGIN
    <<msg1>> --like labels in assembly
    DBMS_OUTPUT.PUT_LINE('Message 1');
    GOTO msg3;
    
    <<msg2>>
    DBMS_OUTPUT.PUT_LINE('Message 2');
    
    
    <<msg3>>
    DBMS_OUTPUT.PUT_LINE('Message 3');
    

END;