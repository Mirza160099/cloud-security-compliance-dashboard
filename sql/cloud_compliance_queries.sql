-- Cloud Security & Compliance Dashboard: example SQL

-- 1. Overall compliance posture
SELECT
    COUNT(*) AS total_findings,
    ROUND(100.0 * AVG(CASE WHEN compliance_status='Compliant' THEN 1 ELSE 0 END),2) AS compliance_rate_pct,
    SUM(CASE WHEN compliance_status='Non-Compliant' THEN 1 ELSE 0 END) AS non_compliant_findings
FROM cloud_compliance_findings;

-- 2. Compliance by provider
SELECT provider,
       COUNT(*) AS total_findings,
       ROUND(100.0 * AVG(CASE WHEN compliance_status='Compliant' THEN 1 ELSE 0 END),2) AS compliance_rate_pct
FROM cloud_compliance_findings
GROUP BY provider;

-- 3. High-risk open findings
SELECT provider, control_domain, severity, COUNT(*) AS open_findings
FROM cloud_compliance_findings
WHERE severity IN ('High','Critical')
  AND remediation_status IN ('Open','In Progress')
GROUP BY provider, control_domain, severity
ORDER BY open_findings DESC;

-- 4. Aging risk
SELECT
    CASE
      WHEN age_days <= 30 THEN '0-30'
      WHEN age_days <= 90 THEN '31-90'
      WHEN age_days <= 180 THEN '91-180'
      ELSE '180+'
    END AS age_band,
    COUNT(*) AS findings
FROM cloud_compliance_findings
WHERE compliance_status <> 'Compliant'
GROUP BY age_band;

-- 5. IAM MFA gaps
SELECT provider,
       COUNT(*) AS iam_findings,
       SUM(CASE WHEN mfa_enabled=0 THEN 1 ELSE 0 END) AS mfa_gaps
FROM cloud_compliance_findings
WHERE control_domain='Identity & Access'
GROUP BY provider;

-- 6. Network exposure findings
SELECT provider,
       SUM(CASE WHEN public_exposure=1 THEN 1 ELSE 0 END) AS publicly_exposed_findings
FROM cloud_compliance_findings
WHERE control_domain='Network Security'
GROUP BY provider;
