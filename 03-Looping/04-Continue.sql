BEGIN
    FOR V_COUNTER IN 1..20
        LOOP
            IF MOD(V_COUNTER, 2) = 0 THEN
                CONTINUE;
            end if;
            DBMS_OUTPUT.PUT_LINE(V_COUNTER);
        end loop;
end;
