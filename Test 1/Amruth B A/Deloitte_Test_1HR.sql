--HR Schema.
----------------
/*22.	Start the executable section with the BEGIN keyword and include a SELECT statement to retrieve
the maximum department_id from the departments table.*/
DECLARE
    v_max_dept_id number(10);
BEGIN
    select max(department_id)
    into v_max_dept_id
    from tbldepartments;
    dbms_output.put_line('Maximun Department_id: '||v_max_dept_id);
END;
/


--23.	Write a PL/SQL block to show a reserved word can be used as a user-define identifier.
DECLARE
    "SELECT" VARCHAR2(20):='Hello World';
BEGIN
    dbms_output.put_line("SELECT");
END;
/

--24.	Write PL/SQL blocks to show the scope and visibility of local and global identifiers.
DECLARE 
   -- Global variables  
   num1 number := 95;  
   num2 number := 85;  
BEGIN  
   
   DECLARE  
      -- Local variables 
      num1 number := 195;  
      num2 number := 185;  
   BEGIN  
      dbms_output.put_line('Inner Variable num1: ' || num1); 
      dbms_output.put_line('Inner Variable num2: ' || num2); 
   END;  
   dbms_output.put_line('Outer Variable num1: ' || num1); 
   dbms_output.put_line('Outer Variable num2: ' || num2); 
END; 


--25.	Write a PL/SQL block to adjust the salary of the employee whose ID 122.
DECLARE
    v_asal number(10);
BEGIN
    select salary+&ADJUSTMENT_VALUE
    into v_asal
    from tblemployees where employee_id=&EMP_ID;
    dbms_output.put_line('Adjusted Salary is '||v_asal);
END;
/


