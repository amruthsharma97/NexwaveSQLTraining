DECLARE
    v_countryid VARCHAR2(10);
    v_country_record countries%rowtype;
BEGIN
    select * into v_country_record from countries where country_id='&country_id';
    dbms_output.put_line('Country Id: '||v_country_record.country_id||' Country Name: '||v_country_record.country_name||' Region: '||v_country_record.region_id);
END;
/