--1.	Write a program in PL/SQL to show the uses of static PL/SQL statement.
DECLARE
    v_emp_id NUMBER(4);
    v_emp_lname varchar2(25);
    v_emp_jobid VARCHAR2(25);
BEGIN
    v_emp_id:=122;
    select last_name,job_id into v_emp_lname,v_emp_jobid from employees where employee_id=v_emp_id;
    dbms_output.put_line('Last Name: '||v_emp_lname||' Job ID: '||v_emp_jobid);
END;
/



--2.	Write a program in PL/SQL to show the uses of CURVAL and NEXTVAL with a sequence name.
create SEQUENCE New_seq MINVALUE 100 INCREMENT BY 10 NOCYCLE;

select new_seq.nextval from dual;
commit;
DECLARE
    v_currval number(4);
    v_nextval number(4);
BEGIN
    --NEW_SEQ.nextval;
    --v_currval:=NEW_SEQ.currval;
    select new_seq.currval into v_currval from dual;
    select new_seq.nextval into v_nextval from dual;
    --v_nextval:=NEW_SEQ.nextval;
    dbms_output.put_line('CURRENT VALUE : '||v_currval||' NEXT VALUE : '||v_nextval);
END;
/



--3.	Write a program in PL/SQL to find the number of rows effected by the use of SQL%ROWCOUNT attributes of an implicit cursor.
create table emp as SELECT
    *
FROM employees;
DECLARE
    v_rowcount number(4);
BEGIN
    delete from emp where employee_id<150;
    
    dbms_output.put_line('Total Rows Affected: '||SQL%ROWCOUNT);
end;
/



--4.	Write a program in PL/SQL to show the uses of implicit cursor without using any attribute.
BEGIN
    for each_rows in (SELECT * FROM employees where employee_id<110)
    loop
        dbms_output.put_line('Last Name : '||each_rows.last_name);
    end loop;
end;
/


--5.	Write a program in PL/SQL to show the uses of SQL%FOUND to determine if a DELETE statement affected any rows.
BEGIN
    DELETE FROM emp where department_id=80;

    if SQL%FOUND then
        dbms_output.put_line('Rows Deleted:');
    else
        dbms_output.put_line('Rows Not Deleted:');
    end if;
end;
/

select *FROM emp where department_id=80;

--6.	Write a program in PL/SQL to show the uses of SQL%NOTFOUND to determine if a UPDATE statement affected any rows.

BEGIN
    update emp set salary=50000 where department_id =50;
    if SQL%FOUND then
        dbms_output.put_line('Rows Affected:'||sql%rowcount);
    else
        dbms_output.put_line('Rows Not Affected:');
    end if;
end;
/

--7.	Write a program in PL/SQL to create a table-based record using the %ROWTYPE attribute.
DECLARE
    
    v_emp_row employees%rowtype;
BEGIN
    select * INTO v_emp_row from employees where employee_id=&Employee_id;
    dbms_output.put_line('Last Name: '||v_emp_row.last_name);

end;
/




--8.	Write a program in PL/SQL to display a table based detail information for the employee of ID 120 from the employees table.
DECLARE
    
    v_emp_row employees%rowtype;
BEGIN
    select * INTO v_emp_row from employees where employee_id=120;
    dbms_output.put_line('First Name: '||v_emp_row.first_name||' Last Name: '||v_emp_row.last_name||'  Department id: '||v_emp_row.department_id||'  Job Id: '||v_emp_row.job_id);

end;
/



--9.	Write a program in PL/SQL to display a cursor based detail information of employees from employees table.
DECLARE
    CURSOR c_employees is select  last_name from employees;
BEGIN
    for e_rows in c_employees
    loop
       
    exit WHEN c_employees%notfound;
    dbms_output.put_line('Last Name: '||e_rows.last_name);
    
    end loop;
end;
/




--10.	Write a program in PL/SQL to retriev the records from the employees table and display them using cursors.
DECLARE
    CURSOR c_employee is select last_name,salary from employees where salary<5000;
    v_lname VARCHAR2(25);
    v_salary number(8,2);
BEGIN
    open c_employee;
    loop
    fetch c_employee INTO v_lname,v_salary;
    
    exit WHEN c_employee%notfound;
    dbms_output.put_line('Last Name: '||v_lname||'| Salary : '||v_salary);
    end loop;
    close c_employee;
end;
/
