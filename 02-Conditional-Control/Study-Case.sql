DECLARE
    V_JOB_ID JOBS.JOB_ID%TYPE;
    V_EMP_ID EMPLOYEES.EMPLOYEE_ID%TYPE := :EMPLOYEE_ID;
    V_SALARY EMPLOYEES.SALARY%TYPE;
    V_RESULT NUMBER;
BEGIN

    SELECT JOB_ID, SALARY
    INTO V_JOB_ID, V_SALARY
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = V_EMP_ID;

    CASE V_JOB_ID
        WHEN 'AD_PRESS' THEN V_RESULT := V_SALARY * 1.15;
        WHEN 'AD_VP' THEN V_RESULT := V_SALARY * 1.1;
        WHEN 'SA_REP' THEN V_RESULT := V_SALARY * 1.08;
        ELSE V_RESULT := V_SALARY * 1.05;
        END CASE;
    DBMS_OUTPUT.PUT_LINE('Employee id ' || V_EMP_ID);
    DBMS_OUTPUT.PUT_LINE('Old Salary ' || V_SALARY);
    DBMS_OUTPUT.PUT_LINE('New Salary ' || V_RESULT);
end;

select JOB_ID FROM EMPLOYEES WHERE EMPLOYEE_ID = 100;
SELECT * FROM JOBS;