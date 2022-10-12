SET SERVEROUTPUT ON;


CURSOR X
IS
    select *
    FROM COUNTRIES;
BEGIN
        FOR Y IN X
        LOOP
        dbms_output.put_line('Y.COUNTRY_ID');
END LOOP;
dbms_output.put_line('===========================================');
 
END;