drop table emp;

create table EMP as (select * from tblemployees);

alter table emp add STARS varchar(50);

DECLARE
    CURSOR c_val_cursor is select * from emp;
    v_stcount number(8,2);
    v_stars VARCHAR2(50);
    v_temp number(8,2);
BEGIN
    
    
    for row_s  in c_val_cursor
    loop
        v_stcount:=trunc(row_s.salary/1000);
        v_temp:=v_stcount;
        
        loop
        if v_temp<>0 then
        v_stars:=v_stars||'*';
        v_temp:=v_temp-1;
        end if;
        exit when v_temp=0;
        end loop;
        update emp set stars=v_stars;
        DBMS_OUTPUT.put_line(v_stars);
        v_stars:='';
    end loop;
    
END;
/

select length(stars) from emp;
