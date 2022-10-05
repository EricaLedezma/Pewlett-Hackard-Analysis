SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.end_date
-- INTO retirement_titles
FROM employees as e
INNER JOIN Titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.end_date = ('9999-01-01')
ORDER BY emp_no, end_date DESC;


-- Number of employees by their most recent job title who are about to retire
Select COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count desc;


-- MENTORSHIP ELIGIBILITY
SELECT DISTINCT ON (emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.end_date,
ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
on (e.emp_no = ti.emp_no)
WHERE de.end_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

-- MENTORSHIP ELIGIBILITY - BROADENED to 2 YEARS 64-65
SELECT DISTINCT ON (emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.end_date,
ti.title
-- INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
on (e.emp_no = ti.emp_no)
WHERE de.end_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1964-01-01' AND '1965-12-31')
ORDER BY emp_no;
