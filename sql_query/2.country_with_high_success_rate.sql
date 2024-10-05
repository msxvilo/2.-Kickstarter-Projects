/*
2. Which country had the highest number of successful projects?
- Query the number of successful projects per country.
- Find the country with the highest count
*/

SELECT 
    COUNT(*) AS counted,
    country
FROM 
    kickstarter_projects
GROUP BY 
    country
ORDER BY
    counted DESC;