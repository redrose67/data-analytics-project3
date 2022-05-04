-- Final project

-- Which country has the highest rate of mortality = Lesotho
SELECT DISTINCT country, year, sum(adult_mortality) FROM final.life_expectancy_who
group by country
order by 3 desc;


-- Which year had the highest mortality in Lesotho = 2005, 675 deaths
SELECT country, year, MAX(adult_mortality) FROM final.life_expectancy_who
WHERE country = 'Lesotho'
group by year
order by 3 desc;

-- Which year had the lowest mortality in Lesotho = 2011, 52 deaths
SELECT country, year, MIN(adult_mortality) FROM final.life_expectancy_who
WHERE country = 'Lesotho'
group by year
order by 3 ASC;

-- Main factors effecting Mortality rate = % Expenditure and  hiv, 
-- positive corralation as expenditure goes up the living stadnard goes up and deaths over decreased
-- Negative correlation as death goes up life expectancy goes down
SELECT * FROM final.life_expectancy_who
Where country = 'Lesotho' and year IN (2005, 2011, 2015);




-- Which country has the most infantdeaths = India
SELECT Country,
MAX(infant_deaths) As Infantdeath
FROM final.life_expectancy_who
WHERE COUNTRY IS NOT NULL
GROUP BY COUNTRY
ORDER BY 2 DESC;

-- Why does india have the highest amount of Infant deaths
SELECT *
FROM final.life_expectancy_who
WHERE country = 'india';

-- Determain which countries have the lowest life expectancy and the courses of this   
-- From research Lesotho and Zimbabwe have the lowest life expectnacy of only 45.3. Zimbabwes main factor is measles with 529 cases reported base of a population fo a 1000 
-- correlation between life expecancy and adult deaths
-- Negative correlation between life expectanct HB and HIV for Lesotho- Zimbabwe = measles
SELECT  distinct country, life_expectancy, alcohol, hepatitis_B, measles, BMI, diphtheria, HIV_AIDS, thinness_5_to_9_years, thinness_1_to_19_years AS 'life expectancy factors' FROM final.life_expectancy_who
WHERE life_expectancy = 45.3 and  hepatitis_B > 0 and measles > 0
group by country;


-- Has life expectancy improved over the years in Lesotho

  SELECT country,  year, life_expectancy  from final.life_expectancy_who
  Where country = 'Lesotho'; 
  
  -- What is the impact of immunixation coverage on life expectancy = population - life expectancy
  
  SELECT population,  MAX(life_expectancy)  from final.life_expectancy_who
  group by population
  ORDER BY 2 DESC; 
  
  -- what is the impact of schooling on the lifespan of humans - life expectancy is higher with those who had more years of schooling 
   
  SELECT schooling,  life_expectancy from final.life_expectancy_who
  group by population
  ORDER BY 1 DESC; 
  
   
-- How many years from 2000 - 2015 has Zimbabwe had expenadture 
-- 5 years of no expenitures

SELECT country,  count(percentage_expenditure)  FROM final.life_expectancy_who
WHERE percentage_expenditure > 0 AND country = 'Zimbabwe'
group by country;



SELECT  BMI,
CASE 
WHEN bmi < 18.5 then 'underweight'
WHEN bmi BETWEEN 18.5 and 24.9 then 'healthy weight'
WHEN bmi BETWEEN 25 and 29.9 then 'over weight'
WHEN bmi BETWEEN 30 AND 87.3 then 'obese' 
ELSE 'Unknown'
END AS 'BMI Category'
FROM final.life_expectancy_who
GROUP BY bmi
ORDER BY 1 DESC;


   
   SELECT country, adult_mortality, MIN(population) FROM final.life_expectancy_who;
   
  
  
  
    
    


    
    

    
    
    
    
 
 
 
