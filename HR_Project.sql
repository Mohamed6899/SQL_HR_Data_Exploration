--Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
select * 
	from Employees 
		where JOB_ID in (select JOB_IDENT from Jobs )
--Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.
select * 
	from EMPLOYEES 
		where JOB_ID IN (select JOB_IDENT from JOBS where JOB_TITLE= 'Jr. Designer')
--Retrieve JOB information and who earn more than $70,000.
select * 
	from Jobs 
		where JOB_IDENT in (select job_id from Employees where SALARY > 70000)
--Retrieve JOB information and list of employees whose birth year is after 1976.
select *
	from Jobs 
		where JOB_IDENT in (select job_ID from Employees where year(B_DATE) > '1976')
--Retrieve JOB information and list of female employees whose birth year is after 1976.
select * 
	from Jobs 
		where JOB_IDENT in (select job_id from Employees where sex like '%f' and YEAR(B_DATE) > '1976')
--Perform an implicit cartesian/ (Full) cross join between EMPLOYEES and JOBS tables.
select * 
	from 
	Employees , Jobs
--Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
select 
	F_name 
		from 
		Employees , Jobs 
			where Employees.JOB_ID = Jobs.JOB_IDENT
--Redo the previous query, using shorter aliases for table names.
select 
	F_name 
		from 
		Employees E , Jobs J 
			where E.JOB_ID = J.JOB_IDENT
--Redo the previous query, but retrieve only the Employee ID, Employee Name and Job Title.
select 
	EMP_ID , 
	F_NAME , 
	L_NAME , 
	job_title 
		from 
		Employees E , Jobs J 
			where E.JOB_ID = J.JOB_IDENT
--Redo the previous query, but specify the fully qualified column names with aliases in the SELECT clause.
SELECT 
	E.EMP_ID , 
	E.F_NAME ,
	E.L_NAME ,
	J.jOB_TITLE 
		FROM 
		Employees E , Jobs J 
			WHERE JOB_ID = JOB_IDENT