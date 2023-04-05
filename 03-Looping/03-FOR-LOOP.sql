DECLARE
    V_RESULT NUMBER;
BEGIN
    FOR V_COUNTER IN 5..20
    LOOP
        V_RESULT := 333 * V_COUNTER;
        DBMS_OUTPUT.PUT_LINE('333 x ' || V_COUNTER || ' = ' || V_RESULT);
        end loop;
end;