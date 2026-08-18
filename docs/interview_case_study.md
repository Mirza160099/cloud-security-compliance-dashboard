# Interview Case Study

## Situation
Cloud teams often have security findings spread across providers, control domains and remediation systems, making it difficult to understand overall security posture.

## Task
Create a portfolio solution that normalises AWS/Azure-style findings and turns them into a concise compliance and remediation dashboard.

## Action
- Created a synthetic multi-cloud finding dataset.
- Normalised provider-specific records into a common model.
- Added compliance, severity, remediation, aging and risk fields.
- Wrote SQL for executive posture and control-domain analysis.
- Designed Power BI pages for executive posture, IAM, network/data protection and remediation.
- Mapped findings to CIS, ISO 27001 and NIST categories.
- Explicitly documented the gap between portfolio simulation and real cloud-provider integrations.

## Result
Produced an interview-ready multi-cloud security analytics project demonstrating cloud, IAM, compliance and BI concepts without exposing confidential data.

## Interview talking points
1. Why multi-cloud normalisation matters.
2. Difference between compliance and security risk.
3. How MFA, public exposure and encryption controls affect posture.
4. Why aging matters for remediation.
5. How you would integrate AWS Config/Security Hub and Azure Policy/Defender for Cloud.
6. How to handle exceptions and accepted risk.
7. How RBAC/RLS should protect security dashboards.
8. How to avoid misleading compliance-rate metrics.
9. Why framework mapping is many-to-many in real environments.
10. How this dashboard could support audit readiness.
