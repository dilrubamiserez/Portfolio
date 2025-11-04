#What is the month-over-month growth rate of women’s 
#clothing businesses in 2022?
 
 
 
SELECT
	 month,
     sales  AS current_sales,
     LAG(sales,1) OVER(ORDER BY month)  AS prev_sales,
     (sales-lAG(sales,1) OVER (ORDER BY month))/ (LAG(sales,1) OVER(ORDER BY month) * 100)  AS MoM
     FROM retail_sales
WHERE
    kind_of_business = 'Women\'s clothing stores'
    AND year = 2022;
    

