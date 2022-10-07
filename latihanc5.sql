SET SERVEROUTPUT ON;
DECLARE 
    orderid orders.order_id%TYPE:=&order_id;
    total number;
    a number;
    
  CURSOR hasil
    IS 
    SELECT order_id,order_date, name 
    FROM orders
    inner join customers
    on orders.customer_id = customers.customer_id
    where order_id = orderid;
    
  CURSOR hasilx
    IS 
    SELECT item_id,product_name,quantity,unit_price 
    FROM order_items
    inner join products
    on order_items.product_id = products.product_id
    where order_id = orderid;
  begin
  total := 0;
  dbms_output.put_line('    TOKO MAJU BERSAMA ');
    for keluaran in hasil
      loop
        dbms_output.put_line('Kode : '||keluaran.order_id);
        dbms_output.put_line('tanggal : '||keluaran.order_date);
        dbms_output.put_line('Nama : '||keluaran.name);
      end loop;
      
dbms_output.put_line('======================================= ');
    for keluaran in hasilx
      loop
        a:=keluaran.quantity * keluaran.unit_price;
        dbms_output.put_line(keluaran.item_id||' | '
        ||keluaran.product_name||' | '
        ||keluaran.quantity||' | '||keluaran.unit_price||' | '||a);
        total:=total+a;
      end loop;
dbms_output.put_line('======================================= ');
dbms_output.put_line('grand total : ' || total);
dbms_output.put_line(' ');
dbms_output.put_line('Terima kasih Selamat berbelanja kembali');
end;