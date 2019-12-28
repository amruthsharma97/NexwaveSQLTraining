CREATE TABLE MESSAGES (RESULTS number(5));


CREATE SEQUENCE seq MINVALUE 1
  INCREMENT BY 1;
  
DECLARE
    v_tempval number(3);
BEGIN

    LOOP
    v_tempval:=seq.nextval;
    if v_tempval<>6 then
        IF v_tempval<>8 then
          INSERT INTO
          messages values(v_tempval);
        end if;
    end if;
      EXIT WHEN v_tempval=10;
    END LOOP;
    commit;
END;

select * FROM messages;
