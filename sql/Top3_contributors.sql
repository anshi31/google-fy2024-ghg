-- Query: Combined Scope 1, Scope 2 (market-based), and Scope 3 categories by 2024 emissions
-- Purpose: Show a complete picture of emissions contributions across all categories
-- Useful for creating combined dashboards and calculating % contribution of each category.

WITH combined_emissions AS (
    -- Scope 1 and Scope 2 (market-based)
    SELECT 
        `Greenhouse gas emissions inventory` AS Category,
        `2019`, `2020`, `2021`, `2022`, `2023`, `2024`
    FROM google_env_ghg.emissions_yearly
    WHERE `Greenhouse gas emissions inventory` IN ('Scope 1', 'Scope 2 (market-based)')

    UNION ALL

    -- Scope 3 categories (exclude totals)
    SELECT 
        `Scope 3 Emissions` AS Category,
        `2019`, `2020`, `2021`, `2022`, `2023`, `2024`
    FROM google_env_ghg.emissions_scope3
    WHERE `Scope 3 Emissions` NOT LIKE '%total%'
),

total_2024 AS (
    -- Calculate combined total for % contribution
    SELECT SUM(`2024`) AS total_2024
    FROM combined_emissions
)

SELECT 
    c.Category,
    c.`2019`, c.`2020`, c.`2021`, c.`2022`, c.`2023`, c.`2024`,
    ROUND(c.`2024` / t.total_2024 * 100, 2) AS Percent_of_total_2024,
    ROW_NUMBER() OVER (ORDER BY c.`2024` DESC) AS Ranks
FROM combined_emissions c
CROSS JOIN total_2024 t
ORDER BY c.`2024` DESC;

