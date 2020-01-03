DECLARE
    type dept_table_type is table of departments.department_name%TYPE INDEX BY PLS_INTEGER;
    my_dept_table dept_table_type;
    loop_count number:=10;
    deptno number:=0;
begin
    loop
        deptno:=deptno+10;
        
        select department_name into  my_dept_table(11-loop_count) from departments where department_id=deptno;
        loop_count:=loop_count-1;
        exit WHEN loop_count=0;
    end loop;
    
    
    for i in 1 .. 10
    loop
        dbms_output.put_line(my_dept_table(i));
    end loop;
end;
/


DECLARE
    type dept_table_type is table of departments%ROWTYPE INDEX BY PLS_INTEGER;
    my_dept_table dept_table_type;
    loop_count number:=10;
    deptno number:=0;
begin
    for i in 1 .. loop_count
    loop
        deptno:=deptno+10;
        
        select * into  my_dept_table(i) from departments where department_id=deptno;
        loop_count:=loop_count-1;
        exit WHEN loop_count=0;
    end loop;
    
    
    for i in 1 .. 10
    loop
        dbms_output.put_line('Department Id: '||my_dept_table(i).department_id||' Department Name: '||my_dept_table(i).department_name||' Manager Id: '||my_dept_table(i).manager_id||' Location Id: '||my_dept_table(i).location_id);
    end loop;
end;
/
