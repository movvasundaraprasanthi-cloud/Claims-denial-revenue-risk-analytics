SELECT COUNT(*) AS total_claims, SUM(claim_amount) AS total_claim_value
FROM healthcare_revenue.claims_ops.v_claims_reporting;

SELECT denial_reason, COUNT(*) AS denial_volume, ROUND(SUM(claim_amount),2) AS denied_amount
FROM healthcare_revenue.claims_ops.v_claims_reporting
GROUP BY denial_reason
ORDER BY denied_amount DESC;

SELECT payer,
       COUNT(*) AS claim_count,
       SUM(rework_flag) AS reworked_claims,
       SUM(paid_after_rework_flag) AS recovered_claims
FROM healthcare_revenue.claims_ops.v_claims_reporting
GROUP BY payer
ORDER BY claim_count DESC;
