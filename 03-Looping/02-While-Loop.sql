DECLARE
    V_RESULT NUMBER ;
    V_COUNTER NUMBER := 0;
BEGIN
    WHILE V_COUNTER <> 10 LOOP
        V_COUNTER := V_COUNTER + 1;
        V_RESULT := 121 * V_COUNTER;
        DBMS_OUTPUT.PUT_LINE('121 x ' || V_COUNTER || ' = ' || V_RESULT);
        end loop;
end;