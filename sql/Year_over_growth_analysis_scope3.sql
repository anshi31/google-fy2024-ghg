-- select * from google_env_ghg.emissions_scope3
-- Strategic emissions trend analysis
-- Year_over_Year Growth Analysis

WITH yoy_analysis AS (
    SELECT 
        `Scope 3 Emissions` AS Category,
        `2023`, 
        `2024`,
        RANK() OVER (ORDER BY `2024` DESC) AS Emissions_Rank,
        ROUND(((`2024` - `2023`) / `2023`) * 100, 2) AS YoY_Growth_Rate
        
    FROM google_env_ghg.emissions_scope3
    WHERE `Scope 3 Emissions` LIKE 'Scope 3 (Category%'
)
SELECT 
    Category,
    `2024` AS Current_Emissions_2024,
  Emissions_Rank,
  YoY_Growth_Rate,
    CASE 
        WHEN YoY_Growth_Rate < -10 THEN 'Significant Improvement'
        WHEN YoY_Growth_Rate < 0 THEN 'Improving'
        WHEN YoY_Growth_Rate < 10 THEN 'Stable'
        ELSE 'Needs Attention'
    END AS Performance_Status
FROM yoy_analysis
ORDER BY Current_Emissions_2024 DESC;


