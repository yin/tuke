select first_name, last_name
from hr.employees
where department_id is null;

-- 7
select employee_id, job_id, end_date-start_date as duration
from hr.job_history
order by employee_id;

-- 8
select spz, typ
from auto
where spz like 'KE%'
and typ in ('o', 'O');

-- 9
select spz, rok_vyroby
from auto
where rok_vyroby between '1-jan-1991' and '31-dec-1991'
order by rok_vyroby desc;

-- 10
select nazov_sluzby, cena_sluzby
from sluzba
where cena_sluzby between 10 and 100
order by cena_sluzby asc;

-- 11
select distinct auto_id
from asz;
