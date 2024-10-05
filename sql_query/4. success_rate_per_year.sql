/*
4. What is the success rate of projects launched in different years?
- Extract the year from the launch date and group the projects by year.
- Calculate the success rate for each year.
*/

SELECT
    EXTRACT(YEAR FROM launched) AS year_lunched,
    COUNT(*) AS total_project,
    SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) AS successful_projects,
    ROUND((SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) * 100 / COUNT(*)), 0) AS success_rate
FROM 
    kickstarter_projects
GROUP BY
    year_lunched
ORDER BY
    year_lunched;
