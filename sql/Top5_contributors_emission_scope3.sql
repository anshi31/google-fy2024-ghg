-- Top 5 Scope 3 categories first, totals at the bottom
-- Query: Top Scope 3 Categories by 2024 emissions
-- Purpose: Identify the Scope 3 categories contributing the most emissions
-- This helps highlight key areas for emissions reduction focus.
(
    SELECT 
        `Scope 3 Emissions` AS Category,
        `2019`, `2020`, `2021`, `2022`, `2023`, `2024`,
        ROW_NUMBER() OVER (ORDER BY `2024` DESC) AS Ranks
    FROM google_env_ghg.emissions_scope3
    WHERE `Scope 3 Emissions` LIKE 'Scope 3 (Category%'
    ORDER BY `2024` DESC
    LIMIT 5
)
UNION ALL
(
    SELECT 
        `Scope 3 Emissions` AS Category,
        `2019`, `2020`, `2021`, `2022`, `2023`, `2024`,
        '' AS Ranks   -- Empty for totals
    FROM google_env_ghg.emissions_scope3
    WHERE `Scope 3 Emissions` LIKE 'Scope 3 (total)%'
       OR `Scope 3 Emissions` LIKE 'Total emissions%'
);