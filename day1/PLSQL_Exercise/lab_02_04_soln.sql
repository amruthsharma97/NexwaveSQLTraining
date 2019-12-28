set serveroutput on;
DECLARE
  c VARCHAR2(20);
  
  v_today date:=sysdate;
  v_tomorrow v_today%type;
BEGIN
  c := 'Hello World';
  v_tomorrow:=v_today+1;
  dbms_output.put_line(c);
  dbms_output.put_line('Date today: '||v_today);
  dbms_output.put_line('Date tomorrow: '||v_tomorrow);
END;