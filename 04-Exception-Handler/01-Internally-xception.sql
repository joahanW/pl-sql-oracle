DECLARE
    V_FNAME EMPLOYEES.FIRST_NAME%TYPE;
    V_LNAME EMPLOYEES.LAST_NAME%TYPE;
    V_EMP_ID EMPLOYEES.EMPLOYEE_ID%TYPE := 1000;
BEGIN
    SELECT FIRST_NAME, LAST_NAME
    INTO V_FNAME, V_LNAME
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = V_EMP_ID;

    EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee id ' || V_EMP_ID || ' NOT EXSITS');
end;