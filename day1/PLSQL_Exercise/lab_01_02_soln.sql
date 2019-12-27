set serveroutput on;
DECLARE
  c VARCHAR2(20);
BEGIN
  c := 'Hello World';
  dbms_output.put_line(c);
END;