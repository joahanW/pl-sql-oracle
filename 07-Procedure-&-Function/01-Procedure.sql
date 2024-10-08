CREATE OR REPLACE PROCEDURE PRO_GREETINGS
    IS
    v_world varchar2(20);
BEGIN
    v_world := 'Hello World';
    DBMS_OUTPUT.PUT_LINE(v_world);
end ;

-- Calling Procedure
BEGIN
    PRO_GREETINGS;
END;

CREATE OR REPLACE PROCEDURE PRO_UPDATE_SALARY(
    P_EMP_ID IN EMPLOYEES.EMPLOYEE_ID%TYPE,
    P_AMOUNT IN NUMBER,
    P_RESULT OUT NUMBER
)
    IS
    V_SALARY EMPLOYEES.SALARY%TYPE;
    V_DEP_ID NUMBER;
        V_DEP_AVG NUMBER;
    EX_VALID_EMP_ID_AMOUNT EXCEPTION;
    EX_VALID_SALARY EXCEPTION;
BEGIN

    IF P_EMP_ID = 0 OR P_AMOUNT <= 5 THEN
        RAISE EX_VALID_EMP_ID_AMOUNT;
    end if;

    SELECT SALARY, DEPARTMENT_ID
    INTO V_SALARY, V_DEP_ID
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = P_EMP_ID;

    V_DEP_AVG := FUNC_GET_AVG_SALARY_DEP(V_DEP_ID);
    P_RESULT := V_SALARY * (1 + (P_AMOUNT / 100));

    IF P_RESULT < V_DEP_AVG THEN
        RAISE EX_VALID_SALARY;
    end if;

    UPDATE EMPLOYEES
    SET SALARY = P_RESULT
    WHERE EMPLOYEE_ID = P_EMP_ID;

    DBMS_OUTPUT.PUT_LINE('Successfully to update salary on employee id ' || P_EMP_ID);

EXCEPTION
    WHEN
        EX_VALID_EMP_ID_AMOUNT THEN
        DBMS_OUTPUT.PUT_LINE('Employee Id must be greater then 0 or Amount not lest then 5%');
    WHEN
        EX_VALID_SALARY THEN
        DBMS_OUTPUT.PUT_LINE('Employee Id ' || P_EMP_ID || ' Salary must greater then ' || V_DEP_AVG );

end;


-- Calling Procedure
DECLARE
    V_RESULT NUMBER;
BEGIN
    PRO_UPDATE_SALARY(100, 200, V_RESULT);
    DBMS_OUTPUT.PUT_LINE(V_RESULT);
end;

SELECT *
FROM EMPLOYEES;

