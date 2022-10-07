SET SERVEROUTPUT ON;
DECLARE
-- cursor
CURSOR hasil
IS
        SELECT * 
        FROM customers
        WHERE customer_id = 43;
        
-- cursor 2
CURSOR hasilx
IS
        SELECT *
        FROM customers
        WHERE customer_id = 40;
        
        
BEGIN
        FOR keluaran IN hasil
        LOOP
        dbms_output.put_line(keluaran.name || ' Website : ' || keluaran.website);
        END LOOP;
        dbms_output.put_line('Data lain');
        
        
        FOR keluaran IN hasilx
        LOOP
        dbms_output.put_line(keluaran.name || ' Website : ' || keluaran.website);
        END LOOP;
END;