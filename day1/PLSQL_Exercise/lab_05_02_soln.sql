DECLARE
    CURSOR c_val_cursor is select * from emp;
    v_stcount number(8,2);
    v_stars VARCHAR2(50);
    v_temp number(8,2);
BEGIN
    
    
    for row_s  in c_val_cursor
    loop
        v_stcount:=round(row_s.salary/1000);
        v_temp:=v_stcount;
        
        loop
        if v_temp<>0 then
        v_stars:=v_stars||'*';
        v_temp:=v_temp-1;
        end if;
        exit when v_temp=0;
        end loop;
        update emp set stars=v_stars where employee_id=row_s.employee_id ;
        v_stars:='';
    end loop;
    commit;
END;
/

select employee_id,salary,stars from emp;