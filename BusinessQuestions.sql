#Which specific kind of businesses contribute the most to total sales, 

#and how does their performance vary across industries?

SELECT
    kind_of_business,
    industry,
    SUM(sales) AS total_sales
FROM
    retail_sales
GROUP BY
    kind_of_business,
    industry
ORDER BY
    total_sales DESC;
    
    
   # 6) Is there any seasonality in sales
  # for specific industries, and how do they perform month-over-month?
SELECT
    industry,
	year,
    month,
    SUM(sales) AS total_sales
FROM
    retail_sales
GROUP BY
	year,
    industry,
    month
ORDER BY
	year,
    industry,
    month;
    
    
    # How does the sales distribution vary among 
    #industries based on their North American Industry Classification
    #System (NAICS) codes?
SELECT
    naics_code,
    industry,
    SUM(sales) AS total_sales
FROM
    retail_sales
GROUP BY
    naics_code,
    industry
ORDER BY
    naics_code,
    total_sales DESC


    
    
    
    
    
    
