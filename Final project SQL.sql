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
-- hepatits - b vacnies no gd  
-- From research Lesotho and Zimbabwe have the lowest life expectnacy of only 45.3. Zimbabwes main factor is measles with 529 cases reported base of a population fo a 1000 
-- correlation between life expecancy and adult deaths
-- Negative correlation between life expectanct HB and HIV for Lesotho- Zimbabwe = measles
SELECT  distinct country, life_expectancy, alcohol, hepatitis_B, measles, BMI, diphtheria, HIV_AIDS, thinness_5_to_9_years, thinness_1_to_19_years AS 'life expectancy factors' FROM final.life_expectancy_who
WHERE life_expectancy = 45.3 and  hepatitis_B > 0 and measles > 0
group by country;


-- Has life expectancy improved over the years in Lesotho

  SELECT country,  year, life_expectancy  from final.life_expectancy_who
  Where country = 'Lesotho'; 
  
  
    
   -- What are the current issues that are preventing Afghanistan from improving life expectancy in afganistan
   
   SELECT  year, life_expectancy, diphtheria, hepatitis_B from final.life_expectancy_who
    Where country = 'Zimbabwe';
    
    

    
    

    
    
    
    
 
 
 
