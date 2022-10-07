SET SERVEROUTPUT ON;

DECLARE
    konsumen customers%ROWTYPE;
    BEGIN
    SELECT * INTO konsumen
    FROM customers
    WHERE customer_id = 43;
dbms_output.put_line(konsumen.name||' Website : '||konsumen.website);
END;

