DECLARE
CURSOR C_EMP IS
    SELECT FIRST_NAME,LAST_NAME
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = 100;
BEGIN
    FOR V_EMP IN C_EMP
    LOOP
        DBMS_OUTPUT.PUT_LINE(V_EMP.FIRST_NAME || ' ' || V_EMP.LAST_NAME);
        end loop;
end;