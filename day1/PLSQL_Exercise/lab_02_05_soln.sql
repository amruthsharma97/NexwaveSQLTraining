set serveroutput on;
VARIABLE b_basic_percent number(8,2);
VARIABLE b_pf_percent number(8,2);
DECLARE
  c VARCHAR2(20);
  
  v_today date:=sysdate;
  v_tomorrow v_today%type;
BEGIN
  c := 'Hello World';
  v_tomorrow:=v_today+1;
  :b_basic_percent:=45;
  :b_pf_percent:=12;
  dbms_output.put_line(c);
  dbms_output.put_line('Date today: '||v_today);
  dbms_output.put_line('Date tomorrow: '||v_tomorrow);
  dbms_output.put_line(' ');
  dbms_output.put_line('basic_percent');
  dbms_output.put_line('--');
  dbms_output.put_line(:b_basic_percent);
  dbms_output.put_line(' ');
  dbms_output.put_line('pf_percent');
  dbms_output.put_line('--');
  dbms_output.put_line(:b_pf_percent);
END;