--How to DECLARE a VARIABLE and  initialized at DECLARE Section 

SET SERVEROUTPUT ON;
DECLARE 
  E_NAME VARCHAR2(15):='MANOJ';
  E_SAL NUMBER(6,2):=2345.00;

BEGIN 
  DBMS_OUTPUT.PUT_LINE(E_NAME||'-'||E_SAL);
END;
/

--Variable initialized at Execution Section.

SET SERVEROUTPUT ON;
DECLARE 
 E_NAME VARCHAR2(15);
 E_SAL NUMBER(6,2);
 
BEGIN 
  E_NAME:='MANOJ';
  E_SAL:=2345.00;
 DBMS_OUTPUT.PUT_LINE(E_NAME||'-'||E_SAL);
 END;
 /
--Variable initialized using Select.

SET SERVEROUTPUT ON;
DECLARE 
 E_NAME VARCHAR2(15);
 E_SAL NUMBER(6,2);
 
BEGIN 
  SELECT ENAME, SAL INTO E_NAME, E_SAL FROM EMP WHERE EMPNO=7000;
 DBMS_OUTPUT.PUT_LINE(E_NAME||'-'||E_SAL);
 
 EXCEPTION 
 WHEN NO_DATA_FOUND THEN 
 DBMS_OUTPUT.PUT_LINE('This Employee No - 7000 doesnot exist');
 END;
 /
 
 --Anchor Data Type
 
SET SERVEROUTPUT ON;
DECLARE
v_fname EMP.ENAME%TYPE;
BEGIN
SELECT ENAME INTO v_fname FROM EMP WHERE EMPNO=7645;
DBMS_OUTPUT.PUT_LINE (v_fname);
END;

--DECLARING CONSTANT. 

SET SERVEROUTPUT ON;
DECLARE 
  E_NAME  CONSTANT VARCHAR2(15) :='MANOJ';
  
  BEGIN 
  DBMS_OUTPUT.PUT_LINE(E_NAME);
  END;
  /
  
--CONSTANT with DEAFULT Value. 

SET SERVEROUTPUT ON;
DECLARE 
  E_NAME  CONSTANT VARCHAR2(15) DEFAULT 'MANOJ';
  
  BEGIN 
  DBMS_OUTPUT.PUT_LINE(E_NAME);
  END;
  
--CONSTANT with NOT NULL.

SET SERVEROUTPUT ON;
DECLARE 
  E_NAME  CONSTANT VARCHAR2(15) NOT NULL DEFAULT 'MANOJ';
  
  BEGIN 
  DBMS_OUTPUT.PUT_LINE(E_NAME);
  END;

--BIND Variable 

VARIABLE v_bind1 VARCHAR2 (10);

/*
Execute the below command and that will show you the list of all the bind variables that you
have declared in your session.
*/

VARIABLE;

--Execution of below command will show you the definition of bind variable v_bind2.

Variable v_bind2;

--Execution of bind variable

Exec :v_bind1 := 'Informatica University ';

/*
This statement starts with keyword "Exec" which is the starting 4 alphabets of Keyword Execute.
You can either write whole keyword "Execute" or just the starting 4 alphabets “Exec” both will
work fine. This is followed by the name of our bind variable which is v_bind1. After that we
have assignment operator followed by the string Informatica University , as it’s a string thus it’s
enclosed in single quotes */

--Initialize the bind variable by explicitly writing execution section of PL/SQL block.

SET SERVEROUTPUT ON;
BEGIN
:v_bind1 := 'MANOJ KUMAR';
END;
/

--Referencing the Bind Variable
/*
Manoj why did you put the colon sign (:) before the name of bind variable (:v_bind1) while
initializing it? Glad you asked.
*/
--ANS
/*
Unlike user variables which you can access simply by writing their name in your code, you use
colon before the name of bind variable to access them or in other words you can reference bind
variable in PL/SQL by using a colon (:) followed immediately by the name of the variable as I
did in the previous section.
*/


--Display The Current Value of Bind variable.
/*There are 3 ways of displaying the value held by bind variable in PL/SQL or say in Oracle
Database.
1. Using DBMS OUTPUT package.
2. Using Print command
3. Setting Autoprint parameter on
*/

--Using DBMS OUTPUT package.

BEGIN
:v_bind1 := 'RebellionRider';
DBMS_OUTPUT.PUT_LINE(:v_bind1);
END;
/

--Using Print command.

Print :v_bind1;
--or
Print v_bind1;

--Setting Autoprint paramaeter ON.

SET AUTOPRINT ON;
