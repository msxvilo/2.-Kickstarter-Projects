/*
3. What is the average pledged amount for successful projects in each category?
- Focus only on successful projects.
- Calculate the average amount of pledged funding for each category.
*/

SELECT 
    category,
    ROUND(AVG(pledged),2) AS avg_pleged
FROM 
    kickstarter_projects
WHERE state = 'successful'
GROUP BY category;

