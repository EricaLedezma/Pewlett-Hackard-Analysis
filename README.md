# Pewlett-Hackard-Analysis

## Overview

Pewlett-Hackard has a large number of employess that will be reaching retirement age. The company has tasked us to analyze the total number of employess that could potentially retire and how that number will affect each department, level, and position. This mass exodus has been referred to as the "silver tsunami".

To reduce the impact, they have created a mentorship program for these employees that are close to retiring. With the mentorship program, the experienced and successful employees would step back into a part-time role instead of retiring completely. Their new role in the company would be as mentor to the newly hired employees.

The purpose of this analysis is to determing how many employees per job title will be retiring and then identify how many will be eligible to participate in the mentorship program.

## Results
- We first narrowed our data down to all employees that are within retirement age: those born between 1952 - 1955. 
  - There are 133,776 employees that will be retiring based on age. 

- From this, we noticed there were duplicates (job title changes). We removed duplicates, leaving only the employees most current job title. We also removed employees no longer with the company.
  - The actual number of employees that will be retiring based on age is 72,458. 

- We wanted to see how the new total was dispersed to job titles. Here is how many employees will be retiring per job title:

  ![image](https://user-images.githubusercontent.com/111028230/193948858-d5d8977a-9ae7-44cc-9c74-2ebf0e5a45f5.png)

- For the mentorship, to be eligible, the employees needed to still have 10 work years left: employees born in the year 1965. 
  - There are 1,549 employess eligible for the mentorship program.

## Summary
Based on the data, the number of employees eligible for the mentorship program (1,549) compared to the total number of employees retiring (72,458) is quite small. If we created a new query that broadened the age of eligibility year from 1965 to 1964-1965, that increases the number of employess eligible to 19,905. This number leaves a lot more options for the program to make sure all departments are covered sufficiently. Since we cannot guarantee that all 1,549 employees will participate in the program, extending it by one year makes a larger pool of employees eligible. 
