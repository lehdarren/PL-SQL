DECLARE
    rec_dept    bb_department%ROWTYPE;
    
BEGIN
    rec_dept.idDepartment := 4;
    rec_dept.deptName := 'Teas';
    rec_dept.deptDesc := 'Premium teas';
    rec_dept.deptImage := 'tea.gif';
    
    UPDATE  BB_Department
    SET     ROW = rec_dept
    WHERE   idDepartment = rec_dept.idDepartment;
    --INSERT INTO BB_Department VALUES rec_dept;
    
END;