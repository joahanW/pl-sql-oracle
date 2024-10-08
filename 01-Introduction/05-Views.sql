CREATE OR REPLACE VIEW
    VW_EMP_DEP_IT AS
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
FROM EMPLOYEES
         JOIN DEPARTMENTS USING (DEPARTMENT_ID)
WHERE DEPARTMENT_NAME = 'Marketing';

SELECT *
FROM VW_EMP_DEP_IT;
select *
from DEPARTMENTS;
SELECT *
FROM JOBS;
SELECT *
FROM EMPLOYEES;


-- Study Case
CREATE OR REPLACE VIEW VW_EMP_JOB_DEP50 AS
SELECT E.FIRST_NAME || ' ' || E.LAST_NAME AS "FULL NAME",
       E.EMAIL,
       E.SALARY,
       J.JOB_TITLE,
       E.DEPARTMENT_ID,
       COALESCE(D.DEPARTMENT_NAME, '-') "DEPARTMENT_NAME"
FROM EMPLOYEES E
         LEFT JOIN JOBS J on J.JOB_ID = E.JOB_ID
         LEFT JOIN DEPARTMENTS D ON E.EMPLOYEE_ID = D.MANAGER_ID
WHERE E.DEPARTMENT_ID = 50;

SELECT "FULL NAME" FROM VW_EMP_JOB_DEP50;



