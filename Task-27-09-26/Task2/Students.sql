
select department, avg(marks) as average_marks from Students
group by department;

select department, avg(marks) as average_marks from Students
group by department
having avg(marks) > 75;

select department, max(marks) as highest_marks from Students
group by department;

select department, count(*) as student_count from Students
group by department;

select department, count(*) as student_count from Students
group by department
having count(*) > 5;

select department, avg(marks) as average_marks from Students
group by department
order by average_marks desc;

select department, avg(marks) as average_marks from Students
group by department
order by average_marks desc
limit 3;

select department, avg(marks) as average_marks from Students
group by department
having avg(marks) between 70 and 90;

select department, sum(marks) as total_marks from Students
group by department;

select department, count(*) as student_count from Students
group by department
order by student_count desc;

select department, min(marks) as lowest_marks from Students
group by department;

select department, max(marks) as highest_marks from Students
group by department
having max(marks) > 90;

select department, count(*) as student_count from Students
where marks > 80
group by department;

select department, count(*) as student_count from Students
where marks > 75
group by department
having count(*) > 3;

select department, max(marks) as highest_marks from Students
group by department
order by highest_marks desc;