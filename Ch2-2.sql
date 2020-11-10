/*
    This SQL Script was done in class
*/
DECLARE
    taxRate     NUMBER(6,5);
    subTotal    NUMBER(8,2);
    total       NUMBER(8,2);
    stateName   VARCHAR2(20);
    stateAbbr   VARCHAR2(2);
    stateBird   VARCHAR2(25);
    capital     VARCHAR2(20);
    region      VARCHAR2(20);
BEGIN
    --ASK USER FOR STATE ABBREVIATION
    stateAbbr := UPPER('&State_Abbreviation'); -- := is used for assigning a value, regular = is for comparing
    
    --DETERMINE STATE NAME AND TAX RATE BASED ON STATE ABBR
    IF stateAbbr = 'PA' THEN
        stateName   := 'Pennsylvania';
        taxRate     := .06;
    ELSIF stateAbbr = 'CA' THEN
        stateName   := 'California';
        taxRate     := .08875;
    ELSIF stateAbbr = 'NY' THEN
        stateName   := 'New York';
        taxRate     := .0725;
    ELSE
        stateName   := 'Error ...';
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('State Name: ' || stateName);
    DBMS_OUTPUT.PUT_LINE('Tax Rate: ' || taxRate);
    
    --DETERMINE REGION BASED ON STATE ABBR COMPOUND IF STATEMENT
    
    IF stateAbbr = 'PA' OR stateAbbr = 'NY' THEN
        region := 'North-East, US';
    ELSE
        region := 'South-West, US';
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Region: ' || region);
    
    -- DETERMINE CAPITAL BASED ON STATE ABBR
    -- CASE STATEMENT
    
    CASE stateAbbr 
        WHEN 'PA' THEN capital := 'Harrisburg';
        WHEN 'NY' THEN capital := 'Albany';
        WHEN 'CA' THEN capital := 'Sacremento';
    END CASE;
    
    DBMS_OUTPUT.PUT_LINE('Capital: ' || capital);
    
    -- DETERMINE STATE BIRD BASED ON STATE ABBR
    -- CASE EXPRESSION
    
    stateBird := CASE stateAbbr
        WHEN 'PA' THEN 'Ruffed Grouse'
        WHEN 'NY' THEN 'Bluebird'
        WHEN 'CA' THEN 'California Valley Quail'
    END;
    
    DBMS_OUTPUT.PUT_LINE('State Bird: ' || stateBird);
END;