SET SERVEROUTPUT ON;

DECLARE
id1 orders.order_id%type:=&order_id;

CURSOR hasil
IS
    select *
    FROM orders
    INNER JOIN customers ON
        customers.customer_id = orders.customer_id
    where order_id=id1;
    
CURSOR hasilx
IS
    select *
    FROM order_items
    INNER JOIN products ON
        order_items.product_id = products.product_id
    where order_id=id1
    order by item_id asc;
BEGIN
dbms_output.put_line('============ TOKO MAJU TERUS ============');
        FOR keluaran IN hasil
        LOOP
        dbms_output.put_line('Kode          : '||keluaran.order_id);
        dbms_output.put_line('Tanggal       : '||keluaran.order_date);
        dbms_output.put_line('Nama Customer : '||keluaran.name);
END LOOP;
dbms_output.put_line('===========================================');
        FOR keluaran IN hasilx
        LOOP
        dbms_output.put_line(keluaran.item_id||' | '||keluaran.product_name||' | '||keluaran.quantity||' | '||keluaran.unit_price);
END LOOP;
dbms_output.put_line('===========================================');
dbms_output.put_line('Terima kasih selamat belanja kembali');
END;