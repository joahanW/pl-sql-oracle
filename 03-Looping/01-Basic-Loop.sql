DECLARE
    V_COUNTER NUMBER := 0;
    V_RESULT  NUMBER;
BEGIN
    LOOP
        V_COUNTER := V_COUNTER + 1;
        V_RESULT := 99 * V_COUNTER;
        DBMS_OUTPUT.PUT_LINE('99 x ' || V_COUNTER || ' = ' || V_RESULT);
        IF V_COUNTER = 10 THEN
            EXIT ;
        end if;
        IF V_COUNTER < 10 THEN
            EXIT ;
        end if;
    end loop;

end;