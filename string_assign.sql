use hr;

-- Write a query to display the FIRST_NAME and LAST_NAME concatenated as Full Name for all employees.

select concat(first_name," ",last_name) from employees;

-- Write a query to display the FIRST_NAME in lowercase and the LAST_NAME in uppercase for all employees.

select concat(lower(first_name)," ",upper(last_name)) from employees;

-- Write a query to display the COUNTRY_NAME of all countries in uppercase.

select upper(country_name) from countries;

-- Write a query to display the FIRST_NAME and the length of the first name for all employees

select length(first_name) from employees;

-- Write a query to display the EMAIL and the length of the email address for employees whose email length is greater than 10

select email, length(email) from employees;

-- Write a query to extract the first three characters from the FIRST_NAME of all employees.
select substring(first_name,1,3) from employees;

-- Write a query to extract the last four characters of the PHONE_NUMBER for all employees.
 select substring(phone_number,-4,4) from employees;

-- Write a query to find the position of the letter 'a' in the LAST_NAME of all employees

select last_name from employees
where last_name like "%a";

-- Write a query to find the position of the substring 'IT' in the job title of all employees.
select job_id from employees
where job_id like "%IT%";

-- Write a query to replace all occurrences of 'a' with 'X' in the FIRST_NAME of all employees.
select first_name,replace(first_name,"a","x") from employees;


-- Write a query to replace the region name 'Europe' with 'EU' in the REGION_NAME column.

select * from regions;
select region_name,upper(substring(region_name,1,2)) from regions;

-- write a query to remove any leading and trailing spaces from the FIRST_NAME of all employees and display the cleaned-up names.
select trim(first_name) from employees;
-- Write a query to remove any trailing spaces from the CITY names of all locations.
select * from locations;
select trim(city) from locations;

-- Write a query to extract the first five characters from the EMAIL of all employees using the LEFT function.
select left(email,5) from employees;

-- Write a query to extract the last three characters from the COUNTRY_NAME of all countries using the RIGHT function.
select right(country_name,5) from countries;
-- Write a query to extract the domain (everything after '@') from the EMAIL column of all employees.
select email from employees
where email like "%@%";




SELECT 
  email,
  SUBSTRING(email, CHARINDEX('@', email) + 1, LEN(email)) AS domain
FROM employees
WHERE email LIKE '%@%';



-- Write a query to extract the country code (first part before space) from the PHONE_NUMBER of all employees

SELECT 
  CONCAT('(', SUBSTRING(phone_number, 1, 3), ')',
         SUBSTRING(phone_number, 4, 3), 
         SUBSTRING(phone_number, 7)) AS formatted_number,
  phone_number
FROM employees;



-- Write a query to compare the FIRST_NAME and LAST_NAME of employees and display 0 
-- if they are the same and a non-zero value if they are different.\

select (length(first_name)=length(last_name)) as len from employees;


-- Write a query to compare the REGION_NAME of regions and display 0 if it is 'Asia' and 1 otherwise.

select length(region_name)="Asia" from regions;

-- Write a query to display the FIRST_NAME, LAST_NAME, and JOB_TITLE concatenated 
-- as a single string, with each value separated by a hyphen (-), for all employees.

select concat(first_name,"-",last_name,"-",job_id) as info from employees;

select * from employees;

-- Write a query to extract the username (portion before @) 
-- from the EMAIL column and display it along with the FIRST_NAME for all employees.

-- Write a query to replace all occurrences of 'e' with 'E' in the LAST_NAME of employees whose LAST_NAME contains 'e'

select replace(last_name,"e","E") from employees;

-- Write a query to find the position of the first occurrence of 
-- the letter 'o' in the FIRST_NAME of employees and display the name along with the position

select * from employees;

select employee_id, first_name from employees
where left(first_name,1)="o";

-- Write a query to display the CITY name for all locations, removing any leading and trailing spaces, 
-- and also display the first three characters of the cleaned-up city name.

