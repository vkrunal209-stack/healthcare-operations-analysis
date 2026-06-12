 -- Rank medical condition by Revenue 
SELECT
    `Medical Condition`,
    ROUND(SUM(`Billing Amount`),2) AS revenue,
    RANK() OVER (
        ORDER BY SUM(`Billing Amount`) DESC
    ) AS revenue_rank
FROM healthcare_dataset
GROUP BY `Medical Condition`;

-- Dense Rank Medical Conditions by Revenue

SELECT
    `Medical Condition`,
    ROUND(SUM(`Billing Amount`),2) AS revenue,
    DENSE_RANK() OVER (
        ORDER BY SUM(`Billing Amount`) DESC
    ) AS revenue_rank
FROM healthcare_dataset
GROUP BY `Medical Condition`;
-- highest biling patient per medical condition using row_number(),
WITH cte AS (
    SELECT
        Name,
        `Medical Condition`,
        `Billing Amount`,
        ROW_NUMBER() OVER (
            PARTITION BY `Medical Condition`
            ORDER BY `Billing Amount` DESC
        ) AS rn
    FROM healthcare_dataset
)
SELECT *
FROM cte
WHERE rn = 1;