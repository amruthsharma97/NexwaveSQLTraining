set serveroutput on;
--VARIABLE b_basic_percent number(8,2);
--VARIABLE b_pf_percent number(8,2);
DECLARE
  v_today date:=sysdate;
  v_tomorrow v_today%type;
  v_basic_percent number(8,2):=45;
  v_pf_percent number(8,2):=12;
  v_fname varchar2(15);
  v_emp_sal number(10);
BEGIN
  v_tomorrow:=v_today+1;
  /*:b_basic_percent:=45;
  :b_pf_percent:=12;*/
  select first_name,salary
  into v_fname,v_emp_sal
  from tblemployees where employee_id=110;
  dbms_output.put_line('Hello '||v_fname);
  /*dbms_output.put_line('Date today: '||v_today);
  dbms_output.put_line('Date tomorrow: '||v_tomorrow);
  dbms_output.put_line(' ');
  dbms_output.put_line('basic_percent');
  dbms_output.put_line('--');
  dbms_output.put_line(:b_basic_percent);
  dbms_output.put_line(' ');
  dbms_output.put_line('pf_percent');
  dbms_output.put_line('--');
  dbms_output.put_line(:b_pf_percent);*/
  dbms_output.put_line('YOUR SALARY IS : '||v_emp_sal);
  dbms_output.put_line('YOUR CONTRIBUTION TOWORDS PF: '||((v_emp_sal*(v_basic_percent/100))*(v_pf_percent/100)));
END;