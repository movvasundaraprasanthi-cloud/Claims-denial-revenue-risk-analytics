CREATE OR REPLACE DATABASE healthcare_revenue;
CREATE OR REPLACE SCHEMA healthcare_revenue.claims_ops;

CREATE OR REPLACE TABLE healthcare_revenue.claims_ops.claims_raw (
  claim_id STRING,
  submission_date DATE,
  payer STRING,
  region STRING,
  specialty STRING,
  denial_reason STRING,
  claim_amount NUMBER(10,2),
  status STRING,
  resolution_days INT,
  rework_flag INT,
  paid_after_rework_flag INT
);
