--SET SERVEROUTPUT ON;
--
--DECLARE
--CURSOR hasil
--IS
--    select * 
--    from countries;
--    
--BEGIN
--    FOR result IN hasil
--    LOOP
--    dbms_output.put_line(result.country_id || );
--    END LOOP;
--END;
--    
--    
--CREATE or replace function fullname_Emp(p_id in
--employees.employee_id%type)
--return varchar2 is
--v_nama varchar2(50);
--begin
--select first_name||' '||last_name
--into v_nama
--from employees
--where employee_id = p_id;
--return v_nama;
--end;

--CREATE or replace function tambah(id_ in
--regions.region_id%type, name_ in regions.region_name%type)
--return varchar2 is
--id_reg varchar2(50);
--nama_reg varchar2 (50);
--begin
--    select region_id, region_name
--    into id_reg, nama_reg
--    from regions
--    where region_id = id_, 
--          region_name = name_;
--    return id_reg ;
--end;
--
--CREATE OR REPLACE FUNCTION print(c_id in countries.country_id%TYPE, c_name in countries.country_name%TYPE)
--return varchar2 is
--kode_negara varchar2(50);
--nama_negara varchar2(50);
--
--

--create or replace function add_kategori(kodegol in varchar2, namagol in varchar2)
--return VARCHAR2 is 
--PRAGMA AUTONOMOUS_TRANSACTION;
--begin 
--insert into gudang.kategoribarang
--values (kodegol, namagol);
--COMMIT;
--return 'done';
--end add_kategori;


SET SERVEROUTPUT ON;

--create or replace function print
--return VARCHAR2 is pragma  AUTONOMOUS_TRANSACTION;
--begin
--select * from countries;
--end;


create or replace function negara (n_id in countries.country_id%type)
return varchar2 
is
n_negara varchar2(50);
begin
select country_name
into n_negara
from countries 
where country_id = n_id;
return n_negara;
end;

select country_id, negara(country_id)
from countries
where country_id = 'AR';

create or replace function delete (n_id in countries.country_id%type)
return varchar2
is
k_negara varchar2(50);
begin
    deletes from countries
    
    where country_id = 


