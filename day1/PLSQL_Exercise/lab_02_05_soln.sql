set serveroutput on;
set autoprint off;
VARIABLE b_basic_percent number(8);
VARIABLE b_pf_percent number(8);
DECLARE
  v_today date:=sysdate;
  v_tomorrow v_today%type;
BEGIN
  v_tomorrow:=v_today+1;
  
  dbms_output.put_line('Hello World');
  dbms_output.put_line('Date today: '||v_today);
  dbms_output.put_line('Date tomorrow: '||v_tomorrow);

  :b_basic_percent:=45;
  :b_pf_percent:=12;
  
  dbms_output.put_line(:b_basic_percent);
  dbms_output.put_line(:b_pf_percent);
  
END;
/


