
#What is the cont
#ribution percentage of each business in the automotive industry this year?
WITH automotive_sales AS (
    SELECT
        kind_of_business,
        SUM(sales) AS total_sales
    FROM
        retail_sales
    WHERE
        industry = 'Automotive' AND
        year = 2022  
    GROUP BY
        kind_of_business
),
total_sales_automotive AS (
    SELECT
        SUM(sales) AS total_sales_automotive
    FROM
        retail_sales
    WHERE
        industry = 'Automotive' AND
        year = 2022
)
SELECT
    kind_of_business,
    ROUND((total_sales / total_sales_automotive.total_sales_automotive) * 100, 2) AS contribution_percentage
FROM
    automotive_sales
CROSS JOIN
    total_sales_automotive;
