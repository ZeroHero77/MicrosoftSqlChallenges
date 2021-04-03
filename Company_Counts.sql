select company.company_code, company.founder
, count(distinct lead_manager.lead_manager_code)
, count(distinct senior_manager.senior_manager_code)
, count(distinct manager.manager_code)
, count(distinct employee.employee_code)
from company as company
left join lead_manager as lead_manager
on Lead_manager.company_code = company.company_code
left join senior_manager as senior_manager
on Lead_manager.lead_manager_code = senior_manager.lead_manager_code
left join manager as manager
on senior_manager.senior_manager_code = manager.senior_manager_code
left join employee as employee
on manager.manager_code = employee.manager_code
group by company.company_code, company.founder
order by company.company_code;
