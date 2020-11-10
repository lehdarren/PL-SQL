--PL-SQL Assignment 03 - Attributes and Records
--Problem #1
--Darren Leh, the restaurant guy
DECLARE

    TYPE type_member IS RECORD( firstName MM_Member.first%TYPE,
                                lastName MM_Member.last%TYPE,
                                memberID MM_Member.member_id%TYPE,
                                rentals NUMBER(2));
    rec_member type_member;
    
    lv_memberID NUMBER(2);

BEGIN

    lv_memberID := '&memberID';

    SELECT first, last, member_id, COUNT(member_id)
    INTO rec_member
    FROM MM_Member INNER JOIN MM_Rental USING(member_id)
    WHERE member_id = lv_memberID
    GROUP BY member_id, first, last;
    
    DBMS_OUTPUT.PUT_LINE(rec_member.firstName || ' ' || rec_member.lastName);
    DBMS_OUTPUT.PUT_LINE('Member ID: ' || rec_member.memberID);
    DBMS_OUTPUT.PUT_LINE('Amount of Rentals: ' || rec_member.rentals);

END;