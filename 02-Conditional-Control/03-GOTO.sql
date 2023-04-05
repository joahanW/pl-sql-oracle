BEGIN

    GOTO THE_END;

    <<THE_END>>
        DBMS_OUTPUT.PUT_LINE('The End');

    <<FIRST_MESSAGE>>
        DBMS_OUTPUT.PUT_LINE('First Message');
    GOTO THE_END;

    <<SECOUND_MESSAGE>>
        DBMS_OUTPUT.PUT_LINE('Secound Message');
    GOTO FIRST_MESSAGE;



end ;
