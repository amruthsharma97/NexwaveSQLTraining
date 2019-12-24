CREATE TABLE tblCountries (COUNTRY_ID CHAR(2), COUNTRY_NAME VARCHAR(40), REGION_ID INT) ;
CREATE TABLE tblDepartments (DEPARTMENT_ID INT, DEPARTMENT_NAME VARCHAR(30), MANAGER_ID INT, LOCATION_ID INT) ;
CREATE TABLE tblEmployees (EMPLOYEE_ID INT, FIRST_NAME VARCHAR(20), LAST_NAME VARCHAR(25), EMAIL VARCHAR(25), PHONE_NUMBER VARCHAR(20), HIRE_DATE DATE, JOB_ID VARCHAR(10), SALARY DECIMAL(8,2), COMMISSION_PCT DECIMAL(2,2), MANAGER_ID INT, DEPARTMENT_ID INT) ;
CREATE TABLE tblJobs (JOB_ID VARCHAR(10), JOB_TITLE VARCHAR(35), MIN_SALARY DECIMAL(6,0), MAX_SALARY DECIMAL(6,0)) ;
CREATE TABLE tblJob_history (EMPLOYEE_ID INT, START_DATE DATE, END_DATE DATE, JOB_ID VARCHAR(10), DEPARTMENT_ID INT); 
CREATE TABLE tblLocations (LOCATION_ID INT, STREET_ADDRESS VARCHAR(40), POSTAL_CODE VARCHAR(12), CITY VARCHAR(30), STATE_PROVINCE VARCHAR(25), COUNTRY_ID CHAR(2)) ;
CREATE TABLE tblRegions (REGION_ID INT, REGION_NAME VARCHAR(25));
---Departments
Insert into tblDepartments  values (10,'Administration',200,1700);
Insert into tblDepartments  values (20,'Marketing',201,1800);
Insert into tblDepartments  values (30,'Purchasing',114,1700);
Insert into tblDepartments  values (40,'Human Resources',203,2400);
Insert into tblDepartments values (50,'Shipping',121,1500);
Insert into tblDepartments values (60,'IT',103,1400);
Insert into tblDepartments  values (70,'Public Relations',204,1700);
Insert into tblDepartments  values (80,'Sales',145,2400);
Insert into tblDepartments values (90,'Executive',100,1700);
Insert into tblDepartments  values (100,'Finance',108,1700);
Insert into tblDepartments  values (110,'Accounting',205,1700);
Insert into tblDepartments  values (120,'Treasury',null,1700);
Insert into tblDepartments  values (130,'Corporate Tax',null,1700);
Insert into tblDepartments values (140,'Control And Credit',null,1700);
Insert into tblDepartments  values (150,'Shareholder Services',null,1700);
Insert into tblDepartments values (160,'Benefits',null,1700);
Insert into tblDepartments  values (170,'Manufacturing',null,1700);
Insert into tblDepartments  values (180,'Construction',null,1700);
Insert into tblDepartments  values (190,'Contracting',null,1700);

----Employees

