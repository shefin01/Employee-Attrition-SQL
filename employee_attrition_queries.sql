create database Employee;
use Employee;
#understanding the data
describe employee_attirtion;
select * from employee_attirtion limit 5;
#modifing employeeid to became primary key
alter table employee_attirtion modify EmployeeID int primary key;
#checking if there is a any duplicates
select count(*) from employee_attirtion;
/* there is 1676 datas and no duplicates*/
select distinct count(*) from employee_attirtion;
select age_category,count(*) from employee_attirtion group by age_category;
select min(age) from employee_attirtion;
select max(age) from employee_attirtion;
select gender,count(*) as count from employee_attirtion group by gender;
select gender,avg(age) as Average_age from employee_attirtion group by gender;
select Attrition,avg(Dailyrate) as Average_Dailyrate from employee_attirtion group by Attrition;
select Age_category,count(*) from employee_attirtion where attrition='yes' group by Age_category order by count(*);
select Age_category,count(*)as count from employee_attirtion group by Age_category order by count(*);
select businesstravel,count(*)as male_count from employee_attirtion where gender="male" and attrition ='yes' group by businesstravel;
select businesstravel,count(*)as female_count from employee_attirtion where gender="female" and attrition ='yes' group by businesstravel;
 select gender,count(*) from employee_attirtion where attrition='Yes' group by gender;
select department,count(*) from employee_attirtion group by department; 
select jobrole,count(*) from employee_attirtion group by jobrole; 
select attrition,count(*) from employee_attirtion group by attrition;
select gender,count(*) from employee_attirtion where attrition="no" group by gender;
select gender,count(*) from employee_attirtion where attrition="yes" group by gender;
alter table employee_attirtion add column salary_category text after monthlyincome;
update employee_attirtion set salary_category= case when monthlyincome<5000 then 'Low salary' when monthlyincome>=5000 and monthlyincome<=10000 then 'Average salary' else 'High salary' end;
select salary_category,count(*)as count from employee_attirtion group by salary_category; 
select Gender,avg(MonthlyIncome) as AverageMonthlyIncome,min(MonthlyIncome) as MinMonthlyIncome,max(MonthlyIncome) as MaxMonthlyIncome
from Employee_attirtion group by Gender order by AverageMonthlyIncome desc;
select salary_category ,count(attrition) as count from employee_attirtion where attrition='Yes' group by salary_category;
select salary_category, count(*) as male_count from employee_attirtion where attrition='Yes'and gender='Male' group by salary_category; 
select salary_category ,count(*) as female_count from employee_attirtion where attrition='Yes'and gender='Female' group by salary_category;  
select PercentSalaryHike,count(*) from employee_attirtion where attrition="yes" group by PercentSalaryHike order by count(*) desc limit 4;
select PercentSalaryHike,count(*) from employee_attirtion where attrition="yes" group by PercentSalaryHike order by count(*) limit 4;
select Department,avg(JobSatisfaction) as AverageJobSatisfaction,count(EmployeeID) as TotalEmployees from Employee_attirtion group by Department order by AverageJobSatisfaction desc;
select JobRole,sum(MonthlyIncome) as TotalAttritionCost from Employee_attirtion where Attrition = 'Yes' group by JobRole order by TotalAttritionCost desc;
select department,count(attrition) as num_left from employee_attirtion where attrition='Yes' group by department;
select attrition,avg(jobsatisfaction) from employee_attirtion group by attrition;
select JobRole,Department,gender,AVG(MonthlyIncome) as AverageMonthlyIncome,MIN(MonthlyIncome) as MinMonthlyIncome,MAX(MonthlyIncome) as MaxMonthlyIncome from Employee_attirtion 
group by JobRole, Department,gender order by AverageMonthlyIncome desc;
select max(age) from employee_attirtion;
select age,count(*) from employee_attirtion group by age order by count(*);
select avg(age) from employee_attirtion;
alter table employee_attirtion add column Age_category text after Age;
update employee_attirtion set Age_category=case when Age between 16 and 24 then "Young Workers" when age between 25 and 34 then "Early Career" 
when age between 35 and  44 then "Mid-career" when age between 45 and 54 then "Established Career" else "Late Career" end;
select attrition,count(*) from employee_attirtion group by attrition order by count(*);
select PercentSalaryHike,count(*) from employee_attirtion where attrition="yes" group by PercentSalaryHike order by count(*) desc;
select PercentSalaryHike,jobrole,gender,count(*) from employee_attirtion where attrition="yes" group by PercentSalaryHike,jobrole,gender order by count(*) desc;
select EnvironmentSatisfaction,count(*) from employee_attirtion where attrition="yes" group by EnvironmentSatisfaction order by count(*);
select JobSatisfaction,count(*) from employee_attirtion where attrition="yes" group by JobSatisfaction order by count(*);
select MaritalStatus,count(*) from employee_attirtion where attrition="yes" group by MaritalStatus order by count(*);
select OverTime,count(*) from employee_attirtion where attrition="yes" group by OverTime order by count(*);
select RelationshipSatisfaction,count(*) from employee_attirtion where attrition="yes" group by RelationshipSatisfaction order by count(*);
select WorkLifeBalance,count(*) from employee_attirtion where attrition="yes" group by WorkLifeBalance order by count(*);
select Department,count(*) from employee_attirtion where attrition="yes" group by Department order by count(*);
select Department,EnvironmentSatisfaction,count(*) from employee_attirtion where attrition="yes" group by Department,EnvironmentSatisfaction order by count(*) desc;
select educationfield,jobrole,count(*) from employee_attirtion group by educationfield,jobrole order by count(*) desc;
select * from employee_attirtion where attrition="yes";
call dummy('female');
call gender_attirtion('female','YES');
select dailyrate(48);
select * from att_shike;