select left(trim(city),3)as location from locations;



-- Write a query to find employees whose LAST_NAME contains the letter 'n' and display their
-- LAST_NAME along with the position of the first occurrence of 'n'.

select concat(first_name," ",last_name) from employees
where first_name like "n%" and last_name like "%n";


-- Write a query to find the position of the letter 'a' in the FIRST_NAME for all employees. 
-- Display the employee's first name and the position of the letter 'a'.

select employee_id,locate("a",first_name) from employees;


-- Write a query to display the position of the first occurrence of 'e' in the JOB_TITLE for all jobs, and
-- display only those where the letter 'e' occurs after the 5th character.

select job_title,instr(job_title,"e") from jobs;

-- Write a query to compare the FIRST_NAME and LAST_NAME of employees and display only those employees where 
-- the first name comes alphabetically before the last nam

select first_name ,last_name from employees where first_name<last_name;

SELECT department_id, department_name 
FROM departments
WHERE FIND_IN_SET(department_name, 'IT,HR');

-- Write a query to display the FIRST_NAME and the length of the 
-- name for employees whose FIRST_NAME length is greater than 6.

select first_name ,length(first_name) from employees
where length(first_name)>6;

-- Write a query to find all countries where the COUNTRY_NAME contains
--  either 'China', 'India', or 'Japan'
select country_id,country_name from countries
where country_name in ('China', 'India', 'Japan');

-- Write a query to find all employees who have DEPARTMENT_ID present in the list (50, 60, 70)

select employee_id from employees
where department_id in (50,60,70);


--  Write a query to extract the first two characters from the 
--     COUNTRY_NAME function and the last two characters 
--     displaying them along with the full COUNTRY_NAME

select left(country_name,2),right(country_name,2),country_name from countries; 	

-- Write a query to display employees whose LAST_NAME contains 
-- the letter 'o' at a position greater than half the length of their last name.

select last_name,locate("o",last_name) ,length(last_name)  from employees
where locate("o",last_name) >length(last_name) /2;

-- Write a query to find employees whose FIRST_NAME contains the letter 'a' and the letter 'e' and display the positions of both
select locate("a",first_name),locate("e",first_name) from employees;



-- Write a query to extract the domain from the EMAIL column for
--  employees and only display employees whose domain is 'example.com'.

select email from employees
where email like "%.com%";


-- Write a query to count the number of employees who belong to department IDs 50, 60, or 70
select count(employee_id) from employees
where department_id in(50,60,70);

-- Write a query to display all COUNTRY_NAMEs from the countries table where REGION_ID is either 1 or 3 
select country_name from countries
where region_id in (1,3);


-- Write a query to find employees who either work in departments 50, 60, or 70 or have a salary greater than 10,000.

select last_name ,first_name from employees
where department_id in(50,60,70) or salary >10000;

-- Write a query to find employees whose DEPARTMENT_ID is either 50 or 60 and their MANAGER_ID is either 103 or 108.
select last_name ,first_name from employees
where department_id in(50,60) or manager_id in(103,108);


-- Write a query to display FIRST_NAME, LAST_NAME, and COUNTRY_NAME concatenated as a single string with a comma separating each.
select * from employees;
select * from countries;
select  concat(FIRST_NAME,",",LAST_NAME,",",COUNTRY_NAME) from employees e ;

-- Write a query to display the FIRST_NAME in uppercase for employees whose SALARY is greater than 8000 
-- and the LAST_NAME in lowercase for employees whose SALARY is less than 8000.

SELECT 
  CASE 
    WHEN SALARY > 8000 THEN UPPER(FIRST_NAME)
    ELSE FIRST_NAME
  END AS FIRST_NAME_DISPLAY,

  CASE 
    WHEN SALARY < 8000 THEN LOWER(LAST_NAME)
    ELSE LAST_NAME
  END AS LAST_NAME_DISPLAY,

  SALARY
FROM employees;


















































