Insert into tblEmployees values (198,'Donald','OConnell','DOCONNEL','650.507.9833',('21-JUN-07'),'SH_CLERK',2600,null,124,50);
Insert into tblEmployees  values (199,'Douglas','Grant','DGRANT','650.507.9844',('13-JAN-08'),'SH_CLERK',2600,null,124,50);
Insert into tblEmployees  values (200,'Jennifer','Whalen','JWHALEN','515.123.4444',('17-SEP-03'),'AD_ASST',4400,null,101,10);
Insert into tblEmployees  values (201,'Michael','Hartstein','MHARTSTE','515.123.5555',('17-FEB-04'),'MK_MAN',13000,null,100,20);
Insert into tblEmployees  values (202,'Pat','Fay','PFAY','603.123.6666',('17-AUG-05'),'MK_REP',6000,null,201,20);
Insert into tblEmployees  values (203,'Susan','Mavris','SMAVRIS','515.123.7777',('07-JUN-02'),'HR_REP',6500,null,101,40);
Insert into tblEmployees  values (204,'Hermann','Baer','HBAER','515.123.8888',('07-JUN-02'),'PR_REP',10000,null,101,70);
Insert into tblEmployees  values (205,'Shelley','Higgins','SHIGGINS','515.123.8080',('07-JUN-02'),'AC_MGR',12008,null,101,110);
Insert into tblEmployees  values (206,'William','Gietz','WGIETZ','515.123.8181',('07-JUN-02'),'AC_ACCOUNT',8300,null,205,110);
Insert into tblEmployees  values (100,'Steven','King','SKING','515.123.4567',('17-JUN-03'),'AD_PRES',24000,null,null,90);
Insert into tblEmployees  values (101,'Neena','Kochhar','NKOCHHAR','515.123.4568',('21-SEP-05'),'AD_VP',17000,null,100,90);
Insert into tblEmployees  values (102,'Lex','De Haan','LDEHAAN','515.123.4569',('13-JAN-01'),'AD_VP',17000,null,100,90);
Insert into tblEmployees  values (103,'Alexander','Hunold','AHUNOLD','590.423.4567',('03-JAN-06'),'IT_PROG',9000,null,102,60);
Insert into tblEmployees  values (104,'Bruce','Ernst','BERNST','590.423.4568',('21-MAY-07'),'IT_PROG',6000,null,103,60);
Insert into tblEmployees  values (105,'David','Austin','DAUSTIN','590.423.4569',('25-JUN-05'),'IT_PROG',4800,null,103,60);
Insert into tblEmployees values (106,'Valli','Pataballa','VPATABAL','590.423.4560',('05-FEB-06'),'IT_PROG',4800,null,103,60);
Insert into tblEmployees  values (107,'Diana','Lorentz','DLORENTZ','590.423.5567',('07-FEB-07'),'IT_PROG',4200,null,103,60);
Insert into tblEmployees values (108,'Nancy','Greenberg','NGREENBE','515.124.4569',('17-AUG-02'),'FI_MGR',12008,null,101,100);
Insert into tblEmployees values (109,'Daniel','Faviet','DFAVIET','515.124.4169',('16-AUG-02'),'FI_ACCOUNT',9000,null,108,100);
Insert into tblEmployees values (110,'John','Chen','JCHEN','515.124.4269',('28-SEP-05'),'FI_ACCOUNT',8200,null,108,100);
Insert into tblEmployees values (111,'Ismael','Sciarra','ISCIARRA','515.124.4369',('30-SEP-05'),'FI_ACCOUNT',7700,null,108,100);
Insert into tblEmployees  values (112,'Jose Manuel','Urman','JMURMAN','515.124.4469',('07-MAR-06'),'FI_ACCOUNT',7800,null,108,100);
Insert into tblEmployees  values (113,'Luis','Popp','LPOPP','515.124.4567',('07-DEC-07'),'FI_ACCOUNT',6900,null,108,100);
----Countries 
Insert into tblCountries  values ('AR','Argentina',2);
Insert into tblCountries  values ('AU','Australia',5);
Insert into tblCountries values ('BE','Belgium',1);
Insert into tblCountries values ('BR','Brazil',2);
Insert into tblCountries values ('CA','Canada',2);
Insert into tblCountries values ('CH','Switzerland',1);
Insert into tblCountries values ('CN','China',3);
Insert into tblCountries values ('DE','Germany',1);
Insert into tblCountries values ('IN','India',3);
Insert into tblCountries values ('US','United States',2);
Insert Into tblCountries values ('UK','United Kingdom',1);
Insert into tblCountries values ('SG','Singapore',3);
Insert into tblCountries values ('JP', 'Japan',3);
Insert into tblCountries values ('IT','Itly',1);

----Locations
Insert into tblLocations  values (1000,'1297 Via Cola di Rie','00989','Roma',null,'IT');
Insert into tblLocations values (1100,'93091 Calle della Testa','10934','Venice',null,'IT');
Insert into tblLocations values (1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP');
Insert into tblLocations  values (1300,'9450 Kamiya-cho','6823','Hiroshima',null,'JP');
Insert into tblLocations  values (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
Insert into tblLocations values (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
Insert into tblLocations  values (1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US');
Insert into tblLocations  values (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
Insert into tblLocations  values (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
Insert into tblLocations  values (1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA');
Insert into tblLocations  values (2000,'40-5-12 Laogianggen','190518','Beijing',null,'CN');
Insert into tblLocations  values (2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN');
Insert into tblLocations  values (2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU');
Insert into tblLocations  values (2300,'198 Clementi North','540198','Singapore',null,'SG');
Insert into tblLocations  values (2400,'8204 Arthur St',null,'London',null,'UK');

---Regions
Insert into tblRegions (REGION_ID,REGION_NAME) values (1,'Europe');
Insert into tblRegions (REGION_ID,REGION_NAME) values (2,'Americas');
Insert into tblRegions (REGION_ID,REGION_NAME) values (3,'Asia');
Insert into tblRegions (REGION_ID,REGION_NAME) values (4,'Middle East and Africa');
Insert into tblRegions (Region_id,Region_name) values(5,'Australia');