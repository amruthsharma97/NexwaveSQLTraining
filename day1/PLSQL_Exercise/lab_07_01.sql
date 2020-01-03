create table top_salaries(salary number(10,2));

DROP TABLE top_salaries;

DECLARE
    CURSOR c_emp_cursor is select distinct salary from employees order by salary desc;
    v_num number(8):=&number;
    v_sal NUMBER(8);
BEGIN
    OPEN c_emp_cursor;
    
        loop 
        FETCH c_emp_cursor into v_sal;
        exit when not c_emp_cursor%found or c_emp_cursor%rowcount>v_num;
        insert INTO top_salaries values(v_sal);
        end loop;
    CLOSE c_emp_cursor;
end;
/

select department_id from employees;

select * from top_salaries;

delete from top_salaries;


DECLARE
    v_deptno number:=&Department_Number;
    CURSOR c_emp_cursor is select last_name,salary,manager_id from employees where department_id=v_deptno;
BEGIN
    
    for each_row in c_emp_cursor
    loop
    if each_row.salary<5000 and each_row.manager_id in (101,124) then
        dbms_output.put_line(each_row.last_name||' Due for a raise');
    else
        dbms_output.put_line(each_row.last_name||' Not due for a raise');
    end if;
    end loop;
END;
/


DECLARE
    CURSOR dept_cursor is select department_id,department_name FROM departments where department_id<100;
    CURSOR emp_cursor(deptno number) is select last_name, job_id, hire_date, salary from employees where department_id=deptno and employee_id<120;
    v_deptid departments.department_id%type;
    v_deptname departments.department_name%type;
    v_lastname employees.last_name%type;
    v_job_id employees.job_id%type;
    v_hire_date employees.hire_date%type;
    v_salary employees.salary%type;
BEGIN
open dept_cursor;
    loop
    fetch dept_cursor into v_deptid,v_deptname;
    dbms_output.put_line('Department Number : '||v_deptid||' Department Name : '||v_deptname);
    
    open emp_cursor(v_deptid);
        loop
            fetch emp_cursor INTO v_lastname,v_job_id,v_hire_date,v_salary;
            exit WHEN emp_cursor%notfound;
            dbms_output.put_line(v_lastname||' '||v_job_id||' '||v_hire_date||' '||v_salary);
        end loop;
    close emp_cursor;
    dbms_output.put_line('---------------------------------------------------------------');
    exit WHEN dept_cursor%notfound;
    end loop; 
    close dept_cursor;
END;
/