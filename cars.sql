use used_car_prediction;
# Question: Find the total number of cars sold and the average price for each Brand, ordered by the highest average price.
SELECT 
    Brand,
    COUNT(*) AS total_cars,
    ROUND(AVG(Price), 2) AS avg_price
FROM cars
GROUP BY Brand
ORDER BY avg_price DESC;
# Question: Identify fuel types that have an average mileage (Mileage_kmpl) greater than 18 kmpl and at least 50,000 listed cars.
SELECT 
    Fuel_Type,
    ROUND(AVG(Mileage_kmpl), 2) AS avg_mileage,
    COUNT(*) AS car_count
FROM cars
GROUP BY Fuel_Type
HAVING AVG(Mileage_kmpl) > 18 AND COUNT(*) >= 50000;
# Question: Classify cars into three risk levels based on accident history: 'No Risk' (0 accidents), 'Low Risk' (1–2 accidents), and 'High Risk' (>2 accidents). Calculate the total count and average price for each category.
SELECT 
    CASE 
        WHEN Accidents = 0 THEN 'No Risk'
        WHEN Accidents IN (1, 2) THEN 'Low Risk'
        ELSE 'High Risk'
    END AS risk_category,
    COUNT(*) AS total_cars,
    ROUND(AVG(Price), 2) AS avg_price
FROM cars
GROUP BY 
    CASE 
        WHEN Accidents = 0 THEN 'No Risk'
        WHEN Accidents IN (1, 2) THEN 'Low Risk'
        ELSE 'High Risk'
    END;
# Question: Find the top 2 most expensive cars for every Brand.
WITH RankedCars AS (
    SELECT 
        Brand,
        Model,
        Price,
        Registration_Age,
        ROW_NUMBER() OVER (PARTITION BY Brand ORDER BY Price DESC) AS rank_num
    FROM cars
)
SELECT 
    Brand,
    Model,
    Price,
    Registration_Age
FROM RankedCars
WHERE rank_num <= 2;    
# Question: Rank the cities based on total cars available, assigning ranks without skipping numbers in case of ties.
WITH CityCounts AS (
    SELECT 
        City,
        COUNT(*) AS car_count
    FROM cars
    WHERE City IS NOT NULL
    GROUP BY City
)
SELECT 
    City,
    car_count,
    DENSE_RANK() OVER (ORDER BY car_count DESC) AS city_rank
FROM CityCounts;
# Question: Using a CTE, find all brands whose average horsepower is higher than the overall average horsepower across all vehicles.
WITH OverallAvgHP AS (
    SELECT AVG(Horsepower) AS global_avg_hp
    FROM cars
),
BrandAvgHP AS (
    SELECT 
        Brand,
        AVG(Horsepower) AS brand_avg_hp
    FROM cars
    GROUP BY Brand
)
SELECT 
    b.Brand,
    ROUND(b.brand_avg_hp, 2) AS brand_avg_hp,
    ROUND(o.global_avg_hp, 2) AS overall_avg_hp
FROM BrandAvgHP b
CROSS JOIN OverallAvgHP o
WHERE b.brand_avg_hp > o.global_avg_hp;
# Question: For each car, show its Model, Price, and compare its price against the average price of cars in the same City by calculating the difference.
SELECT 
    Model,
    City,
    Price,
    ROUND(AVG(Price) OVER (PARTITION BY City), 2) AS city_avg_price,
    ROUND(Price - AVG(Price) OVER (PARTITION BY City), 2) AS price_difference
FROM  cars;
# Question: Find models where the automatic transmission variant has a higher average price than the manual transmission variant for the same model.
WITH TransmissionPrices AS (
    SELECT 
        Model,
        AVG(CASE WHEN Transmission = 'Automatic' THEN Price END) AS avg_auto_price,
        AVG(CASE WHEN Transmission = 'Manual' THEN Price END) AS avg_manual_price
    FROM cars
    GROUP BY Model
)
SELECT 
    Model,
    ROUND(avg_auto_price, 2) AS avg_auto_price,
    ROUND(avg_manual_price, 2) AS avg_manual_price
FROM TransmissionPrices
WHERE avg_auto_price > avg_manual_price;
# Question: Segment cars into 4 price quartiles (Buckets 1 to 4) within each Owner_Type category to analyze price distribution.
SELECT 
    Owner_Type,
    Model,
    Price,
    NTILE(4) OVER (PARTITION BY Owner_Type ORDER BY Price DESC) AS price_quartile
FROM cars;
# Question: Write a query that computes missing value counts for key numeric columns (Mileage_kmpl, Engine_CC, Horsepower) and displays them side-by-side in a summary format.
WITH MissingMileage AS (
    SELECT COUNT(*) AS missing_mileage FROM cars WHERE Mileage_kmpl IS NULL
),
MissingEngine AS (
    SELECT COUNT(*) AS missing_engine FROM cars WHERE Engine_CC IS NULL
),
MissingHP AS (
    SELECT COUNT(*) AS missing_hp FROM cars WHERE Horsepower IS NULL
)
SELECT 
    m.missing_mileage,
    e.missing_engine,
    h.missing_hp
FROM MissingMileage m
CROSS JOIN MissingEngine e
CROSS JOIN MissingHP h;