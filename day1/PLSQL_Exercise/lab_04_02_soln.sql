SET SERVEROUTPUT ON;
DECLARE
 v_max_deptno number(5) ;
 v_dept_name VARCHAR2(10):='Education';
 v_dept_id number(5);
BEGIN
  select max(department_id)
  into v_max_deptno
  from tbldepartments;
  v_dept_id:=v_max_deptno+10;
  
  INSERT INTO tbldepartments VALUES(v_dept_id,v_dept_name,null,null);
  DBMS_OUTPUT.put_line('The Maximum department_id is: '||v_dept_id);
  DBMS_OUTPUT.put_line('SQL%ROWCOUNT gives '||SQL%ROWCOUNT);
END;
/


delete from tbldepartments where department_id=200;