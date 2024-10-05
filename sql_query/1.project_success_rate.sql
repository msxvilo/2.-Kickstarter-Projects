/*
1. What percentage of projects in each category were successful?
- Start by calculating the total number of projects and the successful ones for each category.
- Then, calculate the success rate.
*/

-- Calculation with CTE's
WITH total_attempt_by_category AS (
    SELECT 
        count(name) AS total_attempts,
        category
    FROM 
        kickstarter_projects
    GROUP BY category
), successful_try AS (
    SELECT 
        count(name) AS successful_attempts,
        category
    FROM 
        kickstarter_projects
    WHERE state = 'successful'
    GROUP BY category
)

SELECT 
    ta.category,
    ta.total_attempts,
    successful_attempts,
    ROUND(((st.successful_attempts * 100.0) / ta.total_attempts),0) AS success_rate  
FROM 
    total_attempt_by_category ta
JOIN 
    successful_try st ON ta.category = st.category
ORDER BY success_rate DESC;



-- Calculation with subquery
SELECT 
    category, 
    COUNT(*) AS total_projects, 
    SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) AS successful_projects,
    ROUND((SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 0) AS success_rate_percentage
FROM 
    kickstarter_projects
GROUP BY 
    category
ORDER BY 
    success_rate_percentage DESC;