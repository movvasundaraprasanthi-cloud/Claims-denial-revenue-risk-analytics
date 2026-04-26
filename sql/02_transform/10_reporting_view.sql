CREATE OR REPLACE VIEW healthcare_revenue.claims_ops.v_claims_reporting AS
SELECT *,
  DATE_TRUNC('MONTH', submission_date) AS submission_month,
  CASE
    WHEN resolution_days BETWEEN 0 AND 7 THEN '0-7 Days'
    WHEN resolution_days BETWEEN 8 AND 14 THEN '8-14 Days'
    WHEN resolution_days BETWEEN 15 AND 30 THEN '15-30 Days'
    ELSE '31+ Days'
  END AS aging_bucket
FROM healthcare_revenue.claims_ops.claims_raw;
