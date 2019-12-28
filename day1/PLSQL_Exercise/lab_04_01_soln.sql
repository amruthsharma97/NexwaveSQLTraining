SET SERVEROUTPUT ON;
DECLARE
 v_max_deptno number(5) ;
BEGIN
  select max(department_id)
  into v_max_deptno
  from tbldepartments;
  DBMS_OUTPUT.put_line('The Maximum department_id is: '||v_max_deptno);
END;
/