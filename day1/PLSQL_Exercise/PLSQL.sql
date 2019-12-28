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

DECLARE
 v_weight    NUMBER(3) := 600;
 v_message   VARCHAR2(255) := 'Product 10012';
BEGIN
  DECLARE
   v_weight	 NUMBER(3) := 1;
   v_message   VARCHAR2(255) := 'Product 11001';
   v_new_locn  VARCHAR2(50) := 'Europe';
  BEGIN
   v_weight := v_weight + 1;
   v_new_locn := 'Western ' || v_new_locn;

  END;
 v_weight := v_weight + 1;
 v_message := v_message || ' is in stock';
 v_new_locn := 'Western ' || v_new_locn;
 
 DBMS_OUTPUT.PUT_LINE(v_new_locn);

END;
/

DECLARE
   v_customer	    VARCHAR2(50) := 'Womansport';
   v_credit_rating   VARCHAR2(50) := 'EXCELLENT';
BEGIN
    DECLARE
       v_customer	NUMBER(7) := 201;
       v_name	VARCHAR2(25) := 'Unisports';       
    BEGIN
       v_credit_rating :='GOOD'; 
       --…
       DBMS_OUTPUT.PUT_LINE(v_credit_rating);
    END;
  --…
END;
/
