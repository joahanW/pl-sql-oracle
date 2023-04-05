DECLARE
    V_NUM NUMBER := 17;
BEGIN
    IF V_NUM > 17 THEN
        DBMS_OUTPUT.PUT_LINE('Anda dapat membuat SIM');
    elsif V_NUM = 17 THEN
        DBMS_OUTPUT.PUT_LINE('Wahh hampir coba lagi besok');
    else
        DBMS_OUTPUT.PUT_LINE('Umur anda belum cukup');
    end if;
    DBMS_OUTPUT.PUT_LINE('Outside if');
end;



