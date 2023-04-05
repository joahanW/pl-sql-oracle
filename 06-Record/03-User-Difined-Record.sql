DECLARE
    TYPE R_EMP_DEP IS RECORD
                      (
                          USERNAME EMPLOYEES.FIRST_NAME%TYPE,
                          DEP_NAME VARCHAR2(20)
                      );
    V_EMP_DEP R_EMP_DEP;
BEGIN
    SELECT FIRST_NAME, DEPARTMENT_NAME
    INTO V_EMP_DEP.USERNAME, V_EMP_DEP.DEP_NAME
    FROM EMPLOYEES
             JOIN DEPARTMENTS USING (DEPARTMENT_ID)
    WHERE EMPLOYEE_ID = 100;

    DBMS_OUTPUT.PUT_LINE(V_EMP_DEP.USERNAME);
end;
