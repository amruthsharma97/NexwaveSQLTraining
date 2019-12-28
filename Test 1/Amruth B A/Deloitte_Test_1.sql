--4.	Write An SQL Query To Fetch “FIRST_NAME” From Worker Table Using The Alias Name As <WORKER_NAME>.
select first_name WORKER_NAME from worker;

--5.	Write An SQL Query To Fetch “FIRST_NAME” From Worker Table In Upper Case.

select upper(first_name) WORKER_NAME from worker;

--6.	Write An SQL Query To Fetch Unique Values Of DEPARTMENT From Worker Table.

select distinct(department) from worker;

--7.	Write An SQL Query To Find The Position Of The Alphabet (‘A’) In The First Name Column ‘Amitabh’ From Worker Table.
SELECT
    first_name,INSTR(first_name,'A') CHAR_POSITION
FROM worker where first_name='Amitabh';

--8.	Write An SQL Query To Print The First Three Characters Of  FIRST_NAME From Worker Table.
SELECT
    substr(first_name,1,3) FIR_THREE_CHAR
FROM worker;

--9.	Write An SQL Query To Print The FIRST_NAME From Worker Table After Removing White Spaces From The Right Side.
SELECT
    RTRIM(first_name) FNAME_AFTER_RTRIM
FROM worker;

--10.	Write An SQL Query To Print The DEPARTMENT From Worker Table After Removing White Spaces From The Left Side.
SELECT
    LTRIM(department) DEPT_AFTER_LTRIM
FROM worker;

--11.	Write An SQL Query That Fetches The Unique Values Of DEPARTMENT From Worker Table And Prints Its Length.
select distinct(department),length(trim(department)) from worker;

--12.	Write An SQL Query To Print The FIRST_NAME From Worker Table After Replacing ‘A’ With ‘a’.
select replace(first_name,'A','a') REPLACED_FIRST_NAME from worker;


/*13.	Write An SQL Query To Print The FIRST_NAME And LAST_NAME From Worker Table Into A Single Column COMPLETE_NAME. 
A Space Char Should Separate Them.*/
select trim(first_name)||' '||trim(last_name) COMPLETE_NAME from worker;


--14.	Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending.
select * from worker order by first_name;

--15.	Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending And DEPARTMENT Descending.
select * from worker order by department desc,first_name asc;

--16.	Write An SQL Query To Print Details For Workers With The First Name As “Vipul” And “Satish” From Worker Table.
SELECT
    *
FROM worker where first_name in('Vipul','Satish');

--17.	Write An SQL Query To Print Details Of Workers Excluding First Names, “Vipul” And “Satish” From Worker Table.
SELECT
    *
FROM worker where first_name not in('Vipul','Satish');


--18.	Write An SQL Query To Print Details Of Workers With DEPARTMENT Name As “Admin”.
SELECT
    *
FROM worker where department='Admin';


--19.	Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Contains ‘A’.
SELECT
    *
FROM worker where upper(first_name) like '%A%';

--20.	Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘A’.
SELECT
    *
FROM worker where upper(trim(first_name)) like '%A';

--21.	Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘H’ And Contains Six Alphabets.
SELECT
    *
FROM worker where upper(trim(first_name)) like '%H' and length(trim(first_name))=6;

