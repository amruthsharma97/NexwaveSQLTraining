SET SERVEROUTPUT ON;
VARIABLE dept_id number(5);
BEGIN
  select max(department_id)
  into :dept_id
  from tbldepartments;
  
  UPDATE tbldepartments
    SET location_id = 3000 where department_id=:dept_id;
END;
/

  
  select * from tbldepartments where department_id=200;
  
  delete from tbldepartments where department_id=200;