DECLARE
    v_salary INTEGER(8,2);
begin
select salary*0.12
INTO v_salary
from tblemployees
where employee_id=&emp_id;
DBMS_OUTPUT.put_line('Incentive of the employee is: '||v_salary||' rs.');
end;
/

set SERVEROUTPUT ON
DECLARE
  "V_LAB" VARCHAR2(5):='v_lab';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Case Insensitive Variable: '||v_lab);
  DBMS_OUTPUT.put_line('Case Sensitive Variable: '||"v_lab");
END;
/

set SERVEROUTPUT ON
DECLARE
  "WHERE" VARCHAR2(5):='WHERE';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Reserve Word As Variable: '||"WHERE");
END;
/

set SERVEROUTPUT ON
DECLARE
  "WHERE" VARCHAR2(5):='WHERE';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Reserve Word As Variable: '||WHERE);
END;
/

set SERVEROUTPUT ON
DECLARE
  "WHERE" VARCHAR2(5):='WHERE';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Reserve Word As Variable: '||"where");
END;
/

DECLARE

BEGIN
    --Single Line Comment
    /*
    Multi line Comment
    */
    DBMS_OUTPUT.PUT_LINE('Single and Multiline Comments');
END;
/


DECLARE
    "IDENTIFIER" VARCHAR(10);
BEGIN
    "IDENTIFIER":='IDENTIFIER';
END;
/


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
/ 

set SERVEROUTPUT ON
DECLARE
  "V_LAB" VARCHAR2(5):='v_lab';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Case Insensitive Variable: '||v_lab);
  DBMS_OUTPUT.put_line('Case Sensitive Variable: '||V_LAB);
END;
/

DECLARE
    v_salary INTEGER(8,2);
begin
select salary+&increased_sal
INTO v_salary
from tblemployees
where employee_id=&emp_id;
DBMS_OUTPUT.put_line('Incentive of the employee is: '||v_salary||' rs.');
end;
/


DECLARE

BEGIN
    DBMS_OUTPUT.PUT_LINE('According To BODMOS RULE the solution of the expression [72-12/3]+(18-6)/4 is 71');
    DBMS_OUTPUT.PUT_LINE('OUTPUT IS '||((72-12/3)+(18-6)/4));
END;
/

