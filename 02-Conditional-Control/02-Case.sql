DECLARE
    V_GRADE CHAR(1) := 'E';
BEGIN
    CASE V_GRADE
        WHEN 'A' THEN DBMS_OUTPUT.PUT_LINE('Nilai rata" grade A 100-90');
        WHEN 'B' THEN DBMS_OUTPUT.PUT_LINE('Nilai rata" grade B 89-80');
        WHEN 'C' THEN DBMS_OUTPUT.PUT_LINE('Nilai rata" grade C 79-70');
        WHEN 'D' THEN DBMS_OUTPUT.PUT_LINE('Nilai rata" grade D 69-60');
        ELSE DBMS_OUTPUT.PUT_LINE('GAGAL');
        END CASE;
end;