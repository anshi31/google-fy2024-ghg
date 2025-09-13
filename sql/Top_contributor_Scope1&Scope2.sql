-- Query: Top Scope 1 and Scope 2 (market-based) by 2024 emissions
-- Purpose: Identify which operational emissions (Scope 1 and 2) are the largest contributors
-- Useful for comparing with Scope 3 and understanding total operational impact.

SELECT 
    `Greenhouse gas emissions inventory` AS Category,
    `2019`, `2020`, `2021`, `2022`, `2023`, `2024`,
    ROW_NUMBER() OVER (ORDER BY `2024` DESC) AS Ranks
FROM google_env_ghg.emissions_yearly
WHERE `Greenhouse gas emissions inventory` IN ('Scope 1', 'Scope 2 (market-based)')
ORDER BY `2024` DESC;
