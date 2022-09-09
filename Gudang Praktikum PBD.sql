CREATE TABLE "GUDANG"."KATEGORIBARANG" 
   (	"KODEGOL" VARCHAR2(20 BYTE), 
	"NAMAGOL" VARCHAR2(100 BYTE)
   );

CREATE TABLE "GUDANG"."BARANG" 
   (	"KODEBRG" VARCHAR2(20 BYTE), 
	"NAMA" VARCHAR2(100 BYTE), 
	"SATUAN" VARCHAR2(20 BYTE), 
	"HARGABELI" FLOAT(126), 
	"KODEGOL" VARCHAR2(20 BYTE)
   );
   
   CREATE TABLE "GUDANG"."KARYAWAN" 
   (	"KODEKAR" VARCHAR2(20 BYTE), 
	"NAMA" VARCHAR2(200 BYTE), 
	"TELP" VARCHAR2(15 BYTE), 
	"PASSWORD" VARCHAR2(50 BYTE), 
	"KARYAWAN" VARCHAR2(1 BYTE), 
	"BARANG" VARCHAR2(1 BYTE), 
	"GOLONGANBARANG" VARCHAR2(1 BYTE), 
	"SUPPLIER" VARCHAR2(1 BYTE), 
	"PENERIMAAN" VARCHAR2(1 BYTE), 
	"PENGELUARAN" VARCHAR2(1 BYTE)
   );
   
    CREATE TABLE "GUDANG"."SUPPLIER" 
   (	"KODESUPP" VARCHAR2(20 BYTE), 
	"NAMA" VARCHAR2(100 BYTE), 
	"TELP" VARCHAR2(15 BYTE), 
	"PERUSAHAAN" VARCHAR2(100 BYTE), 
	"ALAMAT" VARCHAR2(200 BYTE)
   );
   
   CREATE TABLE "GUDANG"."PENERIMAAN" 
   (	"KODEPENERIMAAN" VARCHAR2(20 BYTE), 
	"TANGGAL" DATE, 
	"KODESUP" VARCHAR2(20 BYTE), 
	"KODEKAR" VARCHAR2(20 BYTE), 
	"KETERANGAN" VARCHAR2(100 BYTE), 
	"TOTAL" FLOAT(126)
   );
   
   CREATE TABLE "GUDANG"."DETAILPENERIMAAN" 
   (	"KODEPENERIMAAN" VARCHAR2(20 BYTE), 
	"KODEBRG" VARCHAR2(20 BYTE), 
	"HARGA" FLOAT(126), 
	"JUMLAH" FLOAT(126)
   );
   
   CREATE TABLE "GUDANG"."PENGELUARAN" 
   (	"KODEPENGELUARAN" VARCHAR2(20 BYTE), 
	"TANGGAL" DATE, 
	"KODEKAR" VARCHAR2(20 BYTE), 
	"KETERANGAN" VARCHAR2(100 BYTE), 
	"JUMLAH" VARCHAR2(20 BYTE)
   );
   
    CREATE TABLE "GUDANG"."DETAILPENGELUARAN" 
   (	"KODEPENGELUARAN" VARCHAR2(20 BYTE), 
	"KODEBRG" VARCHAR2(20 BYTE), 
	"JUMLAH" VARCHAR2(20 BYTE)
   );
   
   CREATE TABLE "GUDANG"."PENERIMAAN" 
   (	"KODEPENERIMAAN" VARCHAR2(20 BYTE), 
	"TANGGAL" DATE, 
	"KODESUP" VARCHAR2(20 BYTE), 
	"KODEKAR" VARCHAR2(20 BYTE), 
	"KETERANGAN" VARCHAR2(100 BYTE), 
	"TOTAL" FLOAT(126)
   );
   
     CREATE TABLE "GUDANG"."DETAILPENERIMAAN" 
   (	"KODEPENERIMAAN" VARCHAR2(20 BYTE), 
	"KODEBRG" VARCHAR2(20 BYTE), 
	"HARGA" FLOAT(126), 
	"JUMLAH" FLOAT(126)
   );