SET SERVEROUTPUT ON;

DECLARE
    NOMOR       NUMBER := 0;
    TOTAL       NUMBER := 0;
    GRANDTOTAL  NUMBER := 0;
    FINALTOTAL  NUMBER := 0;
    CURSOR QUERY3 IS
        SELECT
            X.ORDER_ID,
            X.ORDER_DATE,
            Y.NAME,
            Z.FIRST_NAME,
            Z.LAST_NAME
        FROM
            ORDERS X
            JOIN CUSTOMERS Y
            ON X.CUSTOMER_ID = Y.CUSTOMER_ID JOIN EMPLOYEES Z
            ON Z.EMPLOYEE_ID = X.SALESMAN_ID
        WHERE
            X.ORDER_DATE BETWEEN TO_DATE('28/02/2017',
            'DD/MM/YYYY')
            AND TO_DATE('20/06/2017',
            'DD/MM/YYYY');
    BEGINNOMOR  := 0;
    TOTAL       := 0;
    GRANDTOTAL  := 0;
    FINALTOTAL  := 0;
    DBMS_OUTPUT .PUT_LINE('==== TOKO SERBA ADA ====');
    DBMS_OUTPUT .PUT_LINE('I Gusti Ngurah Aditya Kesuma - 21410100039');
    DBMS_OUTPUT .PUT_LINE('');
    DBMS_OUTPUT .PUT_LINE('');
    DBMS_OUTPUT .PUT_LINE(''); -- INNER
    FOR         RESULT IN QUERY3 LOOP
        DBMS_OUTPUT.PUT_LINE('Kode : '
            || RESULT.ORDER_ID);
        NOMOR := RESULT.ORDER_ID;
        DBMS_OUTPUT.PUT_LINE('Tanggal : '
            || RESULT.ORDER_DATE);
        DBMS_OUTPUT.PUT_LINE('Nama : '
            || RESULT.NAME);
        DBMS_OUTPUT.PUT_LINE('Nama Sales : '
            || RESULT.FIRST_NAME
            || ' '
            || RESULT.LAST_NAME);
        DBMS_OUTPUT.PUT_LINE('-------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('KODE || NAMA || HARGA || JUMLAH || TOTAL');
        FOR RESULT IN (
            SELECT
                X.ORDER_ID,
                X.QUANTITY,
                X.UNIT_PRICE,
                Y.PRODUCT_ID,
                Y.PRODUCT_NAME
            FROM
                ORDER_ITEMS X
                JOIN PRODUCTS Y
                ON X.PRODUCT_ID = Y.PRODUCT_ID
            WHERE
                X.ORDER_ID = NOMOR
        ) LOOPTOTAL := RESULT.QUANTITY * RESULT.UNIT_PRICE;
        DBMS_OUTPUT.PUT_LINE(RESULT.PRODUCT_ID
            || '/'
            || RESULT.PRODUCT_NAME
            || '/'
            || RESULT.UNIT_PRICE
            || '/'
            || RESULT.QUANTITY
            || '/'
            || TOTAL);
        GRANDTOTAL := TOTAL + GRANDTOTAL;
        TOTAL := 0;
    END LOOP;
    DBMS_OUTPUT .PUT_LINE('============================================');
    DBMS_OUTPUT .PUT_LINE('GRAND TOTAL : '
        || GRANDTOTAL);
    FINALTOTAL  := GRANDTOTAL + FINALTOTAL;
    GRANDTOTAL  := 0;
    DBMS_OUTPUT .PUT_LINE('');
END LOOP;
DBMS_OUTPUT .PUT_LINE('FINAL TOTAL : '
    || FINALTOTAL);
END;