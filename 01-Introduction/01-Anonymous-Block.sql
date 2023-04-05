BEGIN
    DBMS_OUTPUT.PUT_LINE('Bank Jabar Banten');
end;

-- GREETINGS BANK BJB
/*
    V_MITRA (Variable)
    dbms_output.put_line ini digunakan result ke
    dalam terminal kita
*/
DECLARE
    V_MITRA VARCHAR2(20) := 'Bank Jabar';
BEGIN
    DBMS_OUTPUT.PUT_LINE(V_MITRA);
END;

DECLARE
    V_NUMBER NUMBER;
BEGIN
    v_number := 5;
end;
