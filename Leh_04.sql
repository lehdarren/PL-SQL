--PL-SQL Assignment 03 - Attributes and Records
--Problem #4, 3-12 in book
--Darren Leh, the restaurant guy
DECLARE

    TYPE type_pledge IS RECORD( pledgeID    DD_Pledge.idPledge%TYPE,
                                donorID     DD_Pledge.idDonor%TYPE,
                                pledgeAmt   DD_Pledge.pledgeAmt%TYPE,
                                totalPaid   NUMBER(4));
                                
    rec_pledge type_pledge;
    
    lv_pledgeID NUMBER(3);

BEGIN

    lv_pledgeID := '&Pledge_ID_Number';
    
    SELECT  idPledge, idDonor, pledgeAmt, SUM(payAmt)
    INTO    rec_pledge
    FROM    DD_Pledge INNER JOIN DD_Payment USING(idPledge)
    WHERE   idPledge = lv_pledgeID 
    GROUP BY idPledge, idDonor, pledgeAmt;
    
    DBMS_OUTPUT.PUT_LINE('Pledge ID    : ' || rec_pledge.pledgeID);
    DBMS_OUTPUT.PUT_LINE('Donor ID     : ' || rec_pledge.donorID);
    DBMS_OUTPUT.PUT_LINE('Pledge Amount: ' || rec_pledge.pledgeAmt);
    DBMS_OUTPUT.PUT_LINE('Total Paid   : ' || rec_pledge.totalPaid);
    DBMS_OUTPUT.PUT_LINE('Amount Left  : ' || (rec_pledge.pledgeAmt - rec_pledge.totalPaid));

END;